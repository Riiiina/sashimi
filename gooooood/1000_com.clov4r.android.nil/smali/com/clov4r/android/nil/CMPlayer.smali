.class public Lcom/clov4r/android/nil/CMPlayer;
.super Landroid/app/Activity;


# static fields
.field private static aT:I

.field public static ae:Z

.field private static ar:Ljava/lang/String;

.field public static c:I

.field public static g:I


# instance fields
.field A:Ljava/lang/String;

.field B:Z

.field C:Landroid/view/GestureDetector;

.field D:Landroid/view/View;

.field E:Landroid/view/View;

.field F:Landroid/view/View;

.field G:Landroid/view/View;

.field H:Landroid/widget/TextView;

.field I:Landroid/widget/TextView;

.field J:Ljava/lang/String;

.field K:Landroid/widget/ImageView;

.field L:Landroid/widget/ImageView;

.field M:Landroid/widget/FrameLayout$LayoutParams;

.field N:Landroid/widget/TextView;

.field O:Landroid/widget/LinearLayout;

.field P:Landroid/widget/LinearLayout;

.field Q:Landroid/widget/LinearLayout;

.field R:Landroid/widget/FrameLayout;

.field S:Landroid/widget/ToggleButton;

.field T:Landroid/widget/ToggleButton;

.field U:Landroid/widget/TextView;

.field V:Landroid/widget/TextView;

.field W:Landroid/widget/TextView;

.field X:Lcom/clov4r/android/nil/library/g;

.field Y:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field Z:Ljava/lang/Runnable;

.field a:Landroid/widget/Toast;

.field private aA:Landroid/widget/LinearLayout;

.field private aB:Landroid/widget/LinearLayout;

.field private aC:Landroid/widget/FrameLayout;

.field private aD:Landroid/widget/FrameLayout;

.field private aE:Landroid/os/PowerManager$WakeLock;

.field private aF:I

.field private aG:Landroid/widget/FrameLayout;

.field private aH:Landroid/widget/TextView;

.field private aI:Landroid/widget/Button;

.field private aJ:Landroid/widget/Button;

.field private aK:Landroid/widget/FrameLayout;

.field private aL:Landroid/widget/FrameLayout;

.field private aM:Landroid/widget/ImageView;

.field private aN:Landroid/widget/ImageView;

.field private aO:Landroid/widget/TextView;

.field private aP:Landroid/widget/RelativeLayout;

.field private aQ:I

.field private aR:I

.field private aS:Ljava/lang/Thread;

.field private aU:Ljava/lang/Runnable;

.field private aV:Ljava/lang/String;

.field private aW:Ljava/lang/Runnable;

.field private aX:Z

.field private aY:I

.field private aZ:Z

.field aa:Landroid/view/View$OnClickListener;

.field public ab:J

.field ac:I

.field ad:J

.field public af:Landroid/media/AudioTrack;

.field ag:Landroid/view/View$OnClickListener;

.field ah:I

.field ai:Landroid/media/AudioManager;

.field aj:I

.field ak:F

.field al:I

.field am:Landroid/view/WindowManager$LayoutParams;

.field an:F

.field ao:I

.field private ap:Lcom/clov4r/android/nil/eb;

.field private aq:Lcom/clov4r/android/nil/dj;

.field private as:J

.field private at:Landroid/widget/TextView;

.field private au:Landroid/widget/TextView;

.field private av:Landroid/widget/TextView;

.field private aw:Landroid/widget/TextView;

.field private ax:Landroid/widget/TextView;

.field private ay:Landroid/widget/TextView;

.field private az:Landroid/widget/LinearLayout;

.field b:Z

.field private ba:I

.field d:Lcom/clov4r/android/nil/NativeSurfaceView;

.field e:I

.field f:I

.field h:Landroid/widget/ImageButton;

.field i:Landroid/widget/ImageButton;

.field j:Landroid/widget/ImageButton;

