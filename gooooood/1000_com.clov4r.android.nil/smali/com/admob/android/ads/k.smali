.class final Lcom/admob/android/ads/k;
.super Landroid/widget/RelativeLayout;

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/admob/android/ads/ae;
.implements Lcom/admob/android/ads/ah;
.implements Lcom/admob/android/ads/l;


# static fields
.field private static i:F

.field private static j:Lcom/admob/android/ads/h;


# instance fields
.field protected a:Lcom/admob/android/ads/w;

.field final b:Lcom/admob/android/ads/AdView;

.field protected c:Landroid/widget/ProgressBar;

.field private d:Ljava/util/Vector;

.field private e:Landroid/view/View;

.field private f:J

.field private g:Z

.field private h:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/admob/android/ads/k;->i:F

    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/k;->j:Lcom/admob/android/ads/h;

    return-void
.end method

.method public constructor <init>(Lcom/admob/android/ads/w;Landroid/content/Context;Lcom/admob/android/ads/AdView;)V
    .locals 4

    const v3, 0x1080062

    const/4 v2, -0x1

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/admob/android/ads/k;->f:J

    iput-object p3, p0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setId(I)V

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/admob/android/ads/k;->i:F

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    iget-object v1, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/admob/android/ads/k;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->a(Lcom/admob/android/ads/w;)V

    return-void
.end method

.method private static a(IIIJLjava/util/Vector;)Ljava/util/Vector;
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x2

    if-nez p5, :cond_2

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :goto_0
    long-to-float v1, p3

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    if-eq p1, v3, :cond_1

    if-eq p2, v3, :cond_1

    const-string v2, "{%d,%d,%d,%f}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v2, "AdMobSDK"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "recordEvent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    const-string v2, "{%d,%f}"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, p5

    goto :goto_0
.end method

