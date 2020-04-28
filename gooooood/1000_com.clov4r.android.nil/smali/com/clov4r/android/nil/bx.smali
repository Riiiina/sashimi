.class Lcom/clov4r/android/nil/bx;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/ThumbCreateActivity;


# direct methods
.method public constructor <init>(Lcom/clov4r/android/nil/ThumbCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bx;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/bx;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-static {}, Lcom/clov4r/android/nil/library/MediaLibrary;->a()V

    iget-object v0, p0, Lcom/clov4r/android/nil/bx;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->d(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/bx;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->h(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    return-void
.end method
