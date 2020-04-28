.class public Lcom/clov4r/android/nil/SystemPlayer;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static Z:I

.field private static au:Ljava/lang/String;


# instance fields
.field A:Landroid/view/View;

.field B:Landroid/view/View;

.field C:Ljava/lang/String;

.field D:Landroid/widget/ImageView;

.field E:Landroid/widget/ImageView;

.field F:Landroid/widget/FrameLayout$LayoutParams;

.field G:Landroid/widget/TextView;

.field H:Landroid/widget/LinearLayout;

.field I:Ljava/lang/String;

.field J:Landroid/view/View$OnClickListener;

.field K:I

.field L:I

.field public M:J

.field N:Landroid/view/View$OnClickListener;

.field O:Landroid/view/animation/Animation$AnimationListener;

.field P:Landroid/view/animation/Animation$AnimationListener;

.field Q:Z

.field R:Landroid/os/Handler;

.field S:Landroid/media/AudioManager;

.field T:I

.field U:F

.field V:I

.field W:Landroid/view/WindowManager$LayoutParams;

.field X:F

.field Y:I

.field a:Landroid/widget/Toast;

.field private aA:Landroid/widget/Button;

.field private aB:Ljava/lang/Runnable;

.field private aC:Ljava/lang/String;

.field private aD:Z

.field private aE:I

.field private aF:Z

.field private aG:I

.field private aa:J

.field private ab:Ljava/lang/String;

.field private ac:I

.field private ad:I

.field private ae:Landroid/widget/TextView;

.field private af:Landroid/widget/TextView;

.field private ag:Landroid/widget/TextView;

.field private ah:Landroid/widget/TextView;

.field private ai:Landroid/widget/TextView;

.field private aj:Landroid/widget/TextView;

.field private ak:Landroid/widget/LinearLayout;

.field private al:Landroid/widget/FrameLayout;

.field private am:Landroid/widget/FrameLayout;

.field private an:Landroid/widget/FrameLayout;

.field private ao:Landroid/widget/ImageView;

.field private ap:Landroid/widget/ImageView;

.field private aq:Landroid/widget/TextView;

.field private ar:Landroid/widget/RelativeLayout;

.field private as:Landroid/os/PowerManager$WakeLock;

.field private at:Lcom/clov4r/android/nil/dj;

.field private av:Lcom/clov4r/android/nil/eb;

.field private aw:I

.field private ax:Landroid/widget/FrameLayout;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/widget/Button;

.field public b:Landroid/media/MediaPlayer;

.field public c:Ljava/lang/String;

.field d:Landroid/view/SurfaceView;

.field e:Landroid/widget/SeekBar;

.field f:Z

.field g:I

.field h:Ljava/util/Timer;

.field i:Z

.field j:I

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/ImageButton;

.field m:Landroid/widget/ImageButton;

.field n:Landroid/widget/ImageButton;

.field o:Landroid/widget/ImageButton;

.field p:Landroid/widget/ImageButton;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/LinearLayout;

.field t:Landroid/view/View$OnClickListener;

.field u:Landroid/view/SurfaceHolder;

.field v:Landroid/view/GestureDetector;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/TextView;

.field y:Landroid/view/View;

.field z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/clov4r/android/nil/SystemPlayer;->Z:I

    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/SystemPlayer;->au:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->a:Landroid/widget/Toast;

    iput-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->c:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->f:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->g:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aa:J

    iput-boolean v4, p0, Lcom/clov4r/android/nil/SystemPlayer;->i:Z

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    new-instance v0, Lcom/clov4r/android/nil/ci;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ci;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->t:Landroid/view/View$OnClickListener;

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->C:Ljava/lang/String;

    iput-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->F:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->G:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->H:Landroid/widget/LinearLayout;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    new-instance v0, Lcom/clov4r/android/nil/bz;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/bz;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->J:Landroid/view/View$OnClickListener;

    iput v4, p0, Lcom/clov4r/android/nil/SystemPlayer;->K:I

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->L:I

    new-instance v0, Lcom/clov4r/android/nil/ex;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ex;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aB:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->M:J

    new-instance v0, Lcom/clov4r/android/nil/ey;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ey;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->N:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/clov4r/android/nil/ev;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ev;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->O:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/clov4r/android/nil/ew;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ew;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->P:Landroid/view/animation/Animation$AnimationListener;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aD:Z

    iput-boolean v4, p0, Lcom/clov4r/android/nil/SystemPlayer;->Q:Z

    new-instance v0, Lcom/clov4r/android/nil/ep;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ep;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->R:Landroid/os/Handler;

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->T:I

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->V:I

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->Y:I

    iput-boolean v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aF:Z

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aG:I

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/SystemPlayer;)I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ac:I

    return v0
