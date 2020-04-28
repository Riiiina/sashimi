.class public Lcom/clov4r/android/nil/cw;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field g:Ljava/util/HashSet;

.field h:Ljava/util/ArrayList;

.field i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/cw;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/cw;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/cw;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/cw;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/cw;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/cw;->g:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/cw;->h:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clov4r/android/nil/cw;->i:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 17

    if-eqz p1, :cond_0

    const-string v2, ""

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Ljava/io/File;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const-string v3, "/"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "/"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clov4r/android/nil/cw;->b:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clov4r/android/nil/cw;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clov4r/android/nil/cw;->g:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clov4r/android/nil/cw;->h:Ljava/util/ArrayList;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-string v6, ""

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clov4r/android/nil/cw;->f:Ljava/lang/String;

    sget-object v6, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v7, 0x0

    move-wide v9, v2

    move-wide v15, v4

    move v4, v7

    move-wide v7, v15

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clov4r/android/nil/cw;->g:Ljava/util/HashSet;

    move-object v3, v0

    const-string v5, "."

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clov4r/android/nil/cw;->c:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clov4r/android/nil/cw;->c:I

    sget-object v3, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clov4r/android/nil/library/g;

    add-int/lit8 v5, v4, 0x1

    const/4 v11, 0x4

    if-ge v4, v11, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clov4r/android/nil/cw;->h:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-static {v2}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/clov4r/android/nil/fb;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v4, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v4, :cond_5

    sget-object v4, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clov4r/android/nil/library/c;

    if-eqz v2, :cond_5

    iget-wide v11, v2, Lcom/clov4r/android/nil/library/c;->b:J

    add-long/2addr v9, v11

    :cond_5
    if-eqz v3, :cond_7

    iget-wide v11, v3, Lcom/clov4r/android/nil/library/g;->d:J

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    add-long/2addr v7, v11

    iget-wide v2, v3, Lcom/clov4r/android/nil/library/g;->g:J

    add-long/2addr v2, v9

    move-wide v15, v7

    move-wide v7, v2

    move-wide v2, v15

    :goto_1
    invoke-static {v7, v8}, Lcom/clov4r/android/nil/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clov4r/android/nil/cw;->d:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/clov4r/android/nil/MainActivity;->c(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clov4r/android/nil/cw;->e:Ljava/lang/String;

    move v4, v5

    move-wide v9, v7

    move-wide v7, v2

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clov4r/android/nil/cw;->g:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clov4r/android/nil/cw;->g:Ljava/util/HashSet;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clov4r/android/nil/cw;->f:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/clov4r/android/nil/cw;->f:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move-wide v2, v7

    move-wide v7, v9

    goto :goto_1
.end method
