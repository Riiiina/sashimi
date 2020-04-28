.class public Landroix/com/android/NightVisionCam/NVCOptions;
.super Landroid/app/Activity;
.source "NVCOptions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static mButtonApply:Landroid/widget/Button;

.field static mButtonCancel:Landroid/widget/Button;

.field static mCheckBoxPictureSound:Landroid/widget/CheckBox;

.field static mCheckBoxShowText:Landroid/widget/CheckBox;

.field static mEditTextTimerIntervalSeconds:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initControls()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f050015

    invoke-virtual {p0, v0}, Landroix/com/android/NightVisionCam/NVCOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mCheckBoxShowText:Landroid/widget/CheckBox;

    .line 47
    const v0, 0x7f050017

    invoke-virtual {p0, v0}, Landroix/com/android/NightVisionCam/NVCOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    sput-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mCheckBoxPictureSound:Landroid/widget/CheckBox;

    .line 48
    const v0, 0x7f05001b

    invoke-virtual {p0, v0}, Landroix/com/android/NightVisionCam/NVCOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    sput-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mEditTextTimerIntervalSeconds:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Landroix/com/android/NightVisionCam/NVCOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mButtonApply:Landroid/widget/Button;

    .line 51
    sget-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mButtonApply:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    const v0, 0x7f050020

    invoke-virtual {p0, v0}, Landroix/com/android/NightVisionCam/NVCOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mButtonCancel:Landroid/widget/Button;

    .line 53
    sget-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mButtonCancel:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    return-void
.end method

.method private updateValues()V
    .locals 2

    .prologue
    .line 59
    sget-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mCheckBoxShowText:Landroid/widget/CheckBox;

    sget-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mShowNightVisionText:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 60
    sget-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mCheckBoxPictureSound:Landroid/widget/CheckBox;

    sget-boolean v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mTakePictureSound:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 61
    sget-object v0, Landroix/com/android/NightVisionCam/NVCOptions;->mEditTextTimerIntervalSeconds:Landroid/widget/EditText;

    sget v1, Landroix/com/android/NightVisionCam/NightVisionCam;->mTimerIntervalSeconds:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f05001f

    if-ne v2, v3, :cond_1

    .line 72
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NVCOptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "mShowNightVisionText"

    sget-object v3, Landroix/com/android/NightVisionCam/NVCOptions;->mCheckBoxShowText:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 75
    const-string v2, "mTakePictureSound"

    sget-object v3, Landroix/com/android/NightVisionCam/NVCOptions;->mCheckBoxPictureSound:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 77
    const/4 v1, 0x1

    .line 80
    .local v1, "oInterval":I
    :try_start_0
    sget-object v2, Landroix/com/android/NightVisionCam/NVCOptions;->mEditTextTimerIntervalSeconds:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 83
    :goto_0
    const-string v2, "mTimerIntervalSeconds"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Landroix/com/android/NightVisionCam/NVCOptions;->setResult(ILandroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NVCOptions;->finish()V

    .line 98
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "oInterval":I
    :cond_0
    :goto_1
    return-void

    .line 89
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f050020

    if-ne v2, v3, :cond_0

    .line 92
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NVCOptions;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 93
    .restart local v0    # "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Landroix/com/android/NightVisionCam/NVCOptions;->setResult(ILandroid/content/Intent;)V

    .line 94
    invoke-virtual {p0}, Landroix/com/android/NightVisionCam/NVCOptions;->finish()V

    goto :goto_1

    .line 81
    .restart local v1    # "oInterval":I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Landroix/com/android/NightVisionCam/NVCOptions;->setContentView(I)V

    .line 32
    const v1, 0x7f050005

    invoke-virtual {p0, v1}, Landroix/com/android/NightVisionCam/NVCOptions;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    .line 34
    .local v0, "adView":Lcom/google/ads/AdView;
    new-instance v1, Lcom/google/ads/AdRequest;

    invoke-direct {v1}, Lcom/google/ads/AdRequest;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->loadAd(Lcom/google/ads/AdRequest;)V

    .line 36
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NVCOptions;->initControls()V

    .line 38
    invoke-direct {p0}, Landroix/com/android/NightVisionCam/NVCOptions;->updateValues()V

    .line 40
    return-void
.end method