.end method

.method static synthetic a(Lcom/clov4r/android/nil/SystemPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    return p1
.end method

.method private a(F)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->T:I

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->am:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->am:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    sget v1, Lcom/clov4r/android/nil/Setting;->x:I

    int-to-float v1, v1

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->g()V

    return-void
.end method

.method private a(IIII)V
    .locals 7

    const/16 v1, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ax:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ax:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aE:I

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->c()I

    move-result v0

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->d()I

    move-result v1

    if-gtz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    div-int/lit8 v3, p1, 0x32

    add-int/2addr v2, v3

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    iget v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v0

    if-le v2, v1, :cond_2

    sub-int v2, v1, v0

    div-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    move v2, v1

    :cond_2
    if-gez v2, :cond_4

    mul-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    move v0, v6

    :goto_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    int-to-long v4, v0

    invoke-static {v4, v5}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    if-lez v1, :cond_3

    const-string v1, "+"

    :goto_2
    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ay:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;)V
    .locals 2

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/SystemPlayer;->au:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXT_START_TIME"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "EXT_FILE_PATH"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    check-cast p0, Landroid/app/Activity;

    const/16 v1, 0x252b

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/SystemPlayer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/SystemPlayer;->b(F)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/SystemPlayer;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/clov4r/android/nil/SystemPlayer;->a(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/SystemPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/clov4r/android/nil/SystemPlayer;->b(J)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/clov4r/android/nil/SystemPlayer;)I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ad:I

    return v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/clov4r/android/nil/SystemPlayer;->au:Ljava/lang/String;

    return-object v0
.end method

.method private b(F)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->an:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->an:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->Y:I

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    sget v1, Lcom/clov4r/android/nil/Setting;->y:I

    int-to-float v1, v1

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    :cond_2
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aq:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private b(J)V
    .locals 3

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->av:Lcom/clov4r/android/nil/eb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->av:Lcom/clov4r/android/nil/eb;

    iget-wide v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->M:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/eb;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aC:Ljava/lang/String;

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aC:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/clov4r/android/nil/SystemPlayer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/SystemPlayer;->a(F)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->a:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->a:Landroid/widget/Toast;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v3, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->a:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private b(Z)V
    .locals 10

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "display_nothing"

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->A:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->y:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->z:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->A:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->B:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "display_progress"

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->y:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->z:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->y:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->z:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->A:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->B:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->w:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->y:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->A:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    int-to-long v2, v2

    iget-object v4, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-long v4, v4

    iget-object v6, p0, Lcom/clov4r/android/nil/SystemPlayer;->w:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/clov4r/android/nil/SystemPlayer;->at:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v8}, Lcom/clov4r/android/nil/dj;->c()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/clov4r/android/nil/SystemPlayer;->x:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900a4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/clov4r/android/nil/SystemPlayer;->B:Landroid/view/View;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-long v8, v1

    mul-long v1, v8, v2

    div-long/2addr v1, v4

    long-to-int v1, v1

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->A:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v7, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->z:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->at:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v3}, Lcom/clov4r/android/nil/dj;->c()I

    move-result v3

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->at:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v3}, Lcom/clov4r/android/nil/dj;->d()I

    move-result v3

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->y:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method private c()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ax:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method private d()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->j()V

    return-void
.end method

