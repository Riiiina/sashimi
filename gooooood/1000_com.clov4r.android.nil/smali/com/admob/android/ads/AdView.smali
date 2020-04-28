.class public Lcom/admob/android/ads/AdView;
.super Landroid/widget/RelativeLayout;


# static fields
.field static final a:Landroid/os/Handler;

.field private static b:Ljava/lang/Boolean;


# instance fields
.field private c:Lcom/admob/android/ads/k;

.field private d:I

.field private e:Z

.field private f:Lcom/admob/android/ads/d;

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/admob/android/ads/j;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:J

.field private q:Lcom/admob/android/ads/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/admob/android/ads/AdView;->a:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/admob/android/ads/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/4 v1, 0x1

    const/high16 v3, -0x1000000

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v1, p0, Lcom/admob/android/ads/AdView;->n:Z

    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setDescendantFocusability(I)V

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->setClickable(Z)V

    invoke-virtual {p0, v6}, Lcom/admob/android/ads/AdView;->setLongClickable(Z)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setGravity(I)V

    if-eqz p2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://schemas.android.com/apk/res/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testing"

    invoke-interface {p2, v0, v1, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    const-string v2, "AdView\'s \"testing\" XML attribute has been deprecated and will be ignored.  Please delete it from your XML layout and use AdManager.setTestDevices instead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "backgroundColor"

    invoke-interface {p2, v0, v1, v3}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string v2, "textColor"

    invoke-interface {p2, v0, v2, v5}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->b(I)V

    :cond_1
    const-string v2, "primaryTextColor"

    invoke-interface {p2, v0, v2, v5}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "secondaryTextColor"

    invoke-interface {p2, v0, v3, v5}, Landroid/util/AttributeSet;->getAttributeUnsignedIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    const-string v4, "keywords"

    invoke-interface {p2, v0, v4}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    const-string v4, "refreshInterval"

    invoke-interface {p2, v0, v4, v6}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/admob/android/ads/AdView;->a(I)V

    const-string v4, "isGoneWithoutAd"

    invoke-interface {p2, v0, v4, v6}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->a(Z)V

    :cond_2
    move v0, v3

    move v8, v2

    move v2, v1

    move v1, v8

    :goto_0
    invoke-virtual {p0, v2}, Lcom/admob/android/ads/AdView;->setBackgroundColor(I)V

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->c(I)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->d(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->q:Lcom/admob/android/ads/ai;

    sget-object v0, Lcom/admob/android/ads/AdView;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/admob/android/ads/AdView;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/admob/android/ads/AdView;->b:Ljava/lang/Boolean;

    :cond_3
    sget-object v0, Lcom/admob/android/ads/AdView;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "Ads by AdMob"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/admob/android/ads/AdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void

    :cond_5
    move v0, v5

    move v1, v5

    move v2, v3

    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/k;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    return-object v0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 3

    iput-object p1, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->m:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/w;)V
    .locals 3

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->l:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->l:Lcom/admob/android/ads/j;

    invoke-interface {v0, p0}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/AdView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception raised in your AdListener.onReceiveAd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->l:Lcom/admob/android/ads/j;

    invoke-interface {v0, p0}, Lcom/admob/android/ads/j;->c(Lcom/admob/android/ads/AdView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "AdMobSDK"

    const-string v2, "Unhandled exception raised in your AdListener.onReceiveRefreshedAd."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "org.json.JSONException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-static {p0}, Lcom/admob/android/ads/aj;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/admob/android/ads/AdView;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->o:Z

    return v0
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/j;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->l:Lcom/admob/android/ads/j;

    return-object v0
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V
    .locals 7

    const/4 v6, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/admob/android/ads/k;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v3, v0, v1

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v4, v0, v1

    const v0, -0x41333333    # -0.4f

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    new-instance v0, Lcom/admob/android/ads/o;

    const/4 v1, 0x0

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/o;-><init>(FFFFFZ)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Lcom/admob/android/ads/o;->setDuration(J)V

    invoke-virtual {v0, v6}, Lcom/admob/android/ads/o;->setFillAfter(Z)V

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/o;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v1, Lcom/admob/android/ads/i;

    invoke-direct {v1, p0, p1}, Lcom/admob/android/ads/i;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)V

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/o;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic b(Lcom/admob/android/ads/AdView;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->b(Z)V

    return-void
.end method

.method private b(Z)V
    .locals 5

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    iget v0, p0, Lcom/admob/android/ads/AdView;->d:I

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/admob/android/ads/AdView;->d:I

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->e()V

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/admob/android/ads/d;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/d;-><init>(Lcom/admob/android/ads/AdView;)V

    iput-object v1, p0, Lcom/admob/android/ads/AdView;->f:Lcom/admob/android/ads/d;

    sget-object v1, Lcom/admob/android/ads/AdView;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/admob/android/ads/AdView;->f:Lcom/admob/android/ads/d;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v1, "AdMobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad refresh scheduled for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from now."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/admob/android/ads/AdView;->d:I

    if-nez v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic c(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;)Lcom/admob/android/ads/k;
    .locals 0

    iput-object p1, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    return-object p1
.end method

.method static synthetic c(Lcom/admob/android/ads/AdView;)V
    .locals 2

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->l:Lcom/admob/android/ads/j;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/admob/android/ads/AdView;->a:Landroid/os/Handler;

    new-instance v1, Lcom/admob/android/ads/a;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/a;-><init>(Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/admob/android/ads/AdView;)Lcom/admob/android/ads/ai;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->q:Lcom/admob/android/ads/ai;

    if-nez v0, :cond_0

    new-instance v0, Lcom/admob/android/ads/ai;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/ai;-><init>(Lcom/admob/android/ads/AdView;)V

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->q:Lcom/admob/android/ads/ai;

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/AdView;->q:Lcom/admob/android/ads/ai;

    return-object v0
.end method

.method private d()V
    .locals 2

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/ad;->a(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->n:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdMobSDK"

    const-string v1, "Cannot requestFreshAd() when the AdView is not visible.  Call AdView.setVisibility(View.VISIBLE) first."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->o:Z

    if-eqz v0, :cond_2

    const-string v0, "AdMobSDK"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v1, "Ignoring requestFreshAd() because we are requesting an ad right now already."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->o:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/AdView;->p:J

    new-instance v0, Lcom/admob/android/ads/t;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/t;-><init>(Lcom/admob/android/ads/AdView;)V

    invoke-virtual {v0}, Lcom/admob/android/ads/t;->start()V

    goto :goto_0
.end method

.method static synthetic e(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->f:Lcom/admob/android/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->f:Lcom/admob/android/ads/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/admob/android/ads/d;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/AdView;->f:Lcom/admob/android/ads/d;

    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v1, "Cancelled an ad refresh scheduled for the future."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/admob/android/ads/AdView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->k:Ljava/lang/String;

    return-object v0
.end method

.method private f()Z
    .locals 4

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->a()Lcom/admob/android/ads/w;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/admob/android/ads/w;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x78

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    const-string v1, "Cannot refresh CPM ads.  Ignoring request to refresh the ad."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/admob/android/ads/AdView;)J
    .locals 2

    iget-wide v0, p0, Lcom/admob/android/ads/AdView;->p:J

    return-wide v0
.end method

.method static synthetic h(Lcom/admob/android/ads/AdView;)I
    .locals 1

    iget v0, p0, Lcom/admob/android/ads/AdView;->d:I

    return v0
.end method

.method static synthetic i(Lcom/admob/android/ads/AdView;)V
    .locals 0

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->d()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/admob/android/ads/AdView;->h:I

    return v0
.end method

.method public a(I)V
    .locals 5

    const/16 v4, 0x258

    const/16 v3, 0xd

    mul-int/lit16 v0, p1, 0x3e8

    iget v1, p0, Lcom/admob/android/ads/AdView;->d:I

    if-eq v1, v0, :cond_2

    if-lez p1, :cond_0

    if-ge p1, v3, :cond_3

    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView.setRequestInterval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") seconds must be >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x32c8

    :cond_0
    :goto_0
    iput v0, p0, Lcom/admob/android/ads/AdView;->d:I

    if-gtz p1, :cond_1

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->e()V

    :cond_1
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requesting fresh ads every "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    if-le p1, v4, :cond_0

    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdView.setRequestInterval("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") seconds must be <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x927c0

    goto :goto_0
.end method

.method final a(Lcom/admob/android/ads/w;Lcom/admob/android/ads/k;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-virtual {p1}, Lcom/admob/android/ads/w;->a()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-ltz v3, :cond_1

    iput-boolean v6, p0, Lcom/admob/android/ads/AdView;->e:Z

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->a(I)V

    invoke-direct {p0, v6}, Lcom/admob/android/ads/AdView;->b(Z)V

    :goto_0
    iget-boolean v1, p0, Lcom/admob/android/ads/AdView;->n:Z

    if-eqz v1, :cond_0

    iput-boolean v5, p0, Lcom/admob/android/ads/AdView;->n:Z

    :cond_0
    invoke-virtual {p2, p1}, Lcom/admob/android/ads/k;->a(Lcom/admob/android/ads/w;)V

    invoke-virtual {p2, v0}, Lcom/admob/android/ads/k;->setVisibility(I)V

    const/16 v2, 0x11

    invoke-virtual {p2, v2}, Lcom/admob/android/ads/k;->setGravity(I)V

    invoke-virtual {p1, p2}, Lcom/admob/android/ads/w;->a(Lcom/admob/android/ads/k;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p1}, Lcom/admob/android/ads/w;->e()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/admob/android/ads/w;->a(I)I

    move-result v3

    invoke-virtual {p1}, Lcom/admob/android/ads/w;->f()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/admob/android/ads/w;->a(I)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v2}, Lcom/admob/android/ads/k;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v2, Lcom/admob/android/ads/AdView;->a:Landroid/os/Handler;

    new-instance v3, Lcom/admob/android/ads/c;

    invoke-direct {v3, p0, p2, v0, v1}, Lcom/admob/android/ads/c;-><init>(Lcom/admob/android/ads/AdView;Lcom/admob/android/ads/k;IZ)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iput-boolean v5, p0, Lcom/admob/android/ads/AdView;->e:Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/admob/android/ads/AdView;->j:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "AdMobSDK"

    const-string v1, "Deprecated method setGoneWithoutAd was called.  See JavaDoc for instructions to remove."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/admob/android/ads/AdView;->i:I

    return v0
.end method

.method public b(I)V
    .locals 2

    const-string v0, "AdMobSDK"

    const-string v1, "Calling the deprecated method setTextColor!  Please use setPrimaryTextColor and setSecondaryTextColor instead."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/admob/android/ads/AdView;->c(I)V

    invoke-virtual {p0, p1}, Lcom/admob/android/ads/AdView;->d(I)V

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/admob/android/ads/AdView;->g:I

    return v0
.end method

.method public c(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->h:I

    return-void
.end method

.method public d(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->i:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->m:Z

    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->b(Z)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/admob/android/ads/AdView;->m:Z

    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->b(Z)V

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    if-eq v1, v7, :cond_0

    if-ne v1, v4, :cond_4

    :cond_0
    move v1, v0

    :goto_0
    if-ne v3, v4, :cond_5

    move v3, v2

    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/admob/android/ads/AdView;->setMeasuredDimension(II)V

    const-string v4, "AdMobSDK"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "AdMobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AdView.onMeasure:  widthSize "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " heightSize "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView.onMeasure:  measuredWidth "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " measuredHeight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getMeasuredHeight()I

    move-result v1

    const-string v2, "AdMobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AdView size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/admob/android/ads/AdView;->n:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/admob/android/ads/AdView;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/admob/android/ads/AdView;->d()V

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/admob/android/ads/aj;->a(Landroid/content/Context;)I

    move-result v1

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/admob/android/ads/AdView;->c:Lcom/admob/android/ads/k;

    invoke-virtual {v5}, Lcom/admob/android/ads/k;->a()Lcom/admob/android/ads/w;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/admob/android/ads/w;->f()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/admob/android/ads/w;->a(I)I

    move-result v5

    if-ne v3, v7, :cond_6

    if-ge v2, v5, :cond_6

    const-string v3, "AdMobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot display ad because its container is too small.  The ad is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " pixels tall but is only given "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at most to draw into.  Please make your view containing AdView taller."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    goto/16 :goto_1

    :cond_6
    move v3, v5

    goto/16 :goto_1

    :cond_7
    move v3, v4

    goto/16 :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/admob/android/ads/AdView;->b(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->b(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    iput v0, p0, Lcom/admob/android/ads/AdView;->g:I

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->getChildCount()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/AdView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/admob/android/ads/AdView;->invalidate()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    if-nez p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/admob/android/ads/AdView;->b(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    move v0, v3

    goto :goto_1
.end method