.field k:Landroid/widget/ImageButton;

.field l:Landroid/widget/ImageButton;

.field m:Landroid/widget/ImageButton;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/SeekBar;

.field p:Z

.field q:Ljava/util/Timer;

.field r:Z

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/LinearLayout;

.field v:Landroid/widget/LinearLayout;

.field w:Landroid/view/animation/Animation$AnimationListener;

.field x:Landroid/view/animation/Animation$AnimationListener;

.field y:Landroid/view/View$OnClickListener;

.field z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/CMPlayer;->ar:Ljava/lang/String;

    const/16 v0, 0x2617

    sput v0, Lcom/clov4r/android/nil/CMPlayer;->c:I

    const/16 v0, 0x54

    sput v0, Lcom/clov4r/android/nil/CMPlayer;->g:I

    sput v1, Lcom/clov4r/android/nil/CMPlayer;->aT:I

    sput-boolean v1, Lcom/clov4r/android/nil/CMPlayer;->ae:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->a:Landroid/widget/Toast;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/CMPlayer;->b:Z

    iput-wide v4, p0, Lcom/clov4r/android/nil/CMPlayer;->as:J

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->e:I

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    iput-boolean v2, p0, Lcom/clov4r/android/nil/CMPlayer;->p:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->r:Z

    new-instance v0, Lcom/clov4r/android/nil/ek;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ek;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->w:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/clov4r/android/nil/em;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/em;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->x:Landroid/view/animation/Animation$AnimationListener;

    new-instance v0, Lcom/clov4r/android/nil/el;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/el;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->y:Landroid/view/View$OnClickListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->A:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/CMPlayer;->B:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->J:Ljava/lang/String;

    iput-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->M:Landroid/widget/FrameLayout$LayoutParams;

    iput-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->N:Landroid/widget/TextView;

    iput-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->O:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->Q:Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->R:Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->X:Lcom/clov4r/android/nil/library/g;

    new-instance v0, Lcom/clov4r/android/nil/du;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/du;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->Y:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/clov4r/android/nil/dt;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/dt;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->Z:Ljava/lang/Runnable;

    new-instance v0, Lcom/clov4r/android/nil/ds;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ds;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aa:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/clov4r/android/nil/dr;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/dr;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aU:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ab:J

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ac:I

    iput-wide v4, p0, Lcom/clov4r/android/nil/CMPlayer;->ad:J

    new-instance v0, Lcom/clov4r/android/nil/dp;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/dp;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aW:Ljava/lang/Runnable;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aX:Z

    iput-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    new-instance v0, Lcom/clov4r/android/nil/de;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/de;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    const v0, 0x13442a08

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ah:I

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aj:I

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->al:I

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ao:I

    iput-boolean v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aZ:Z

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ba:I

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/CMPlayer;)I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aQ:I

    return v0
.end method

