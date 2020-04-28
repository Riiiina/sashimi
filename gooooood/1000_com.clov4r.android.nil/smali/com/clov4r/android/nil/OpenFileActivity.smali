.class public Lcom/clov4r/android/nil/OpenFileActivity;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v1, 0x0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v3, v0, Lcom/clov4r/android/nil/library/c;->b:J

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v5, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v0, v0, Lcom/clov4r/android/nil/library/c;->a:J

    :goto_1
    invoke-static {p1}, Lcom/clov4r/android/nil/library/b;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v0, v1, p1}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, ""

    invoke-static {p0, v0, v1, p1, v2}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-wide v0, v1

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/OpenFileActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x7

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/OpenFileActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "sitem"

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/OpenFileActivity;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