.method static synthetic e(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ae:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aB:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ai:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aG:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->k()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->Y:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->an:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->an:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->V:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->am:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->am:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aE:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ax:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ax:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->r:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aG:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aG:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aG:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->Y:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->Y:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->V:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->V:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aE:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aE:I

    goto :goto_3
.end method

.method static synthetic g(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ak:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private g()V
    .locals 7

    const/4 v6, 0x3

    const/4 v4, 0x0

    iput v6, p0, Lcom/clov4r/android/nil/SystemPlayer;->V:I

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ao:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ao:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->ao:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    iget v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->T:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->T:I

    int-to-float v2, v2

    iput v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    :cond_0
    iget v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    :cond_1
    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->ap:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    iget v5, p0, Lcom/clov4r/android/nil/SystemPlayer;->T:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    float-to-int v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v6, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method private h()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aF:Z

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->b(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic h(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->e()V

    return-void
.end method

.method private i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aF:Z

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->b(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic i(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->f()V

    return-void
.end method

.method static synthetic j(Lcom/clov4r/android/nil/SystemPlayer;)I
    .locals 1

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->c()I

    move-result v0

    return v0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aG:I

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->ar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->b(Z)V

    return-void
.end method

.method static synthetic k(Lcom/clov4r/android/nil/SystemPlayer;)I
    .locals 1

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->d()I

    move-result v0

    return v0
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->ar:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/clov4r/android/nil/SystemPlayer;->b(Z)V

    return-void
.end method

.method static synthetic l(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->af:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/clov4r/android/nil/SystemPlayer;)Lcom/clov4r/android/nil/dj;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->at:Lcom/clov4r/android/nil/dj;

    return-object v0
.end method

.method static synthetic o(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ay:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/clov4r/android/nil/SystemPlayer;)I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aw:I

    return v0
.end method


# virtual methods
.method a()V
    .locals 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->i:Z

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->i:Z

    iget-boolean v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->i:Z

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->L:I

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->s:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->P:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public a(II)V
    .locals 6

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->D:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->E:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "system:changeBattery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->D:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->D:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->D:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_2
    iget-object v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->D:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v3, p2

    int-to-float v0, v0

    div-float v0, v3, v0

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->F:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->E:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->F:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->G:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    move v1, v3

    move v2, v3

    goto :goto_2

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public a(J)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method

.method a(Z)V
    .locals 7

    iput-boolean p1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aD:Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->c()I

    move-result v1

    int-to-long v1, v1

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->d()I

    move-result v3

    int-to-long v3, v3

    const-string v5, "next"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-wide/16 v5, 0x2710

    cmp-long v5, v1, v5

    if-lez v5, :cond_0

    const-wide/16 v5, 0x1388

    sub-long/2addr v1, v5

    :cond_0
    const-string v5, "EXT_START_TIME"

    invoke-virtual {v0, v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "EXT_TOTAL_TIME"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/clov4r/android/nil/SystemPlayer;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method b(II)V
    .locals 4

    const/4 v1, 0x1

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ad:I

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ac:I

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ad:I

    int-to-float v0, v0

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ac:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    if-gt p1, v1, :cond_2

    if-le p2, v2, :cond_4

    :cond_2
    int-to-float v3, v1

    mul-float/2addr v3, v0

    float-to-int v3, v3

    if-le v2, v3, :cond_3

    int-to-float v2, v1

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->d:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    int-to-float v1, v2

    div-float v0, v1, v0

    float-to-int v0, v0

    move v1, v0

    move v0, v2

    goto :goto_1

    :cond_4
    move v0, p2

    move v1, p1

    goto :goto_1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v5, 0x18

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v0, 0x52

    if-ne v1, v0, :cond_4

    if-nez v2, :cond_4

    iget-boolean v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aF:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/clov4r/android/nil/ec;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->setRequestedOrientation(I)V

    :goto_0
    sget-boolean v0, Lcom/clov4r/android/nil/ec;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->b(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->i()V

    :goto_1
    move v0, v4

    :goto_2
    return v0

    :cond_1
    invoke-virtual {p0, v7}, Lcom/clov4r/android/nil/SystemPlayer;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/clov4r/android/nil/ec;->h:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->b(Ljava/lang/String;)V

    :cond_3
    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->h()V

    goto :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aF:Z

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->j()V

    move v0, v4

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    if-nez v0, :cond_6

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->T:I

    :cond_6
    if-eq v1, v5, :cond_7

    const/16 v0, 0x19

    if-ne v1, v0, :cond_e

    :cond_7
    const-string v0, "volume_key_valume"

    sget-object v3, Lcom/clov4r/android/nil/ec;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->am:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->am:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    :cond_8
    if-ne v1, v5, :cond_b

    if-nez v2, :cond_b

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    add-float/2addr v0, v6

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    :cond_9
    :goto_3
    invoke-direct {p0}, Lcom/clov4r/android/nil/SystemPlayer;->g()V

    :cond_a
    :goto_4
    move v0, v4

    goto :goto_2

    :cond_b
    const/16 v0, 0x19

    if-ne v1, v0, :cond_9

    if-nez v2, :cond_9

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    sub-float/2addr v0, v6

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    goto :goto_3

    :cond_c
    const-string v0, "volume_key_progress"

    sget-object v2, Lcom/clov4r/android/nil/ec;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-ne v1, v5, :cond_d

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->N:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->n:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->N:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "sitem"

    const-string v1, "ConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "sitem"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->g:I

    if-ne v0, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v6, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    if-ne v0, v5, :cond_2

    iput v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->t:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->n:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    if-ne v0, v5, :cond_4

    iput v3, p0, Lcom/clov4r/android/nil/SystemPlayer;->j:I

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->t:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const/4 v5, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/high16 v4, -0x40800000    # -1.0f

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    const/16 v3, 0x400

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    const-string v1, "setting_key_screen_lock"

    const-string v2, "display_progress"

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->C:Ljava/lang/String;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    sget-boolean v1, Lcom/clov4r/android/nil/ec;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v8}, Lcom/clov4r/android/nil/SystemPlayer;->setRequestedOrientation(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXT_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->finish()V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p0, v9}, Lcom/clov4r/android/nil/SystemPlayer;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_1
    sget-boolean v1, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    if-nez v1, :cond_2

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    invoke-virtual {v1, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->T:I

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":vol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_a

    sget v1, Lcom/clov4r/android/nil/ec;->m:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    sget v2, Lcom/clov4r/android/nil/ec;->m:F

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget v1, Lcom/clov4r/android/nil/ec;->m:F

    iput v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    :cond_3
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":lig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    :cond_4
    move-object v0, v2

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_b

    sget v1, Lcom/clov4r/android/nil/ec;->l:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/clov4r/android/nil/ec;->l:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    :cond_6
    const v1, 0x7f030019

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->setContentView(I)V

    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ae:Landroid/widget/TextView;

    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->af:Landroid/widget/TextView;

    const v1, 0x7f0b0039

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ag:Landroid/widget/TextView;

    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ah:Landroid/widget/TextView;

    const v1, 0x7f0b0029

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->p:Landroid/widget/ImageButton;

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->al:Landroid/widget/FrameLayout;

    const v1, 0x7f0b002c

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ak:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ak:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ai:Landroid/widget/TextView;

    const v1, 0x7f0b0037

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "14"

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FFFFFF"

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f0b0034

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->q:Landroid/widget/TextView;

    const v1, 0x7f0b002f

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->r:Landroid/widget/TextView;

    const v1, 0x7f0b002e

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->s:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/clov4r/android/nil/dj;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/dj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->at:Lcom/clov4r/android/nil/dj;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->at:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/dj;->a()V

    sget-boolean v1, Lcom/clov4r/android/nil/Setting;->i:Z

    if-eqz v1, :cond_d

    new-instance v1, Lcom/clov4r/android/nil/eb;

    invoke-direct {v1}, Lcom/clov4r/android/nil/eb;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/clov4r/android/nil/eb;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->av:Lcom/clov4r/android/nil/eb;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    const v1, 0x7f0b003a

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ax:Landroid/widget/FrameLayout;

    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ay:Landroid/widget/TextView;

    const v1, 0x7f0b003c

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->az:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ay:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b003d

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aA:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aA:Landroid/widget/Button;

    new-instance v2, Lcom/clov4r/android/nil/cg;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/cg;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/clov4r/android/nil/dz;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/clov4r/android/nil/dz;-><init>(Lcom/clov4r/android/nil/SystemPlayer;Lcom/clov4r/android/nil/ci;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->v:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->al:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/clov4r/android/nil/cb;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/cb;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b003f

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->am:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0042

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->an:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0040

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ao:Landroid/widget/ImageView;

    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ap:Landroid/widget/ImageView;

    const v1, 0x7f0b0043

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aq:Landroid/widget/TextView;

    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ar:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/clov4r/android/nil/cc;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/cc;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->p:Landroid/widget/ImageButton;

    new-instance v2, Lcom/clov4r/android/nil/cd;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/cd;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXT_START_TIME"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aa:J

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXT_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ab:Ljava/lang/String;

    const v1, 0x7f0b00d5

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->d:Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->d:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->u:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->u:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v5}, Landroid/view/SurfaceHolder;->setType(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->u:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->k:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->l:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcom/clov4r/android/nil/ce;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/ce;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0028

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->e:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->e:Landroid/widget/SeekBar;

    new-instance v2, Lcom/clov4r/android/nil/bu;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/bu;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f0b0026

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->n:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->n:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->N:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->o:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->o:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->h:Ljava/util/Timer;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->h:Ljava/util/Timer;

    new-instance v2, Lcom/clov4r/android/nil/bw;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/bw;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->al:Landroid/widget/FrameLayout;

    invoke-static {v1, p0}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->y:Landroid/view/View;

    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->z:Landroid/view/View;

    const v1, 0x7f0b004b

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->A:Landroid/view/View;

    const v1, 0x7f0b004c

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->B:Landroid/view/View;

    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->w:Landroid/widget/TextView;

    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->x:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v9, :cond_7

    sget-boolean v1, Lcom/clov4r/android/nil/ec;->b:Z

    if-nez v1, :cond_e

    :cond_7
    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_8
    :goto_5
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->D:Landroid/widget/ImageView;

    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->E:Landroid/widget/ImageView;

    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->q:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->G:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b0030

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->H:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->H:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->q:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->D:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x1

    iput v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->g:I

    sget-boolean v1, Lcom/clov4r/android/nil/Setting;->j:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->s:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_9
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v2, 0x2000000a

    const-string v3, "MainPlayer"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->as:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->as:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->S:Landroid/media/AudioManager;

    iget v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    float-to-int v2, v2

    invoke-virtual {v1, v5, v2, v9}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_2

    :cond_b
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_3

    :cond_c
    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_d
    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->aj:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->n:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 3

    const/high16 v2, -0x40800000    # -1.0f

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->as:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->as:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aD:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->as:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->as:Landroid/os/PowerManager$WakeLock;

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->h:Ljava/util/Timer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_2
    const-string v0, "tag"

    const-string v1, "SystemPlayer::onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":vol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CMVolume"

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    sput v0, Lcom/clov4r/android/nil/ec;->m:F

    :cond_3
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":lig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CMLight"

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    sput v0, Lcom/clov4r/android/nil/ec;->l:F

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->at:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/dj;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->N:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->n:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/16 v0, 0x16

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->N:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->m:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->l:Landroid/widget/ImageButton;

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->l:Landroid/widget/ImageButton;

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/clov4r/android/nil/SystemPlayer;->a(Z)V

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":vol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CMVolume"

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->U:F

    sput v0, Lcom/clov4r/android/nil/ec;->m:F

    :cond_5
    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->I:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":lig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CMLight"

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->X:F

    sput v0, Lcom/clov4r/android/nil/ec;->l:F

    :cond_6
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->W:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_7
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->finish()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-wide v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aa:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget-wide v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->aa:J

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->a(J)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->g:I

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    new-instance v0, Lcom/clov4r/android/nil/ed;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ed;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ed;->start()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    sget v0, Lcom/clov4r/android/nil/ec;->t:I

    if-ltz v0, :cond_0

    sget v0, Lcom/clov4r/android/nil/ec;->t:I

    sget-object v1, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    sget v0, Lcom/clov4r/android/nil/ec;->t:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/clov4r/android/nil/ec;->t:I

    invoke-virtual {p0, v2}, Lcom/clov4r/android/nil/SystemPlayer;->a(Z)V

    :goto_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/SystemPlayer;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/SystemPlayer;->a(Z)V

    goto :goto_0
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    const-string v0, "SystemPlayer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged()-->width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput p3, p0, Lcom/clov4r/android/nil/SystemPlayer;->ac:I

    iput p2, p0, Lcom/clov4r/android/nil/SystemPlayer;->ad:I

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->u:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->d:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->ac:I

    iget v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ad:I

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/SystemPlayer;->b(II)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    const-string v0, "tag"

    const-string v1, "surfaceChanged width = %d,height=%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->u:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/clov4r/android/nil/es;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/es;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/clov4r/android/nil/et;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/et;-><init>(Lcom/clov4r/android/nil/SystemPlayer;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/clov4r/android/nil/SystemPlayer;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/SystemPlayer;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "hx"

    const-string v2, "exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
