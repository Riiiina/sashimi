.class public Lcom/blueoxtech/sevenlittlewords/AboutActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0, v0, v0}, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->setVolumeControlStream(I)V

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->setContentView(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android Version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/high16 v0, 0x7f0a0000

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/ag;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/ag;-><init>(Lcom/blueoxtech/sevenlittlewords/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