.method static synthetic a(Lcom/clov4r/android/nil/CMPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/CMPlayer;->aQ:I

    return p1
.end method

.method public static a(J)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "00:00"

    :goto_0
    return-object v0

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    div-int/lit16 v1, v0, 0xe10

    rem-int/lit16 v2, v0, 0xe10

    div-int/lit8 v2, v2, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    if-eqz v1, :cond_1

    const-string v3, "%02d:%02d:%02d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v1, "%02d:%02d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(F)V
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aj:I

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aK:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aK:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    sget v1, Lcom/clov4r/android/nil/Setting;->x:I

    int-to-float v1, v1

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->i()V

    return-void
.end method

.method private a(IIII)V
    .locals 7

    const/16 v1, 0x8

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aY:I

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetCurrTime()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetDurationTime()J

    move-result-wide v1

    long-to-int v1, v1

    if-gtz v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    div-int/lit8 v3, p1, 0x32

    add-int/2addr v2, v3

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    iget v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/2addr v2, v0

    if-le v2, v1, :cond_2

    sub-int v2, v1, v0

    div-int/lit16 v2, v2, 0x3e8

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    move v2, v1

    :cond_2
    if-gez v2, :cond_4

    mul-int/lit8 v0, v0, -0x1

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    move v0, v6

    :goto_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

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

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    if-lez v1, :cond_3

    const-string v1, "+"

    :goto_2
    aput-object v1, v3, v0

    const/4 v0, 0x3

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aH:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    const-string v1, ""

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "/"

    invoke-virtual {p3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/CMPlayer;->ar:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "EXT_START_TIME"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "EXT_FILE_PATH"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "EXT_SUBTITLE_SOUNDTRACK"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "CMPlayer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "beginTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";filePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p0, Landroid/app/Activity;

    sget v1, Lcom/clov4r/android/nil/CMPlayer;->c:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/CMPlayer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/CMPlayer;->b(F)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/CMPlayer;IIII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/clov4r/android/nil/CMPlayer;->a(IIII)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/CMPlayer;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/clov4r/android/nil/CMPlayer;->c(J)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/CMPlayer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/CMPlayer;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->a:Landroid/widget/Toast;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->a:Landroid/widget/Toast;

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->a:Landroid/widget/Toast;

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

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->a:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/clov4r/android/nil/CMPlayer;)I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aR:I

    return v0
.end method

.method static synthetic b(Lcom/clov4r/android/nil/CMPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/CMPlayer;->aR:I

    return p1
.end method

.method private b(F)V
    .locals 6

    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aL:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aL:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ao:I

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    sget v1, Lcom/clov4r/android/nil/Setting;->y:I

    int-to-float v1, v1

    div-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    :cond_2
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    const v0, 0x3c23d70a    # 0.01f

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aO:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

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

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentLight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b(Lcom/clov4r/android/nil/CMPlayer;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/CMPlayer;->a(F)V

    return-void
.end method

.method private b(Z)V
    .locals 10

    const/4 v3, 0x0

    const/16 v2, 0x8

    const-string v0, "display_nothing"

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->D:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->E:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->F:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->G:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    const-string v0, "display_progress"

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->D:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->E:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->F:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->G:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->D:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->E:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->F:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->G:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->D:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->F:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetCurrTime()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetDurationTime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/clov4r/android/nil/CMPlayer;->H:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900a3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/clov4r/android/nil/CMPlayer;->aq:Lcom/clov4r/android/nil/dj;

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

    iget-object v6, p0, Lcom/clov4r/android/nil/CMPlayer;->I:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

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

    iget-object v6, p0, Lcom/clov4r/android/nil/CMPlayer;->G:Landroid/view/View;

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    int-to-long v8, v1

    mul-long v1, v8, v2

    div-long/2addr v1, v4

    long-to-int v1, v1

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->F:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {v7, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->E:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->aq:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v3}, Lcom/clov4r/android/nil/dj;->c()I

    move-result v3

    mul-int/2addr v0, v3

    iget-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->aq:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v3}, Lcom/clov4r/android/nil/dj;->d()I

    move-result v3

    div-int/2addr v0, v3

    iget-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->D:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v2, v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method static synthetic c(Lcom/clov4r/android/nil/CMPlayer;I)I
    .locals 0

    iput p1, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    return p1
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/clov4r/android/nil/CMPlayer;->ar:Ljava/lang/String;

    return-object v0
.end method

.method private c(J)V
    .locals 5

    const-string v0, ""

    const-string v1, "UTF-8"

    iget-boolean v2, p0, Lcom/clov4r/android/nil/CMPlayer;->B:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetSubtitle()[B

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/16 v4, 0x800

    if-gt v3, v4, :cond_1

    const-string v3, "subs"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "Auto"

    sget-object v4, Lcom/clov4r/android/nil/ec;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v1, Lcom/clov4r/android/nil/ec;->c:Ljava/lang/String;

    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aV:Ljava/lang/String;

    if-ne v1, v0, :cond_3

    :goto_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ap:Lcom/clov4r/android/nil/eb;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ap:Lcom/clov4r/android/nil/eb;

    iget-wide v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ab:J

    add-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/eb;->a(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aV:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aV:Ljava/lang/String;

    const-string v2, "\n"

    const-string v3, "<br/>"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->l()V

    return-void
.end method

.method static synthetic d(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->at:Landroid/widget/TextView;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v5, 0x0

    const-wide/16 v2, 0x0

    const/16 v4, 0x8

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aB:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->i:Z

    if-eqz v0, :cond_4

    new-instance v0, Lcom/clov4r/android/nil/eb;

    invoke-direct {v0}, Lcom/clov4r/android/nil/eb;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetSubtileCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/clov4r/android/nil/CMPlayer;->B:Z

    :goto_0
    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/eb;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/clov4r/android/nil/CMPlayer;->B:Z

    if-eqz v1, :cond_3

    :cond_0
    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ap:Lcom/clov4r/android/nil/eb;

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    new-instance v0, Lcom/clov4r/android/nil/NativeSurfaceView;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/NativeSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->d:Lcom/clov4r/android/nil/NativeSurfaceView;

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->d:Lcom/clov4r/android/nil/NativeSurfaceView;

    iget-object v0, v0, Lcom/clov4r/android/nil/NativeSurfaceView;->a:Landroid/view/SurfaceHolder;

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aR:I

    iget v4, p0, Lcom/clov4r/android/nil/CMPlayer;->aQ:I

    invoke-interface {v0, v1, v4}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aR:I

    iget v4, p0, Lcom/clov4r/android/nil/CMPlayer;->aQ:I

    const/16 v5, 0x11

    invoke-direct {v0, v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->d:Lcom/clov4r/android/nil/NativeSurfaceView;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/NativeSurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aD:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/clov4r/android/nil/CMPlayer;->d:Lcom/clov4r/android/nil/NativeSurfaceView;

    invoke-virtual {v1, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->b()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXT_START_TIME"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/clov4r/android/nil/CMPlayer;->as:J

    iget-wide v0, p0, Lcom/clov4r/android/nil/CMPlayer;->as:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-wide v0, p0, Lcom/clov4r/android/nil/CMPlayer;->as:J

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->b(J)V

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->y:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->k:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->q:Ljava/util/Timer;

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->q:Ljava/util/Timer;

    new-instance v1, Lcom/clov4r/android/nil/dq;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/dq;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void

    :cond_2
    iput-boolean v5, p0, Lcom/clov4r/android/nil/CMPlayer;->B:Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2
.end method

.method static synthetic e(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ax:Landroid/widget/TextView;

    return-object v0
.end method

.method private e()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aW:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic f(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->az:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private f()V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ba:I

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->m()V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ao:I

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aL:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aL:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->al:I

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aK:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aK:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_2
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aY:I

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aG:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aG:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->t:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ba:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ba:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ba:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ao:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ao:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->al:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->al:I

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aY:I

    goto :goto_3
.end method

.method private g()Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aE:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aE:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aX:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aE:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aE:Landroid/os/PowerManager$WakeLock;

    :cond_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeClose()V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->q:Ljava/util/Timer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->q:Ljava/util/Timer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->q:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aq:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/dj;->b()V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lcom/clov4r/android/nil/CMPlayer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->h()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/clov4r/android/nil/CMPlayer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aU:Ljava/lang/Runnable;

    return-object v0
.end method

.method private h()Z
    .locals 2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetFileInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ah:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private i()V
    .locals 7

    const/4 v6, 0x3

    const/4 v4, 0x0

    iput v6, p0, Lcom/clov4r/android/nil/CMPlayer;->al:I

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aM:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aM:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aM:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    iget v3, p0, Lcom/clov4r/android/nil/CMPlayer;->aj:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aj:I

    int-to-float v2, v2

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    :cond_0
    iget v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    iput v4, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    :cond_1
    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aN:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    iget v5, p0, Lcom/clov4r/android/nil/CMPlayer;->aj:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    int-to-float v1, v1

    mul-float/2addr v1, v4

    float-to-int v1, v1

    invoke-direct {v3, v1, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    float-to-int v1, v1

    const/4 v2, 0x2

    invoke-virtual {v0, v6, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method static synthetic i(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->d()V

    return-void
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aZ:Z

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->b(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aP:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic j(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->e()V

    return-void
.end method

.method private k()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aZ:Z

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->b(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aP:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method static synthetic k(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->f()V

    return-void
.end method

.method static synthetic l(Lcom/clov4r/android/nil/CMPlayer;)J
    .locals 2

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetCurrTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private l()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ba:I

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aP:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->b(Z)V

    return-void
.end method

.method static synthetic m(Lcom/clov4r/android/nil/CMPlayer;)J
    .locals 2

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetDurationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private m()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aP:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aP:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/clov4r/android/nil/CMPlayer;->b(Z)V

    return-void
.end method

.method static synthetic n(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    return-object v0
.end method

.method private native nativeGetCurrTime()J
.end method

.method private native nativeGetDurationTime()J
.end method

.method private native nativeSeek(J)V
.end method

.method static synthetic o(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aw:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->au:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lcom/clov4r/android/nil/CMPlayer;)Lcom/clov4r/android/nil/dj;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aq:Lcom/clov4r/android/nil/dj;

    return-object v0
.end method

.method static synthetic r(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aH:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic s(Lcom/clov4r/android/nil/CMPlayer;)I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aF:I

    return v0
.end method

.method static synthetic t(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aG:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 9

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->r:Z

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->r:Z

    iget-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->r:Z

    if-eqz v0, :cond_2

    iput v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ac:I

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->u:Landroid/widget/LinearLayout;

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

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->x:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method

.method public a(II)V
    .locals 6

    const/16 v3, 0x64

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->K:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->L:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmplayer:changeBattery"

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
    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->K:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->K:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->K:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    move v5, v2

    move v2, v1

    move v1, v5

    :goto_2
    iget-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->K:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    int-to-float v3, p2

    int-to-float v0, v0

    div-float v0, v3, v0

    int-to-float v2, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->M:Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->L:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->M:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->N:Landroid/widget/TextView;

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

    goto :goto_0

    :cond_2
    move v1, v3

    move v2, v3

    goto :goto_2

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method a(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/clov4r/android/nil/CMPlayer;->aX:Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "next"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetCurrTime()J

    move-result-wide v1

    const-wide/16 v3, 0x2710

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const-wide/16 v3, 0x1388

    sub-long/2addr v1, v3

    :cond_0
    const-string v3, "EXT_START_TIME"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "EXT_TOTAL_TIME"

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativeGetDurationTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/clov4r/android/nil/CMPlayer;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method b()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->e:I

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativePlay()V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->h:Landroid/widget/ImageButton;

    const v1, 0x7f02005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iput v2, p0, Lcom/clov4r/android/nil/CMPlayer;->e:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->nativePause()V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->h:Landroid/widget/ImageButton;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->e:I

    goto :goto_0
.end method

.method public b(J)V
    .locals 2

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/clov4r/android/nil/CMPlayer;->nativeSeek(J)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 9

    const/4 v8, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v6, 0x18

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aB:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v0, 0x52

    if-ne v2, v0, :cond_5

    if-nez v1, :cond_5

    iget-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aZ:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/clov4r/android/nil/ec;->b:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->setRequestedOrientation(I)V

    :goto_1
    sget-boolean v0, Lcom/clov4r/android/nil/ec;->h:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->a(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->k()V

    :goto_2
    move v0, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/CMPlayer;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    sget-boolean v0, Lcom/clov4r/android/nil/ec;->h:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->a(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->j()V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aZ:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->l()V

    move v0, v5

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    if-nez v0, :cond_7

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aj:I

    :cond_7
    if-eq v2, v6, :cond_8

    const/16 v0, 0x19

    if-ne v2, v0, :cond_f

    :cond_8
    const-string v0, "volume_key_valume"

    sget-object v3, Lcom/clov4r/android/nil/ec;->g:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aK:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aK:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    invoke-virtual {v0, v8}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    :cond_9
    if-ne v2, v6, :cond_c

    if-nez v1, :cond_c

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    add-float/2addr v0, v7

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    :cond_a
    :goto_3
    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->i()V

    :cond_b
    :goto_4
    move v0, v5

    goto/16 :goto_0

    :cond_c
    const/16 v0, 0x19

    if-ne v2, v0, :cond_a

    if-nez v1, :cond_a

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    sub-float/2addr v0, v7

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    goto :goto_3

    :cond_d
    const-string v0, "volume_key_progress"

    sget-object v1, Lcom/clov4r/android/nil/ec;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    if-ne v2, v6, :cond_e

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->j:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_4

    :cond_f
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method public native nativeClose()V
.end method

.method public native nativeGetFPS()I
.end method

.method public native nativeGetFileInfo()Ljava/lang/String;
.end method

.method public native nativeGetSubtileCount()I
.end method

.method public native nativeGetSubtitle()[B
.end method

.method public native nativeGetVideoDecAvgTime()I
.end method

.method public native nativeOpen(Ljava/lang/String;ILjava/lang/String;)I
.end method

.method public native nativePause()V
.end method

.method public native nativePlay()V
.end method

.method public newAudioTrack(III)Landroid/media/AudioTrack;
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    :try_start_0
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    if-ne p2, v8, :cond_1

    move v3, v7

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-static {p1, v3, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    :try_start_2
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v6, 0x1

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    return-object v0

    :cond_1
    move v3, v9

    goto :goto_0

    :catch_0
    move-exception v0

    move v5, p3

    move v3, p2

    :goto_2
    new-instance v0, Landroid/media/AudioTrack;

    const v2, 0xac44

    move v1, v9

    move v4, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    goto :goto_1

    :catch_1
    move-exception v0

    move v5, p3

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->e:I

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    if-ne v0, v3, :cond_2

    iput v1, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->y:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    if-ne v0, v3, :cond_4

    iput v1, p0, Lcom/clov4r/android/nil/CMPlayer;->f:I

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->y:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/16 v6, 0x8

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "player"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/clov4r/android/nil/CMPlayer;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getWindow()Landroid/view/Window;

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

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->J:Ljava/lang/String;

    sget-boolean v1, Lcom/clov4r/android/nil/ec;->b:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v7}, Lcom/clov4r/android/nil/CMPlayer;->setRequestedOrientation(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->d()Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXT_FILE_PATH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0, v8}, Lcom/clov4r/android/nil/CMPlayer;->setRequestedOrientation(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clov4r/android/nil/library/g;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->X:Lcom/clov4r/android/nil/library/g;

    :cond_3
    sget-boolean v1, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    if-nez v1, :cond_4

    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    iput v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aj:I

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

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

    if-nez v1, :cond_f

    sget v1, Lcom/clov4r/android/nil/ec;->m:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    const/4 v2, 0x3

    sget v3, Lcom/clov4r/android/nil/ec;->m:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    sget v1, Lcom/clov4r/android/nil/ec;->m:F

    iput v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    :cond_5
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    :cond_6
    move-object v0, v2

    check-cast v0, Ljava/lang/Float;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_10

    sget v1, Lcom/clov4r/android/nil/ec;->l:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/clov4r/android/nil/ec;->l:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    :cond_7
    :goto_3
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    iput v1, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    :cond_8
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXT_SUBTITLE_SOUNDTRACK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->A:Ljava/lang/String;

    :cond_9
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->setContentView(I)V

    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->at:Landroid/widget/TextView;

    const v1, 0x7f0b0024

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->au:Landroid/widget/TextView;

    const v1, 0x7f0b0039

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->av:Landroid/widget/TextView;

    const v1, 0x7f0b002b

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aw:Landroid/widget/TextView;

    const v1, 0x7f0b0029

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->l:Landroid/widget/ImageButton;

    const v1, 0x7f0b002a

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->m:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->m:Landroid/widget/ImageButton;

    new-instance v2, Lcom/clov4r/android/nil/eo;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/eo;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aC:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aD:Landroid/widget/FrameLayout;

    const v1, 0x7f0b002c

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->az:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0038

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aA:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0044

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aB:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->az:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ax:Landroid/widget/TextView;

    const v1, 0x7f0b0037

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "14"

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x64

    if-gt v2, v3, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_a

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_a
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "#FFFFFF"

    invoke-static {v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "color="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ay:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v1, Lcom/clov4r/android/nil/dj;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/dj;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aq:Lcom/clov4r/android/nil/dj;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aq:Lcom/clov4r/android/nil/dj;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/dj;->a()V

    const v1, 0x7f0b003a

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aG:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0045

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aP:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b003b

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aH:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b003c

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aI:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aI:Landroid/widget/Button;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b003d

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aJ:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aP:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/clov4r/android/nil/en;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/en;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/clov4r/android/nil/a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/clov4r/android/nil/a;-><init>(Lcom/clov4r/android/nil/CMPlayer;Lcom/clov4r/android/nil/ek;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->C:Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aC:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/clov4r/android/nil/er;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/er;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b003f

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aK:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0042

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aL:Landroid/widget/FrameLayout;

    const v1, 0x7f0b0040

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aM:Landroid/widget/ImageView;

    const v1, 0x7f0b0041

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aN:Landroid/widget/ImageView;

    const v1, 0x7f0b0043

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aO:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->l:Landroid/widget/ImageButton;

    new-instance v2, Lcom/clov4r/android/nil/eq;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/eq;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->v:Landroid/widget/LinearLayout;

    const v1, 0x7f0b002f

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->t:Landroid/widget/TextView;

    const v1, 0x7f0b0034

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->s:Landroid/widget/TextView;

    const v1, 0x7f0b002e

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->u:Landroid/widget/LinearLayout;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const v2, 0x2000000a

    const-string v3, "MainPlayer"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aE:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aE:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const v1, 0x7f0b0027

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->h:Landroid/widget/ImageButton;

    new-instance v2, Lcom/clov4r/android/nil/ei;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/ei;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0028

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->o:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->o:Landroid/widget/SeekBar;

    new-instance v2, Lcom/clov4r/android/nil/ej;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/ej;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const v1, 0x7f0b0026

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->j:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->j:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0035

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->n:Landroid/widget/TextView;

    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->k:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->k:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->y:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->Z:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aS:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->aS:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const v1, 0x7f0b0048

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->D:Landroid/view/View;

    const v1, 0x7f0b0049

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->E:Landroid/view/View;

    const v1, 0x7f0b004b

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->F:Landroid/view/View;

    const v1, 0x7f0b004c

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->G:Landroid/view/View;

    const v1, 0x7f0b0046

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->H:Landroid/widget/TextView;

    const v1, 0x7f0b004a

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->I:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v8, :cond_b

    sget-boolean v1, Lcom/clov4r/android/nil/ec;->b:Z

    if-nez v1, :cond_11

    :cond_b
    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_c
    :goto_4
    const v1, 0x7f0b0031

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->K:Landroid/widget/ImageView;

    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->L:Landroid/widget/ImageView;

    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->N:Landroid/widget/TextView;

    const v1, 0x7f0b0030

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->O:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->O:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aa:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->s:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aa:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->K:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->aa:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->s:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->N:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->R:Landroid/widget/FrameLayout;

    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->P:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->P:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/clov4r/android/nil/dm;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/dm;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->Q:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->Q:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0b0053

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->S:Landroid/widget/ToggleButton;

    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->T:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->S:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->T:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->S:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->Y:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->T:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->Y:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->U:Landroid/widget/TextView;

    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->V:Landroid/widget/TextView;

    const v1, 0x7f0b0055

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/CMPlayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->W:Landroid/widget/TextView;

    sget-object v1, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_12

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->W:Landroid/widget/TextView;

    new-instance v2, Lcom/clov4r/android/nil/dw;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/dw;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    sget-object v1, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v5, :cond_d

    sget v1, Lcom/clov4r/android/nil/ec;->t:I

    if-ltz v1, :cond_d

    sget v1, Lcom/clov4r/android/nil/ec;->t:I

    sget-object v2, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_d

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->W:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setClickable(Z)V

    :cond_d
    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->X:Lcom/clov4r/android/nil/library/g;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->U:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clov4r/android/nil/CMPlayer;->X:Lcom/clov4r/android/nil/library/g;

    iget-object v2, v2, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->V:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->X:Lcom/clov4r/android/nil/library/g;

    iget-wide v3, v3, Lcom/clov4r/android/nil/library/g;->d:J

    invoke-static {v3, v4}, Lcom/clov4r/android/nil/MainActivity;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->X:Lcom/clov4r/android/nil/library/g;

    iget-wide v3, v3, Lcom/clov4r/android/nil/library/g;->g:J

    invoke-static {v3, v4}, Lcom/clov4r/android/nil/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clov4r/android/nil/CMPlayer;->X:Lcom/clov4r/android/nil/library/g;

    iget-object v3, v3, Lcom/clov4r/android/nil/library/g;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    sget-boolean v1, Lcom/clov4r/android/nil/Setting;->j:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->u:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ai:Landroid/media/AudioManager;

    const/4 v2, 0x3

    iget v3, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3, v8}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_2

    :cond_10
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto/16 :goto_3

    :cond_11
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v5, :cond_c

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->j:Landroid/widget/ImageButton;

    invoke-virtual {v1, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_4

    :cond_12
    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->W:Landroid/widget/TextView;

    new-instance v2, Lcom/clov4r/android/nil/dv;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/dv;-><init>(Lcom/clov4r/android/nil/CMPlayer;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->W:Landroid/widget/TextView;

    const v2, 0x7f0900dc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_5
.end method

.method protected onDestroy()V
    .locals 3

    const/high16 v2, -0x40800000    # -1.0f

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "player"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/clov4r/android/nil/CMPlayer;->g()Z

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":vol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CMVolume"

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    sput v0, Lcom/clov4r/android/nil/ec;->m:F

    :cond_0
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":lig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CMLight"

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    sput v0, Lcom/clov4r/android/nil/ec;->l:F

    :cond_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->aB:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->j:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_2
    const/16 v0, 0x16

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ag:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->i:Landroid/widget/ImageButton;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_4

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->b()V

    goto :goto_1

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->Q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->Q:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v0, v2

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/clov4r/android/nil/CMPlayer;->a(Z)V

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->z:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":vol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CMVolume"

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->ak:F

    sput v0, Lcom/clov4r/android/nil/ec;->m:F

    :cond_6
    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":lig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "CMLight"

    iget v1, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->an:F

    sput v0, Lcom/clov4r/android/nil/ec;->l:F

    :cond_7
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/CMPlayer;->am:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_8
    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    goto/16 :goto_1
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget v0, p0, Lcom/clov4r/android/nil/CMPlayer;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->b()V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->a(Z)V

    const-string v0, "player"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

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

    invoke-virtual {p0, v2}, Lcom/clov4r/android/nil/CMPlayer;->a(Z)V

    :goto_0
    const-string v0, "player"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/clov4r/android/nil/CMPlayer;->finish()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/CMPlayer;->a(Z)V

    goto :goto_0
.end method
