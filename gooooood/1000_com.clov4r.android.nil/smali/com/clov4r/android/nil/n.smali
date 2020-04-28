.class Lcom/clov4r/android/nil/n;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method private constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/n;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->e(Lcom/clov4r/android/nil/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->f(Lcom/clov4r/android/nil/MainActivity;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->b(Lcom/clov4r/android/nil/MainActivity;I)V

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    iget-object v1, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/cu;->a(Ljava/util/ArrayList;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/clov4r/android/nil/cw;

    invoke-direct {v3}, Lcom/clov4r/android/nil/cw;-><init>()V

    invoke-virtual {v3, v0}, Lcom/clov4r/android/nil/cw;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lcom/clov4r/android/nil/MainActivity;->b(Lcom/clov4r/android/nil/MainActivity;I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->y:Lcom/clov4r/android/nil/ee;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/ee;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/n;->a:Lcom/clov4r/android/nil/MainActivity;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->b(Lcom/clov4r/android/nil/MainActivity;I)V

    goto :goto_0
.end method