.method private a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7

    const/4 v1, -0x1

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/admob/android/ads/k;->f:J

    sub-long v3, v2, v4

    if-eqz v0, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    if-ne v0, v6, :cond_1

    move v0, v6

    :goto_0
    move v2, v1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/k;->a(IIIJLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p2

    goto :goto_1
.end method

.method private a(Landroid/view/MotionEvent;ZLjava/util/Vector;)Ljava/util/Vector;
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/admob/android/ads/k;->f:J

    sub-long v3, v1, v3

    if-eqz v0, :cond_0

    if-ne v0, v5, :cond_2

    :cond_0
    if-ne v0, v5, :cond_1

    move v0, v5

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/k;->a(IIIJLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_1
.end method

.method private static a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 3

    instance-of v1, p0, Lcom/admob/android/ads/ae;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/admob/android/ads/ae;

    move-object v1, v0

    invoke-interface {v1}, Lcom/admob/android/ads/ae;->i()Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1}, Lcom/admob/android/ads/ae;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/admob/android/ads/k;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static b()F
    .locals 1

    sget v0, Lcom/admob/android/ads/k;->i:F

    return v0
.end method

.method private j()Z
    .locals 4

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/admob/android/ads/k;->f:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    invoke-virtual {v2}, Lcom/admob/android/ads/w;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private k()V
    .locals 9

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setPressed(Z)V

    iget-boolean v0, p0, Lcom/admob/android/ads/k;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/k;->g:Z

    invoke-direct {p0}, Lcom/admob/android/ads/k;->l()Lorg/json/JSONObject;

    move-result-object v7

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_2

    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x1

    invoke-direct {v8, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v5, v0, v1

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float v6, v0, v1

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f99999a    # 1.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f99999a    # 1.2f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f99999a    # 1.2f

    const v2, 0x3a83126f    # 0.001f

    const v3, 0x3f99999a    # 1.2f

    const v4, 0x3a83126f    # 0.001f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    const-wide/16 v1, 0x12b

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    invoke-virtual {v0, p0}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Lcom/admob/android/ads/e;

    invoke-direct {v0, v7, p0}, Lcom/admob/android/ads/e;-><init>(Lorg/json/JSONObject;Lcom/admob/android/ads/k;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/admob/android/ads/k;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    invoke-virtual {v0, v7}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/k;->b:Lcom/admob/android/ads/AdView;

    invoke-virtual {v0}, Lcom/admob/android/ads/AdView;->performClick()Z

    goto :goto_1
.end method

.method private l()Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, v1}, Lcom/admob/android/ads/k;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "interactions"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    const-string v2, "AdMobSDK"

    const-string v3, "Exception while processing interaction history."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method


# virtual methods
.method protected final a()Lcom/admob/android/ads/w;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    if-eq p1, v0, :cond_1

    iput-object p1, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setId(I)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    new-instance v0, Lcom/admob/android/ads/g;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/g;-><init>(Lcom/admob/android/ads/k;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method final a(Lcom/admob/android/ads/w;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setClickable(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p0}, Lcom/admob/android/ads/w;->a(Lcom/admob/android/ads/ah;)V

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/k;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/k;->setClickable(Z)V

    goto :goto_0
.end method

.method final c()V
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    invoke-virtual {v0}, Lcom/admob/android/ads/w;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    new-instance v0, Lcom/admob/android/ads/f;

    invoke-direct {v0, p0}, Lcom/admob/android/ads/f;-><init>(Lcom/admob/android/ads/k;)V

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "AdMobSDK"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchEvent: action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " y="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/k;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    invoke-virtual {v1}, Lcom/admob/android/ads/w;->g()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    invoke-virtual {v2, v1}, Lcom/admob/android/ads/w;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_7

    move v1, v5

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0, p1, v4, v2}, Lcom/admob/android/ads/k;->a(Landroid/view/MotionEvent;ZLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    :cond_1
    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/k;->setPressed(Z)V

    :cond_2
    :goto_1
    return v4

    :cond_3
    if-ne v0, v6, :cond_4

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/k;->setPressed(Z)V

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_6

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/admob/android/ads/k;->k()V

    :cond_5
    invoke-virtual {p0, v5}, Lcom/admob/android/ads/k;->setPressed(Z)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v5}, Lcom/admob/android/ads/k;->setPressed(Z)V

    goto :goto_1

    :cond_7
    move v1, v4

    goto :goto_0
.end method

.method public final dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchTrackballEvent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/k;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0, p1, v3, v0}, Lcom/admob/android/ads/k;->a(Landroid/view/MotionEvent;ZLjava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/admob/android/ads/k;->setPressed(Z)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/admob/android/ads/k;->k()V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setPressed(Z)V

    goto :goto_0
.end method

.method protected final e()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/admob/android/ads/k;->g:Z

    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/k;->c:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/k;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public final f()V
    .locals 3

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/admob/android/ads/k;->j:Lcom/admob/android/ads/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/admob/android/ads/h;

    invoke-direct {v0}, Lcom/admob/android/ads/h;-><init>()V

    sput-object v0, Lcom/admob/android/ads/k;->j:Lcom/admob/android/ads/h;

    :cond_1
    sget-object v0, Lcom/admob/android/ads/k;->j:Lcom/admob/android/ads/h;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->bringChildToFront(Landroid/view/View;)V

    :cond_2
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    return-void
.end method

.method public final g()J
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/admob/android/ads/k;->f:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/admob/android/ads/k;->f:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    cmp-long v2, v0, v4

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x989680

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    :cond_0
    move-wide v0, v4

    :cond_1
    return-wide v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1

    const-string v0, "container"

    return-object v0
.end method

.method public final i()Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    if-eqz v1, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "touches"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getWidth()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->getHeight()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-wide v0, p0, Lcom/admob/android/ads/k;->f:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/admob/android/ads/k;->f:J

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/k;->a:Lcom/admob/android/ads/w;

    invoke-virtual {v0}, Lcom/admob/android/ads/w;->i()V

    :cond_2
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown: keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0, p2, v0}, Lcom/admob/android/ads/k;->a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setPressed(Z)V

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const-string v0, "AdMobSDK"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp: keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/k;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0, p2, v0}, Lcom/admob/android/ads/k;->a(Landroid/view/KeyEvent;Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/admob/android/ads/k;->d:Ljava/util/Vector;

    invoke-direct {p0}, Lcom/admob/android/ads/k;->k()V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/admob/android/ads/k;->setPressed(Z)V

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public final setPressed(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/admob/android/ads/k;->g:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/admob/android/ads/k;->isPressed()Z

    move-result v0

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_2
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setPressed(Z)V

    invoke-virtual {p0}, Lcom/admob/android/ads/k;->invalidate()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/admob/android/ads/k;->e:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
