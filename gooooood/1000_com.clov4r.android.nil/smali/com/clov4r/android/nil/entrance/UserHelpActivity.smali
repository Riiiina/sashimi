.class public Lcom/clov4r/android/nil/entrance/UserHelpActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/widget/Button;

.field b:Landroid/widget/Button;

.field c:Landroid/view/View;

.field d:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->c:Landroid/view/View;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->d:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->setRequestedOrientation(I)V

    const v0, 0x7f03001c

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->setContentView(I)V

    const v0, 0x7f0b00dc

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->a:Landroid/widget/Button;

    const v0, 0x7f0b00db

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0b00da

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->c:Landroid/view/View;

    const v0, 0x7f0b00d9

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->d:Landroid/widget/FrameLayout;

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->a:Landroid/widget/Button;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->c:Landroid/view/View;

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/clov4r/android/nil/entrance/ah;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/ah;-><init>(Lcom/clov4r/android/nil/entrance/UserHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/clov4r/android/nil/entrance/ai;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/ai;-><init>(Lcom/clov4r/android/nil/entrance/UserHelpActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, -0x1

    const-string v2, "show_tips"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/UserHelpActivity;->finish()V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
