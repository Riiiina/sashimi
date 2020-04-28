.class Lcom/clov4r/android/nil/by;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/by;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/by;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/by;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/clov4r/android/nil/by;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v2, v2, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/by;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/by;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/by;->a:Lcom/clov4r/android/nil/MainActivity;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/by;->a:Lcom/clov4r/android/nil/MainActivity;

    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;)V

    return-void
.end method
