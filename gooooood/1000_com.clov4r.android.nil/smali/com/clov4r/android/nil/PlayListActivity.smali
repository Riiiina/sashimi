.class public Lcom/clov4r/android/nil/PlayListActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static a:I

.field public static b:I

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field f:Lcom/clov4r/android/nil/cv;

.field g:Ljava/util/ArrayList;

.field h:Ljava/util/ArrayList;

.field i:Landroid/widget/TextView;

.field j:Landroid/widget/ListView;

.field k:Landroid/widget/ImageView;

.field l:Landroid/widget/ImageView;

.field m:I

.field n:Z

.field o:Landroid/os/Handler;

.field p:Ljava/lang/String;

.field q:I

.field r:Ljava/lang/String;

.field s:Ljava/util/HashMap;

.field t:Ljava/util/HashMap;

.field u:Ljava/io/FileInputStream;

.field v:Ljava/io/ObjectInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/clov4r/android/nil/PlayListActivity;->a:I

    const/4 v0, 0x2

    sput v0, Lcom/clov4r/android/nil/PlayListActivity;->b:I

    const-string v0, "action_name"

    sput-object v0, Lcom/clov4r/android/nil/PlayListActivity;->c:Ljava/lang/String;

    const-string v0, "action_data"

    sput-object v0, Lcom/clov4r/android/nil/PlayListActivity;->d:Ljava/lang/String;

    const-string v0, "action_source"

    sput-object v0, Lcom/clov4r/android/nil/PlayListActivity;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->f:Lcom/clov4r/android/nil/cv;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->i:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->j:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->k:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->l:Landroid/widget/ImageView;

    new-instance v0, Lcom/clov4r/android/nil/at;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/at;-><init>(Lcom/clov4r/android/nil/PlayListActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->o:Landroid/os/Handler;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->s:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->t:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->u:Ljava/io/FileInputStream;

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->v:Ljava/io/ObjectInputStream;

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    if-nez p1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    const/16 v1, 0x1f4

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/client/methods/HttpGet;->setParams(Lorg/apache/http/params/HttpParams;)V

    const-string v2, "CLIENT-NAME"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    invoke-virtual {v2, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/NoHttpResponseException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v1, "hx"

    const-string v2, "exception1"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v4

    :goto_1
    const-string v2, "hx"

    const-string v3, "exception3"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    :cond_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v0

    :try_start_4
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_5
    const-string v1, "hx"

    const-string v2, "exception2"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto :goto_0

    :catch_3
    move-exception v0

    const-string v1, "hx"

    const-string v2, "exception3"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-object v0, v4

    goto :goto_0

    :catch_5
    move-exception v0

    const-string v1, "hx"

    const-string v2, "exception4"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v4

    goto :goto_0

    :catch_6
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/clov4r/android/nil/PlayListActivity;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".m3u"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private a(I)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->h:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->h:Ljava/util/ArrayList;

    :goto_0
    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->s:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->s:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->s:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    move-object v4, v0

    if-eqz v4, :cond_2

    new-instance v1, Lcom/clov4r/android/nil/p;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v4, Lcom/clov4r/android/nil/library/c;->a:J

    invoke-static {v6, v7}, Lcom/clov4r/android/nil/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v4, Lcom/clov4r/android/nil/library/c;->b:J

    invoke-static {v6, v7}, Lcom/clov4r/android/nil/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/clov4r/android/nil/MainActivity;->b(J)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    move v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/clov4r/android/nil/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_2
    iget-object v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    :cond_2
    new-instance v1, Lcom/clov4r/android/nil/p;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/clov4r/android/nil/MainActivity;->b(J)Ljava/lang/String;

    move-result-object v5

    move-object v4, v9

    move v6, p1

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/clov4r/android/nil/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_3
    new-instance v1, Lcom/clov4r/android/nil/p;

    const-string v2, "/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/clov4r/android/nil/MainActivity;->b(J)Ljava/lang/String;

    move-result-object v5

    move-object v4, v9

    move v6, p1

    move v7, v10

    invoke-direct/range {v1 .. v7}, Lcom/clov4r/android/nil/p;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->f:Lcom/clov4r/android/nil/cv;

    iget-object v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/clov4r/android/nil/cv;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v1, v9}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->j:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->f:Lcom/clov4r/android/nil/cv;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/PlayListActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/PlayListActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    invoke-static {p0, p2}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v4, v0, Lcom/clov4r/android/nil/library/c;->b:J

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v6, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1388

    cmp-long v0, v4, v6

    if-lez v0, :cond_4

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v0, v0, Lcom/clov4r/android/nil/library/c;->a:J

    :goto_1
    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->A:Z

    if-eqz v2, :cond_2

    const-string v2, ""

    invoke-static {p0, v0, v1, p1, v2}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/clov4r/android/nil/library/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v0, v1, p1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, ""

    invoke-static {p0, v0, v1, p1, v2}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-wide v0, v1

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    const/16 v3, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p1}, Lcom/clov4r/android/nil/entrance/q;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090106

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-static {p0}, Lcom/clov4r/android/nil/PlayListActivity;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/clov4r/android/nil/MainActivity;->e()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mobo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "playlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/PlayListActivity;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    if-eqz v4, :cond_2

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "mytag"

    const-string v1, "MainActivity OnResult"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2617

    if-eq p1, v0, :cond_0

    const/16 v0, 0x252b

    if-ne p1, v0, :cond_3

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    new-instance v1, Lcom/clov4r/android/nil/library/c;

    invoke-direct {v1}, Lcom/clov4r/android/nil/library/c;-><init>()V

    const-string v2, "EXT_START_TIME"

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/clov4r/android/nil/library/c;->a:J

    const-string v2, "EXT_TOTAL_TIME"

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/clov4r/android/nil/library/c;->b:J

    iget-object v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;)Z

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->j:Ljava/util/HashMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->j:Ljava/util/HashMap;

    :cond_2
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->j:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    iget v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->f(Landroid/content/Context;)Z

    sget v0, Lcom/clov4r/android/nil/PlayListActivity;->b:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->a(I)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/clov4r/android/nil/ar;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/ar;-><init>(Lcom/clov4r/android/nil/PlayListActivity;)V

    const-string v2, "next"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    iget-object v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/clov4r/android/nil/PlayListActivity;->p:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    iget-object v3, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->h:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->j:Ljava/util/HashMap;

    if-nez v0, :cond_4

    iput v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    :goto_1
    iget v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    :cond_2
    iput v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->g:Ljava/util/ArrayList;

    iget v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->j:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->j:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    goto :goto_1

    :cond_5
    iput v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    goto :goto_1

    :pswitch_2
    iget-boolean v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->n:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;Z)V

    sget v0, Lcom/clov4r/android/nil/PlayListActivity;->a:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->a(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/clov4r/android/nil/PlayListActivity;->finish()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b00c3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/clov4r/android/nil/PlayListActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030014

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->setContentView(I)V

    const v0, 0x7f0b00c4

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->i:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->j:Landroid/widget/ListView;

    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->k:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00c3

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->l:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->l:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/clov4r/android/nil/cv;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/cv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->f:Lcom/clov4r/android/nil/cv;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/PlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/clov4r/android/nil/PlayListActivity;->c:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->m:I

    invoke-virtual {p0}, Lcom/clov4r/android/nil/PlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/clov4r/android/nil/PlayListActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/PlayListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Lcom/clov4r/android/nil/PlayListActivity;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->n:Z

    iget v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->m:I

    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/clov4r/android/nil/MainActivity;->e()I

    move-result v1

    if-gez v1, :cond_2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/PlayListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->e(Landroid/content/Context;)V

    iget v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->m:I

    if-ne v1, v3, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0, v4}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;Z)V

    :cond_3
    :goto_1
    iget v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->m:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->a(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->j:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->j:Landroid/widget/ListView;

    new-instance v1, Lcom/clov4r/android/nil/b;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/b;-><init>(Lcom/clov4r/android/nil/PlayListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->m:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;Z)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const-string v1, "\ufffd\ufffd\u02be\ufffd\ufffd\u03e2"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\ufffd\ufffd\ufffd\u06bc\ufffd\ufffd\ufffd\ufffd\u013c\ufffd\ufffd\ufffd\ufffd\u0763\ufffd\ufffd\ufffd\ufffd\u053a\ufffd..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    const-string v1, ".m3u"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".m3u8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/clov4r/android/nil/PlayListActivity;->o:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v1, Lcom/clov4r/android/nil/fa;

    invoke-direct {v1, p0, v0}, Lcom/clov4r/android/nil/fa;-><init>(Lcom/clov4r/android/nil/PlayListActivity;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/clov4r/android/nil/fa;->start()V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;Z)V

    sget v0, Lcom/clov4r/android/nil/PlayListActivity;->b:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/PlayListActivity;->a(I)V

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/clov4r/android/nil/PlayListActivity;->p:Ljava/lang/String;

    iput p3, p0, Lcom/clov4r/android/nil/PlayListActivity;->q:I

    iget-object v1, p0, Lcom/clov4r/android/nil/PlayListActivity;->r:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/clov4r/android/nil/PlayListActivity;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/PlayListActivity;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
