.class public Lcom/clov4r/android/nil/eb;
.super Ljava/lang/Object;


# instance fields
.field a:J

.field b:J

.field c:J

.field d:J

.field e:I

.field f:I

.field g:Ljava/lang/StringBuffer;

.field h:Lcom/clov4r/android/nil/bg;

.field i:Ljava/util/regex/Pattern;

.field j:Ljava/util/regex/Pattern;

.field private k:I

.field private l:[Lcom/clov4r/android/nil/bg;

.field private m:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/eb;->m:Ljava/util/List;

    iput v0, p0, Lcom/clov4r/android/nil/eb;->e:I

    iput v0, p0, Lcom/clov4r/android/nil/eb;->f:I

    iput-object v1, p0, Lcom/clov4r/android/nil/eb;->g:Ljava/lang/StringBuffer;

    new-instance v0, Lcom/clov4r/android/nil/bg;

    invoke-direct {v0}, Lcom/clov4r/android/nil/bg;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    const-string v0, "[0-9]{2}\\:[0-9]{2}\\:[0-9]{2}\\,[0-9]{3}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/eb;->i:Ljava/util/regex/Pattern;

    const-string v0, "[0-9]{2}\\:[0-9]{2}\\:[0-9]{2}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/eb;->j:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static a(Ljava/io/File;)Ljava/lang/String;
    .locals 11

    const/16 v9, 0xbf

    const/16 v8, 0x80

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "GBK"

    const/4 v1, 0x3

    new-array v1, v1, [B

    :try_start_0
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/BufferedInputStream;->mark(I)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v1, v3, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v3

    if-ne v3, v7, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    if-ne v3, v7, :cond_2

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_2

    const-string v0, "UTF-16LE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    move v0, v6

    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->reset()V

    if-nez v0, :cond_6

    move v0, v5

    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    if-eq v3, v7, :cond_6

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0xf0

    if-lt v3, v4, :cond_4

    move-object v0, v1

    :goto_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :try_start_3
    aget-byte v3, v1, v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_3

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    if-ne v3, v7, :cond_3

    const-string v0, "UTF-16BE"

    move-object v1, v0

    move v0, v6

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    const/16 v4, -0x11

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    const/16 v4, -0x45

    if-ne v3, v4, :cond_8

    const/4 v3, 0x2

    aget-byte v1, v1, v3

    const/16 v3, -0x41

    if-ne v1, v3, :cond_8

    const-string v0, "UTF-8"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v1, v0

    move v0, v6

    goto :goto_1

    :cond_4
    if-gt v8, v3, :cond_5

    if-gt v3, v9, :cond_5

    move-object v0, v1

    goto :goto_2

    :cond_5
    const/16 v4, 0xc0

    if-gt v4, v3, :cond_7

    const/16 v4, 0xdf

    if-gt v3, v4, :cond_7

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    if-gt v8, v3, :cond_6

    if-le v3, v9, :cond_1

    :cond_6
    move-object v0, v1

    goto :goto_2

    :cond_7
    const/16 v4, 0xe0

    if-gt v4, v3, :cond_1

    const/16 v4, 0xef

    if-gt v3, v4, :cond_1

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gt v8, v0, :cond_6

    if-gt v0, v9, :cond_6

    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v0

    if-gt v8, v0, :cond_6

    if-gt v0, v9, :cond_6

    const-string v0, "UTF-8"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_8
    move-object v1, v0

    move v0, v5

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "srt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    move v4, v5

    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_0

    aget-object v5, v3, v4

    invoke-direct {p0, v1, v5}, Lcom/clov4r/android/nil/eb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->l:[Lcom/clov4r/android/nil/bg;

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    array-length v2, v0

    if-lt v1, v2, :cond_2

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->c:J

    cmp-long v1, p1, v1

    if-gtz v1, :cond_3

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/clov4r/android/nil/bg;->d:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->c:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_9

    :cond_4
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    array-length v2, v0

    sub-int/2addr v2, v4

    if-lt v1, v2, :cond_5

    move-object v0, v3

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->c:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_6

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->b:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_6

    move-object v0, v3

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    array-length v2, v0

    sub-int/2addr v2, v4

    if-gt v1, v2, :cond_f

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_7

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->c:J

    cmp-long v1, p1, v1

    if-gtz v1, :cond_7

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/clov4r/android/nil/bg;->d:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    array-length v2, v0

    sub-int/2addr v2, v4

    if-ne v1, v2, :cond_8

    move-object v0, v3

    goto/16 :goto_0

    :cond_8
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->c:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_6

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    add-int/lit8 v1, v1, 0x1

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->b:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_6

    move-object v0, v3

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    array-length v2, v0

    sub-int/2addr v2, v4

    if-eq v1, v2, :cond_a

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->b:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_f

    :cond_a
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    if-gtz v1, :cond_b

    move-object v0, v3

    goto/16 :goto_0

    :cond_b
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->b:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_c

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    sub-int/2addr v1, v4

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->c:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_c

    move-object v0, v3

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    if-ltz v1, :cond_f

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->b:J

    cmp-long v1, p1, v1

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->c:J

    cmp-long v1, p1, v1

    if-gtz v1, :cond_d

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/clov4r/android/nil/bg;->d:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    if-nez v1, :cond_e

    move-object v0, v3

    goto/16 :goto_0

    :cond_e
    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->b:J

    cmp-long v1, p1, v1

    if-gez v1, :cond_c

    iget v1, p0, Lcom/clov4r/android/nil/eb;->k:I

    sub-int/2addr v1, v4

    aget-object v1, v0, v1

    iget-wide v1, v1, Lcom/clov4r/android/nil/bg;->c:J

    cmp-long v1, p1, v1

    if-lez v1, :cond_c

    move-object v0, v3

    goto/16 :goto_0

    :cond_f
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/eb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/eb;->b(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 8

    const/4 v6, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/eb;->m:Ljava/util/List;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/eb;->g:Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "srt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const-string v2, "Auto"

    sget-object v3, Lcom/clov4r/android/nil/ec;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/clov4r/android/nil/eb;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/eb;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    :cond_0
    :goto_3
    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    new-array v0, v1, [Lcom/clov4r/android/nil/bg;

    iput-object v0, p0, Lcom/clov4r/android/nil/eb;->l:[Lcom/clov4r/android/nil/bg;

    move v2, v6

    :goto_4
    if-ge v2, v1, :cond_7

    iget-object v3, p0, Lcom/clov4r/android/nil/eb;->l:[Lcom/clov4r/android/nil/bg;

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->m:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/bg;

    aput-object v0, v3, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_4

    :cond_1
    :try_start_4
    sget-object v2, Lcom/clov4r/android/nil/ec;->c:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_3

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ssa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    :try_start_7
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/clov4r/android/nil/eb;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/eb;->d(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_7

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_3

    :cond_5
    :try_start_8
    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->m:Ljava/util/List;

    new-instance v1, Lcom/clov4r/android/nil/df;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/df;-><init>(Lcom/clov4r/android/nil/eb;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/util/regex/PatternSyntaxException;->printStackTrace()V

    goto/16 :goto_3

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    :cond_6
    move v0, v6

    :goto_8
    return v0

    :cond_7
    const/4 v0, 0x1

    goto :goto_8

    :catch_5
    move-exception v0

    goto/16 :goto_3

    :catch_6
    move-exception v1

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_2
.end method

.method public c(Ljava/lang/String;)V
    .locals 14

    const-wide/16 v12, 0x3c

    const/4 v11, 0x2

    const/4 v10, 0x1

    const-wide/16 v8, 0x3e8

    const/4 v7, 0x0

    new-array v0, v11, [J

    const-string v1, "-->"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/clov4r/android/nil/eb;->i:Ljava/util/regex/Pattern;

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/clov4r/android/nil/eb;->i:Ljava/util/regex/Pattern;

    aget-object v4, v2, v10

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v7

    :goto_0
    if-ge v2, v11, :cond_1

    mul-int/lit8 v3, v2, 0xf

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v2, 0xf

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0xe10

    mul-long/2addr v3, v5

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/clov4r/android/nil/eb;->a:J

    mul-int/lit8 v3, v2, 0xf

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v2, 0xf

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v12

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/clov4r/android/nil/eb;->b:J

    mul-int/lit8 v3, v2, 0xf

    add-int/lit8 v3, v3, 0x6

    mul-int/lit8 v4, v2, 0xf

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/clov4r/android/nil/eb;->c:J

    mul-int/lit8 v3, v2, 0xf

    add-int/lit8 v3, v3, 0x9

    mul-int/lit8 v4, v2, 0xf

    add-int/lit8 v4, v4, 0xc

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/clov4r/android/nil/eb;->d:J

    iget-wide v3, p0, Lcom/clov4r/android/nil/eb;->a:J

    iget-wide v5, p0, Lcom/clov4r/android/nil/eb;->b:J

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/clov4r/android/nil/eb;->c:J

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/clov4r/android/nil/eb;->d:J

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/clov4r/android/nil/eb;->j:Ljava/util/regex/Pattern;

    aget-object v4, v2, v7

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/clov4r/android/nil/eb;->j:Ljava/util/regex/Pattern;

    aget-object v2, v2, v10

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v7

    :goto_1
    if-ge v2, v11, :cond_1

    mul-int/lit8 v3, v2, 0xb

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v2, 0xb

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0xe10

    mul-long/2addr v3, v5

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/clov4r/android/nil/eb;->a:J

    mul-int/lit8 v3, v2, 0xb

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v2, 0xb

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v12

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/clov4r/android/nil/eb;->b:J

    mul-int/lit8 v3, v2, 0xb

    add-int/lit8 v3, v3, 0x6

    mul-int/lit8 v4, v2, 0xb

    add-int/lit8 v4, v4, 0x8

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v3, v8

    iput-wide v3, p0, Lcom/clov4r/android/nil/eb;->c:J

    iget-wide v3, p0, Lcom/clov4r/android/nil/eb;->a:J

    iget-wide v5, p0, Lcom/clov4r/android/nil/eb;->b:J

    add-long/2addr v3, v5

    iget-wide v5, p0, Lcom/clov4r/android/nil/eb;->c:J

    add-long/2addr v3, v5

    aput-wide v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    aget-wide v2, v0, v7

    iput-wide v2, v1, Lcom/clov4r/android/nil/bg;->b:J

    iget-object v1, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    aget-wide v2, v0, v10

    iput-wide v2, v1, Lcom/clov4r/android/nil/bg;->c:J

    :goto_2
    return-void

    :cond_2
    move v0, v7

    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_5

    const-string v0, "\n"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_5

    const-string v0, "\r"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_5

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v10

    iput v1, v0, Lcom/clov4r/android/nil/bg;->a:I

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_6

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    if-eq p1, v0, :cond_6

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->g:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    iget-object v1, p0, Lcom/clov4r/android/nil/eb;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/clov4r/android/nil/bg;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->m:Ljava/util/List;

    iget v1, p0, Lcom/clov4r/android/nil/eb;->e:I

    iget-object v2, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/eb;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/clov4r/android/nil/eb;->e:I

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->g:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/clov4r/android/nil/eb;->g:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v7, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    new-instance v0, Lcom/clov4r/android/nil/bg;

    invoke-direct {v0}, Lcom/clov4r/android/nil/bg;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    goto/16 :goto_2
.end method

.method public d(Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x2

    const-wide/16 v9, 0x3e8

    const/4 v8, 0x0

    new-array v0, v11, [J

    const-string v1, "\\{.*?\\}"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "Dialogue:"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Marked="

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Marked="

    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    move v3, v8

    :goto_1
    if-ge v3, v11, :cond_0

    mul-int/lit8 v4, v3, 0xb

    add-int/lit8 v4, v4, 0xc

    mul-int/lit8 v5, v3, 0xb

    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    mul-long/2addr v4, v9

    iput-wide v4, p0, Lcom/clov4r/android/nil/eb;->a:J

    mul-int/lit8 v4, v3, 0xb

    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v3, 0xb

    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3c

    mul-long/2addr v4, v6

    mul-long/2addr v4, v9

    iput-wide v4, p0, Lcom/clov4r/android/nil/eb;->b:J

    mul-int/lit8 v4, v3, 0xb

    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v3, 0xb

    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    mul-long/2addr v4, v9

    iput-wide v4, p0, Lcom/clov4r/android/nil/eb;->c:J

    mul-int/lit8 v4, v3, 0xb

    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v3, 0xb

    add-int/lit8 v5, v5, 0xc

    add-int/lit8 v5, v5, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0xa

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/clov4r/android/nil/eb;->d:J

    iget-wide v4, p0, Lcom/clov4r/android/nil/eb;->a:J

    iget-wide v6, p0, Lcom/clov4r/android/nil/eb;->b:J

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/clov4r/android/nil/eb;->c:J

    add-long/2addr v4, v6

    iget-wide v6, p0, Lcom/clov4r/android/nil/eb;->d:J

    add-long/2addr v4, v6

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_0
    iget-object v3, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    aget-wide v4, v0, v8

    iput-wide v4, v3, Lcom/clov4r/android/nil/bg;->b:J

    iget-object v3, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    const/4 v4, 0x1

    aget-wide v4, v0, v4

    iput-wide v4, v3, Lcom/clov4r/android/nil/bg;->c:J

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    iget v3, p0, Lcom/clov4r/android/nil/eb;->f:I

    iput v3, v0, Lcom/clov4r/android/nil/bg;->a:I

    move v0, v8

    :goto_2
    const/16 v3, 0x9

    if-ge v0, v3, :cond_1

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const-string v0, "{"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    move-object v1, v2

    :goto_3
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_2
    move-object v0, v1

    :goto_4
    const-string v1, "\\N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "\\N"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "\\h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "\\h"

    const-string v2, "\t"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_5
    iget-object v1, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    iput-object v0, v1, Lcom/clov4r/android/nil/bg;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/eb;->m:Ljava/util/List;

    iget v1, p0, Lcom/clov4r/android/nil/eb;->f:I

    iget-object v2, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/eb;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/clov4r/android/nil/eb;->f:I

    new-instance v0, Lcom/clov4r/android/nil/bg;

    invoke-direct {v0}, Lcom/clov4r/android/nil/bg;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/eb;->h:Lcom/clov4r/android/nil/bg;

    :cond_6
    return-void

    :cond_7
    move-object v0, v2

    goto :goto_4

    :cond_8
    move-object v2, p1

    goto/16 :goto_0
.end method
