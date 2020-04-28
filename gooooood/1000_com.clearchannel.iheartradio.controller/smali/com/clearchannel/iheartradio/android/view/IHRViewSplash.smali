.class public Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;
.super Landroid/widget/RelativeLayout;
.source "IHRViewSplash.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$FavoriteImageView;,
        Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "IHRViewSplash"


# instance fields
.field public mAnimating:Z

.field public mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

.field public mLogo:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

.field public mStatus:Landroid/widget/TextView;

.field public mVersion:Landroid/widget/TextView;

.field private scale:F


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;)V
    .locals 8
    .param p1, "inDelegate"    # Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 30
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->scale:F

    .line 34
    const/high16 v4, -0x1000000

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->setBackgroundColor(I)V

    .line 36
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    .line 37
    new-instance v4, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mLogo:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

    .line 38
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mLogo:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->setFixedSize(Landroid/graphics/Bitmap;)V

    .line 40
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mLogo:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->addView(Landroid/view/View;)V

    .line 41
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->addView(Landroid/view/View;)V

    .line 42
    new-instance v4, Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->getContext()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->addView(Landroid/view/View;)V

    .line 44
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 45
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 46
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 47
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 50
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 51
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 52
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 53
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 55
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const-string v3, ""

    .line 57
    .local v3, "versionCode":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 58
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Version "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    const v5, -0x333334

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 67
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 68
    return-void

    .line 59
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 60
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "IHRViewSplash.constructor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error NameNotFoundException: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 76
    int-to-float v1, p1

    iget v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->scale:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 78
    .local v0, "res":I
    return v0
.end method


# virtual methods
.method public animateLogo()V
    .locals 2

    .prologue
    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mAnimating:Z

    .line 72
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mLogo:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->animateFPS(I)V

    .line 73
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 85
    sub-int v0, p5, p3

    .line 86
    .local v0, "h":I
    sub-int v3, p4, p2

    .line 88
    .local v3, "w":I
    const/16 v4, 0xa

    .line 89
    .local v4, "x":I
    const/16 v6, 0xa

    invoke-direct {p0, v6}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->dpToPix(I)I

    move-result v6

    sub-int v6, v0, v6

    const/16 v7, 0x15

    invoke-direct {p0, v7}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->dpToPix(I)I

    move-result v7

    sub-int v5, v6, v7

    .line 91
    .local v5, "y":I
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mVersion:Landroid/widget/TextView;

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->dpToPix(I)I

    move-result v7

    sub-int v7, v3, v7

    const/16 v8, 0x15

    invoke-direct {p0, v8}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->dpToPix(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 93
    const/16 v6, 0x15

    invoke-direct {p0, v6}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->dpToPix(I)I

    move-result v6

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->dpToPix(I)I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v5, v6

    .line 95
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mStatus:Landroid/widget/TextView;

    const/16 v7, 0xa

    invoke-direct {p0, v7}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->dpToPix(I)I

    move-result v7

    sub-int v7, v3, v7

    const/16 v8, 0x15

    invoke-direct {p0, v8}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->dpToPix(I)I

    move-result v8

    add-int/2addr v8, v5

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    .line 97
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mLogo:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->getSurfaceWidth()I

    move-result v2

    .line 98
    .local v2, "imageW":I
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mLogo:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->getSurfaceHeight()I

    move-result v1

    .line 100
    .local v1, "imageH":I
    sub-int v6, v3, v2

    div-int/lit8 v4, v6, 0x2

    .line 101
    sub-int v6, v5, v1

    div-int/lit8 v5, v6, 0x2

    .line 103
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;->mLogo:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;

    add-int v7, v4, v2

    add-int v8, v5, v1

    invoke-virtual {v6, v4, v5, v7, v8}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$SplashImageView;->layout(IIII)V

    .line 104
    return-void
.end method
