.class public Lcom/clov4r/android/nil/entrance/h;
.super Ljava/lang/Thread;


# instance fields
.field a:Landroid/content/Context;

.field b:Z

.field c:Ljava/lang/String;

.field d:I

.field e:Landroid/os/Handler;

.field public f:Ljava/util/ArrayList;

.field g:Lcom/clov4r/android/nil/entrance/ag;

.field h:Ljava/io/File;

.field i:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;ILandroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clov4r/android/nil/entrance/h;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/clov4r/android/nil/entrance/h;->d:I

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->h:Ljava/io/File;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->i:[B

    iput-object p2, p0, Lcom/clov4r/android/nil/entrance/h;->h:Ljava/io/File;

    iput p3, p0, Lcom/clov4r/android/nil/entrance/h;->d:I

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/h;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/h;->start()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;ILandroid/os/Handler;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clov4r/android/nil/entrance/h;->b:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->c:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/clov4r/android/nil/entrance/h;->d:I

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->f:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->h:Ljava/io/File;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->i:[B

    new-instance v0, Lcom/clov4r/android/nil/entrance/ag;

    invoke-direct {v0}, Lcom/clov4r/android/nil/entrance/ag;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/h;->a:Landroid/content/Context;

    iput-boolean p2, p0, Lcom/clov4r/android/nil/entrance/h;->b:Z

    iput-object p3, p0, Lcom/clov4r/android/nil/entrance/h;->c:Ljava/lang/String;

    iput p4, p0, Lcom/clov4r/android/nil/entrance/h;->d:I

    iput-object p5, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/h;->start()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .locals 11

    const-wide/16 v9, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/clov4r/android/nil/entrance/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/clov4r/android/nil/entrance/g;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/clov4r/android/nil/entrance/h;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_3
    const/16 v0, 0x2800

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->i:[B

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lcom/clov4r/android/nil/entrance/h;->b:Z

    if-nez v1, :cond_4

    const-string v1, "User-Agent"

    const-string v7, "android"

    invoke-virtual {v0, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RANGE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v1, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, v1, Lcom/clov4r/android/nil/entrance/ag;->a:J

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    iget-boolean v7, p0, Lcom/clov4r/android/nil/entrance/h;->b:Z

    if-eqz v7, :cond_7

    invoke-virtual {p0, v1, v2}, Lcom/clov4r/android/nil/entrance/h;->a(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iget-wide v0, v0, Lcom/clov4r/android/nil/entrance/ag;->a:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iget-wide v0, v0, Lcom/clov4r/android/nil/entrance/ag;->b:J

    cmp-long v0, v0, v9

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iget-wide v0, v0, Lcom/clov4r/android/nil/entrance/ag;->a:J

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iget-wide v5, v2, Lcom/clov4r/android/nil/entrance/ag;->b:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_6

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_6
    :goto_3
    move-object v0, v4

    goto/16 :goto_0

    :cond_7
    :try_start_2
    iget-boolean v7, p0, Lcom/clov4r/android/nil/entrance/h;->b:Z

    if-nez v7, :cond_5

    invoke-virtual {p0, v1, v2, v5, v6}, Lcom/clov4r/android/nil/entrance/h;->a(Ljava/io/InputStream;Ljava/lang/String;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method public a(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/clov4r/android/nil/entrance/g;->a:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->i:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->i:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iget-wide v3, v2, Lcom/clov4r/android/nil/entrance/ag;->b:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/clov4r/android/nil/entrance/ag;->b:J

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public a(Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 7

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iget-wide v2, v1, Lcom/clov4r/android/nil/entrance/ag;->b:J

    add-long/2addr v2, p3

    iput-wide v2, v1, Lcom/clov4r/android/nil/entrance/ag;->b:J

    :cond_2
    :goto_1
    sget-boolean v1, Lcom/clov4r/android/nil/entrance/g;->a:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->i:[B

    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->i:[B

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iget-wide v3, v2, Lcom/clov4r/android/nil/entrance/ag;->b:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/clov4r/android/nil/entrance/ag;->b:J

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->g:Lcom/clov4r/android/nil/entrance/ag;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 13

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v1, 0xbb8

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_9

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Document;->normalize()V

    const-string v2, "item"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_9

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    new-instance v3, Lcom/clov4r/android/nil/entrance/a;

    invoke-direct {v3}, Lcom/clov4r/android/nil/entrance/a;-><init>()V

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    move v12, v6

    move v6, v5

    move v5, v12

    :goto_1
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v5, v7, :cond_7

    invoke-interface {v4, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_1

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    const-string v9, ""

    :cond_0
    const-string v10, "\n"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "\t"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v7

    if-eqz v7, :cond_1

    if-eqz v8, :cond_1

    const-string v7, "pubdate"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iput-object v9, v3, Lcom/clov4r/android/nil/entrance/a;->e:Ljava/lang/String;

    :cond_1
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const-string v7, "filename"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iput-object v9, v3, Lcom/clov4r/android/nil/entrance/a;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-object v0

    :cond_3
    :try_start_1
    const-string v7, "donwloadlink"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    iput-object v9, v3, Lcom/clov4r/android/nil/entrance/a;->a:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const-string v7, "linksource"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v9, v3, Lcom/clov4r/android/nil/entrance/a;->d:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const-string v7, "libtype"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-object v7, Lcom/clov4r/android/nil/MainActivity;->ag:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    iput-object v9, v3, Lcom/clov4r/android/nil/entrance/a;->f:Ljava/lang/String;

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget v0, p0, Lcom/clov4r/android/nil/entrance/h;->d:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/h;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->f:Ljava/util/ArrayList;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/entrance/h;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/h;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/clov4r/android/nil/entrance/g;->a:Z

    if-eqz v0, :cond_2

    sput-boolean v3, Lcom/clov4r/android/nil/entrance/g;->a:Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x5

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-static {v1}, Lcom/clov4r/android/nil/entrance/g;->a(Ljava/io/File;)Z

    move-result v1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sput-boolean v3, Lcom/clov4r/android/nil/entrance/g;->a:Z

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x4

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/clov4r/android/nil/entrance/h;->d:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->h:Ljava/io/File;

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/g;->a(Ljava/io/File;)Z

    move-result v1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput v2, v0, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/h;->e:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method
