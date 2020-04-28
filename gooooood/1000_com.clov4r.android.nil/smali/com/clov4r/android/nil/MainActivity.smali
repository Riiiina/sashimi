.class public Lcom/clov4r/android/nil/MainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Lcom/clov4r/android/nil/entrance/s;


# static fields
.field public static A:Ljava/lang/String;

.field static B:Ljava/lang/String;

.field public static G:Landroid/graphics/Bitmap;

.field public static H:Landroid/graphics/Bitmap;

.field public static aA:I

.field public static aB:I

.field public static aC:I

.field public static aD:I

.field public static aE:I

.field public static aF:I

.field public static aG:I

.field static aJ:I

.field static aK:Landroid/widget/EditText;

.field public static aL:Ljava/lang/String;

.field static aM:Landroid/content/Context;

.field public static aN:Ljava/lang/String;

.field private static aQ:La/a/a/f;

.field private static aS:Z

.field private static aT:Z

.field private static aU:Z

.field public static af:Lcom/clov4r/android/nil/MainActivity;

.field public static ag:Ljava/lang/String;

.field public static aj:Ljava/lang/String;

.field public static ak:Ljava/lang/String;

.field public static al:Ljava/lang/String;

.field static am:Ljava/lang/String;

.field static an:I

.field static ao:J

.field public static aw:Ljava/lang/String;

.field static ay:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field static h:I

.field public static t:Z


# instance fields
.field C:Landroid/widget/TextView;

.field D:Landroid/view/View;

.field E:Landroid/graphics/drawable/Drawable;

.field F:Landroid/widget/ImageView;

.field I:Landroid/widget/LinearLayout;

.field J:Z

.field K:Z

.field L:Landroid/widget/FrameLayout;

.field M:Landroid/widget/LinearLayout;

.field N:Landroid/widget/Gallery;

.field O:Landroid/widget/LinearLayout;

.field P:Landroid/widget/TextView;

.field Q:Landroid/widget/TextView;

.field R:Ljava/lang/String;

.field S:Ljava/lang/String;

.field T:Landroid/widget/ImageView;

.field U:Z

.field V:Landroid/widget/ImageView;

.field W:Landroid/content/Intent;

.field X:Landroid/net/Uri;

.field Y:Z

.field Z:Landroid/content/SharedPreferences;

.field a:Landroid/view/KeyEvent;

.field aH:Landroid/view/View$OnClickListener;

.field aI:Ljava/lang/String;

.field private final aO:I

.field private final aP:I

.field private aR:Ljava/net/URI;

.field aa:Landroid/content/SharedPreferences$Editor;

.field ab:Z

.field ac:Landroid/view/animation/Animation;

.field ad:Landroid/view/animation/Animation;

.field ae:Landroid/util/DisplayMetrics;

.field ah:Z

.field ai:Landroid/os/Handler;

.field ap:Landroid/os/Handler;

.field aq:I

.field ar:Lcom/clov4r/android/nil/fb;

.field as:Ljava/util/ArrayList;

.field at:Ljava/util/ArrayList;

.field au:Lcom/clov4r/android/nil/entrance/aj;

.field av:Ljava/util/ArrayList;

.field public ax:Ljava/lang/String;

.field az:Lcom/clov4r/android/nil/ct;

.field b:Ljava/util/Timer;

.field c:I

.field i:Landroid/widget/GridView;

.field j:Landroid/widget/FrameLayout;

.field k:Landroid/widget/Button;

.field l:Landroid/widget/LinearLayout;

.field m:Landroid/widget/ImageView;

.field n:Landroid/widget/TextView;

.field o:Landroid/widget/TextView;

.field p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field public u:Ljava/lang/String;

.field v:Landroid/widget/ListView;

.field w:Landroid/widget/ListView;

.field x:Lcom/clov4r/android/nil/cu;

.field y:Lcom/clov4r/android/nil/ee;

.field z:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v0, "videotitle"

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->d:Ljava/lang/String;

    const-string v0, "videopath"

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->e:Ljava/lang/String;

    const-string v0, "videosize"

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->f:Ljava/lang/String;

    const-string v0, "rootpath"

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->g:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/clov4r/android/nil/MainActivity;->h:I

    sput-boolean v3, Lcom/clov4r/android/nil/MainActivity;->t:Z

    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->B:Ljava/lang/String;

    sput-object v2, Lcom/clov4r/android/nil/MainActivity;->G:Landroid/graphics/Bitmap;

    sput-object v2, Lcom/clov4r/android/nil/MainActivity;->H:Landroid/graphics/Bitmap;

    sput-object v2, Lcom/clov4r/android/nil/MainActivity;->af:Lcom/clov4r/android/nil/MainActivity;

    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->ag:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->aj:Ljava/lang/String;

    const-string v0, "userEmail"

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->ak:Ljava/lang/String;

    const-string v0, "userCode"

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->al:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->am:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/clov4r/android/nil/MainActivity;->an:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/clov4r/android/nil/MainActivity;->ao:J

    sput-boolean v3, Lcom/clov4r/android/nil/MainActivity;->aT:Z

    sput-boolean v3, Lcom/clov4r/android/nil/MainActivity;->aU:Z

    const-string v0, ".ppng"

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->aw:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->ay:Ljava/lang/String;

    const/16 v0, 0x309

    sput v0, Lcom/clov4r/android/nil/MainActivity;->aA:I

    const/16 v0, 0x6f

    sput v0, Lcom/clov4r/android/nil/MainActivity;->aB:I

    const/16 v0, 0x70

    sput v0, Lcom/clov4r/android/nil/MainActivity;->aC:I

    const/16 v0, 0x71

    sput v0, Lcom/clov4r/android/nil/MainActivity;->aD:I

    const/16 v0, 0x72

    sput v0, Lcom/clov4r/android/nil/MainActivity;->aE:I

    const/16 v0, 0x73

    sput v0, Lcom/clov4r/android/nil/MainActivity;->aF:I

    const/16 v0, 0x75

    sput v0, Lcom/clov4r/android/nil/MainActivity;->aG:I

    sput-object v2, Lcom/clov4r/android/nil/MainActivity;->aK:Landroid/widget/EditText;

    sput-object v2, Lcom/clov4r/android/nil/MainActivity;->aM:Landroid/content/Context;

    sput-object v2, Lcom/clov4r/android/nil/MainActivity;->aN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->a:Landroid/view/KeyEvent;

    iput v2, p0, Lcom/clov4r/android/nil/MainActivity;->c:I

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->k:Landroid/widget/Button;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->l:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->m:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->n:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->y:Lcom/clov4r/android/nil/ee;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    iput-boolean v3, p0, Lcom/clov4r/android/nil/MainActivity;->J:Z

    iput-boolean v3, p0, Lcom/clov4r/android/nil/MainActivity;->K:Z

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->M:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->O:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->P:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->Q:Landroid/widget/TextView;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->R:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->S:Ljava/lang/String;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->T:Landroid/widget/ImageView;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/MainActivity;->U:Z

    iput v3, p0, Lcom/clov4r/android/nil/MainActivity;->aO:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/clov4r/android/nil/MainActivity;->aP:I

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->W:Landroid/content/Intent;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->X:Landroid/net/Uri;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/MainActivity;->Y:Z

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->Z:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->aa:Landroid/content/SharedPreferences$Editor;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/MainActivity;->ab:Z

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ad:Landroid/view/animation/Animation;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ae:Landroid/util/DisplayMetrics;

    iput-boolean v2, p0, Lcom/clov4r/android/nil/MainActivity;->ah:Z

    new-instance v0, Lcom/clov4r/android/nil/cj;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/cj;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ai:Landroid/os/Handler;

    new-instance v0, Lcom/clov4r/android/nil/bv;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/bv;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ap:Landroid/os/Handler;

    const/4 v0, -0x1

    iput v0, p0, Lcom/clov4r/android/nil/MainActivity;->aq:I

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ar:Lcom/clov4r/android/nil/fb;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->at:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->au:Lcom/clov4r/android/nil/entrance/aj;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->av:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    new-instance v0, Lcom/clov4r/android/nil/bb;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/bb;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aH:Landroid/view/View$OnClickListener;

    iput-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->aI:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(La/a/a/f;)La/a/a/f;
    .locals 0

    sput-object p0, Lcom/clov4r/android/nil/MainActivity;->aQ:La/a/a/f;

    return-object p0
.end method

.method public static a(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;
    .locals 5

    const/4 v4, 0x0

    sput-object p1, Lcom/clov4r/android/nil/MainActivity;->aM:Landroid/content/Context;

    if-nez p0, :cond_0

    new-array v0, v4, [Ljava/lang/String;

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090108

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/clov4r/android/nil/aw;

    invoke-direct {v2}, Lcom/clov4r/android/nil/aw;-><init>()V

    invoke-virtual {v1, v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090044

    new-instance v2, Lcom/clov4r/android/nil/ax;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/ax;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090109

    new-instance v2, Lcom/clov4r/android/nil/az;

    invoke-direct {v2}, Lcom/clov4r/android/nil/az;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004b

    new-instance v2, Lcom/clov4r/android/nil/ay;

    invoke-direct {v2}, Lcom/clov4r/android/nil/ay;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    move v2, v4

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-static {p1}, Lcom/clov4r/android/nil/fb;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/String;
    .locals 8

    long-to-int v0, p0

    const v1, 0x36ee80

    div-int/2addr v0, v1

    div-int/lit8 v1, v0, 0xa

    rem-int/lit8 v0, v0, 0xa

    const-wide/32 v2, 0x36ee80

    rem-long v2, p0, v2

    long-to-int v4, v2

    const v5, 0xea60

    div-int/2addr v4, v5

    div-int/lit8 v5, v4, 0xa

    rem-int/lit8 v4, v4, 0xa

    const-wide/32 v6, 0xea60

    rem-long/2addr v2, v6

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    div-int/lit8 v3, v2, 0xa

    rem-int/lit8 v2, v2, 0xa

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/clov4r/android/nil/MainActivity;Ljava/net/URI;)Ljava/net/URI;
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/MainActivity;->aR:Ljava/net/URI;

    return-object p1
.end method

.method static synthetic a(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->h()V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/MainActivity;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/MainActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/MainActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/clov4r/android/nil/library/g;Landroid/content/Context;)V
    .locals 7

    const/4 v1, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/clov4r/android/nil/library/g;->r:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x7f090064

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->B:Ljava/lang/String;

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v3, v0, Lcom/clov4r/android/nil/library/c;->b:J

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v5, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v0, v0, Lcom/clov4r/android/nil/library/c;->a:J

    :goto_1
    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->A:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/clov4r/android/nil/library/g;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/clov4r/android/nil/library/g;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/clov4r/android/nil/library/g;->o:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {p0}, Lcom/clov4r/android/nil/library/b;->a(Lcom/clov4r/android/nil/library/g;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/clov4r/android/nil/library/g;->q:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/clov4r/android/nil/library/g;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/clov4r/android/nil/library/g;->o:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-wide v0, v1

    goto :goto_1
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pathKey"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "open_video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v1, 0x0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-object p0, Lcom/clov4r/android/nil/MainActivity;->B:Ljava/lang/String;

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v3, v0, Lcom/clov4r/android/nil/library/c;->b:J

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v5, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v0, v0, Lcom/clov4r/android/nil/library/c;->a:J

    move-wide v1, v0

    :cond_1
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v7, :cond_2

    iget-object v3, v0, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v7, :cond_3

    :cond_2
    iget-boolean v0, v0, Lcom/clov4r/android/nil/library/g;->r:Z

    if-nez v0, :cond_3

    invoke-static {p0, p1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->A:Z

    if-eqz v0, :cond_4

    invoke-static {p1, v1, v2, p0, p2}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {p0}, Lcom/clov4r/android/nil/library/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1, v1, v2, p0}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-static {p1, v1, v2, p0, p2}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->aQ:La/a/a/f;

    const-string v1, "checkVersion"

    invoke-static {p0}, Lcom/clov4r/android/nil/MainActivity;->d(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_5

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/clov4r/android/nil/MainActivity;

    if-ne v1, v2, :cond_1

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/n;->a(Ljava/util/HashMap;)V

    :cond_0
    :goto_0
    const-string v1, "result_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "flag"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "url"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/clov4r/android/nil/MainActivity;->aj:Ljava/lang/String;

    if-nez v1, :cond_2

    move v0, v3

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/clov4r/android/nil/Setting;

    if-ne v1, v2, :cond_0

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/n;->a(Ljava/util/HashMap;)V
    :try_end_0
    .catch La/a/a/g; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, La/a/a/g;->printStackTrace()V

    move v0, v3

    goto :goto_1

    :cond_2
    if-ne v1, v4, :cond_3

    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/clov4r/android/nil/MainActivity;->aS:Z

    move v0, v4

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    const/4 v0, 0x1

    sput-boolean v0, Lcom/clov4r/android/nil/MainActivity;->aS:Z
    :try_end_1
    .catch La/a/a/g; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1
.end method

.method static synthetic a(Z)Z
    .locals 0

    sput-boolean p0, Lcom/clov4r/android/nil/MainActivity;->aT:Z

    return p0
.end method

.method public static b(J)Ljava/lang/String;
    .locals 3

    long-to-int v0, p0

    const/high16 v1, 0x100000

    div-int/2addr v0, v1

    const-wide/32 v1, 0x100000

    rem-long v1, p0, v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x400

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "K"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/clov4r/android/nil/MainActivity;)Ljava/net/URI;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aR:Ljava/net/URI;

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-nez v2, :cond_4

    move-object v0, v1

    goto :goto_0

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v3, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    if-eqz v0, :cond_4

    new-instance v3, Lcom/clov4r/android/nil/dg;

    iget-object v4, v0, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    iget-object v0, v0, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x2

    invoke-direct {v3, v4, v0, v5, v6}, Lcom/clov4r/android/nil/dg;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto/16 :goto_0
.end method

.method private b(I)V
    .locals 11

    const/4 v10, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v9, 0x8

    const/4 v5, 0x1

    if-ne p1, v10, :cond_8

    const v0, 0x7f030012

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->setContentView(I)V

    const v0, 0x7f0b00ae

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->O:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0b00af

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->P:Landroid/widget/TextView;

    const v0, 0x7f0b00b0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Q:Landroid/widget/TextView;

    sget-boolean v0, Lcom/clov4r/android/nil/MainActivity;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    if-nez v0, :cond_1

    new-instance v0, Landroid/widget/GridView;

    invoke-direct {v0, p0}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    :cond_1
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Gallery;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->registerForContextMenu(Landroid/view/View;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSelection(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    new-instance v3, Lcom/clov4r/android/nil/au;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/au;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    new-instance v3, Lcom/clov4r/android/nil/ak;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/ak;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/widget/Gallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    const v0, 0x7f0b00ac

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f0b00ba

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0063

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->o:Landroid/widget/TextView;

    const v0, 0x7f0b0066

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->p:Landroid/widget/TextView;

    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->q:Landroid/widget/TextView;

    const v0, 0x7f0b0005

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->r:Landroid/widget/TextView;

    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->s:Landroid/widget/TextView;

    const v0, 0x7f0b00b6

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b8

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b9

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b7

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->V:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->V:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00bb

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b4

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    iget-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->J:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ac:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ac:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x12c

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ac:Landroid/view/animation/Animation;

    new-instance v3, Lcom/clov4r/android/nil/al;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/al;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ad:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ad:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ad:Landroid/view/animation/Animation;

    new-instance v1, Lcom/clov4r/android/nil/am;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/am;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v0, 0x7f0b00b1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0b00b3

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->aH:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b00b2

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->m:Landroid/widget/ImageView;

    const v0, 0x7f0b00aa

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const v0, 0x7f0b00a9

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->M:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->M:Landroid/widget/LinearLayout;

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->D:Landroid/view/View;

    if-nez v0, :cond_4

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->D:Landroid/view/View;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->D:Landroid/view/View;

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->C:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->C:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->C:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->C:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->C:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->D:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    new-instance v1, Lcom/clov4r/android/nil/an;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/an;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    new-instance v1, Lcom/clov4r/android/nil/ao;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/ao;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    if-nez v0, :cond_5

    new-instance v0, Lcom/clov4r/android/nil/cu;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/cu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->y:Lcom/clov4r/android/nil/ee;

    if-nez v0, :cond_6

    new-instance v0, Lcom/clov4r/android/nil/ee;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/ee;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->y:Lcom/clov4r/android/nil/ee;

    :cond_6
    const v0, 0x7f0b00ab

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->w:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->w:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->y:Lcom/clov4r/android/nil/ee;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->w:Landroid/widget/ListView;

    new-instance v1, Lcom/clov4r/android/nil/ap;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/ap;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->w:Landroid/widget/ListView;

    new-instance v1, Lcom/clov4r/android/nil/aq;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/aq;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->h()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->b()V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->s()Z

    move-result v0

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/clov4r/android/nil/MainActivity;->t:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->d()V

    if-ne p1, v10, :cond_c

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_7
    :goto_3
    return-void

    :cond_8
    if-ne p1, v5, :cond_2

    const v0, 0x7f030013

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->setContentView(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->O:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->P:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->O:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0b00bd

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    invoke-virtual {v0, v10}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    if-nez v0, :cond_9

    new-instance v0, Landroid/widget/Gallery;

    invoke-direct {v0, p0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    :cond_9
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->T:Landroid/widget/ImageView;

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->C:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_c
    if-ne p1, v5, :cond_7

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_d
    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->r()V

    if-ne p1, v10, :cond_e

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_3

    :cond_e
    if-ne p1, v5, :cond_7

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/clov4r/android/nil/MainActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/MainActivity;->c(I)V

    return-void
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    :try_start_0
    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->aQ:La/a/a/f;

    const-string v1, "checkUserState"

    invoke-static {p0}, Lcom/clov4r/android/nil/MainActivity;->d(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Ljava/util/HashMap;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "result_code"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->am:Ljava/lang/String;

    sget v1, Lcom/clov4r/android/nil/MainActivity;->an:I

    sget-wide v2, Lcom/clov4r/android/nil/MainActivity;->ao:J

    invoke-static {v0, v1, v2, v3}, Lcom/clov4r/android/nil/library/NativeLibrary;->a(Ljava/lang/String;IJ)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    invoke-static {p0}, Lcom/clov4r/android/nil/MainActivity;->c(Landroid/content/Context;)V
    :try_end_0
    .catch La/a/a/g; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, La/a/a/g;->printStackTrace()V

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method static synthetic b(Z)Z
    .locals 0

    sput-boolean p0, Lcom/clov4r/android/nil/MainActivity;->aU:Z

    return p0
.end method

.method public static c(J)Ljava/lang/String;
    .locals 3

    long-to-int v0, p0

    const/high16 v1, 0x100000

    div-int/2addr v0, v1

    const-wide/32 v1, 0x100000

    rem-long v1, p0, v1

    long-to-int v1, v1

    div-int/lit16 v1, v1, 0x400

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "M"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->aM:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09010a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    sget-object v2, Lcom/clov4r/android/nil/MainActivity;->aM:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/clov4r/android/nil/MainActivity;->aK:Landroid/widget/EditText;

    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->aK:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Ok"

    new-instance v2, Lcom/clov4r/android/nil/av;

    invoke-direct {v2}, Lcom/clov4r/android/nil/av;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Cancel"

    new-instance v2, Lcom/clov4r/android/nil/bl;

    invoke-direct {v2}, Lcom/clov4r/android/nil/bl;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private c(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ap:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->ak:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v2, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->al:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-static {p1}, Lcom/clov4r/android/nil/MainActivity;->b(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/cu;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    new-instance v1, Lcom/clov4r/android/nil/g;

    invoke-direct {v1}, Lcom/clov4r/android/nil/g;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/cu;->notifyDataSetInvalidated()V

    return-void
.end method

.method static synthetic c(Lcom/clov4r/android/nil/MainActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->k()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/clov4r/android/nil/MainActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->m()Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/content/Context;)[Ljava/lang/Object;
    .locals 4

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->ak:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->am:Ljava/lang/String;

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->al:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/clov4r/android/nil/MainActivity;->an:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/clov4r/android/nil/MainActivity;->ao:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "emailAddr"

    sget-object v2, Lcom/clov4r/android/nil/MainActivity;->am:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phoneModel"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phoneVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "versionNumber"

    const/16 v2, 0x91

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceID"

    const-string v2, "12345"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "universal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "currentTime"

    sget-wide v2, Lcom/clov4r/android/nil/MainActivity;->ao:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userNum"

    sget v2, Lcom/clov4r/android/nil/MainActivity;->an:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method public static e()I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/clov4r/android/nil/MainActivity;->aN:Ljava/lang/String;

    const-string v1, "mounted_ro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "mounted"

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method static synthetic e(Lcom/clov4r/android/nil/MainActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->s()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->n()V

    return-void
.end method

.method static synthetic f()Z
    .locals 1

    sget-boolean v0, Lcom/clov4r/android/nil/MainActivity;->aS:Z

    return v0
.end method

.method static synthetic g(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->p()V

    return-void
.end method

.method static synthetic g()Z
    .locals 1

    sget-boolean v0, Lcom/clov4r/android/nil/MainActivity;->aT:Z

    return v0
.end method

.method private h()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->K:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->w:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->w:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->j()V

    return-void
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->z:Ljava/util/ArrayList;

    new-instance v1, Lcom/clov4r/android/nil/g;

    invoke-direct {v1}, Lcom/clov4r/android/nil/g;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->x:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/cu;->notifyDataSetInvalidated()V

    return-void
.end method

.method static synthetic i(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->r()V

    return-void
.end method

.method private j()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/clov4r/android/nil/entrance/n;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/n;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/clov4r/android/nil/ck;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/ck;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/clov4r/android/nil/cl;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/cl;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic j(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->q()V

    return-void
.end method

.method static synthetic k(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->i()V

    return-void
.end method

.method private k()Z
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private l()V
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "lastVersionCheckTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, v2, v0}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic l(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->o()V

    return-void
.end method

.method private m()Z
    .locals 9

    const/4 v8, 0x1

    const-wide/16 v6, 0x0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "lastVersionCheckTime"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-ne v1, v8, :cond_1

    const-wide/32 v0, 0x5265c00

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    add-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-lez v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->l()V

    move v0, v8

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_3

    const-wide/32 v0, 0x240c8400

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move-wide v0, v6

    goto :goto_0
.end method

.method private n()V
    .locals 1

    invoke-static {}, Lcom/clov4r/android/nil/MainActivity;->e()I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->c(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->c(I)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->c(I)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->c(I)V

    goto :goto_0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    new-instance v1, Lcom/clov4r/android/nil/g;

    invoke-direct {v1}, Lcom/clov4r/android/nil/g;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->au:Lcom/clov4r/android/nil/entrance/aj;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/aj;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->au:Lcom/clov4r/android/nil/entrance/aj;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/entrance/aj;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ar:Lcom/clov4r/android/nil/fb;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/fb;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->b()V

    return-void
.end method

.method private q()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    sget-boolean v1, Lcom/clov4r/android/nil/MainActivity;->t:Z

    if-eqz v1, :cond_0

    const v1, 0x7f060005

    sget v2, Lcom/clov4r/android/nil/g;->c:I

    new-instance v3, Lcom/clov4r/android/nil/bm;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/bm;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void

    :cond_0
    const v1, 0x7f060004

    sget v2, Lcom/clov4r/android/nil/g;->b:I

    new-instance v3, Lcom/clov4r/android/nil/bn;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/bn;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private r()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/clov4r/android/nil/bi;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/bi;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/clov4r/android/nil/bj;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/bj;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private s()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/clov4r/android/nil/MainActivity;->e()I

    move-result v0

    if-gez v0, :cond_0

    invoke-direct {p0, v2}, Lcom/clov4r/android/nil/MainActivity;->c(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->c(I)V

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->c(I)V

    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    sput p1, Lcom/clov4r/android/nil/ec;->k:I

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->M:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Lcom/clov4r/android/nil/ct;

    invoke-direct {v0, p0, p1, v1}, Lcom/clov4r/android/nil/ct;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900cc

    new-instance v3, Lcom/clov4r/android/nil/by;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/by;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900cd

    new-instance v3, Lcom/clov4r/android/nil/be;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/be;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900ce

    new-instance v3, Lcom/clov4r/android/nil/bc;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/bc;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    const-string v0, ""

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    new-instance v3, Lcom/clov4r/android/nil/bd;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/bd;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900d1

    new-instance v3, Lcom/clov4r/android/nil/ba;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/ba;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ct;->a()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "current_playpath"

    invoke-static {p0, v0, p1}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    if-nez p0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v4

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WIFI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public b()V
    .locals 6

    const/4 v5, -0x1

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    :goto_1
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->at:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->at:Ljava/util/ArrayList;

    :goto_2
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->av:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->av:Ljava/util/ArrayList;

    :goto_3
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->at:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/clov4r/android/nil/library/g;->d:J

    invoke-static {v3, v4}, Lcom/clov4r/android/nil/MainActivity;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Lcom/clov4r/android/nil/library/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v0, Lcom/clov4r/android/nil/library/g;->g:J

    invoke-static {v3, v4}, Lcom/clov4r/android/nil/MainActivity;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->av:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->at:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->av:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ar:Lcom/clov4r/android/nil/fb;

    if-nez v0, :cond_5

    new-instance v0, Lcom/clov4r/android/nil/fb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/clov4r/android/nil/fb;-><init>(Landroid/content/Context;Landroid/view/View$OnTouchListener;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ar:Lcom/clov4r/android/nil/fb;

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->au:Lcom/clov4r/android/nil/entrance/aj;

    if-nez v0, :cond_7

    new-instance v0, Lcom/clov4r/android/nil/entrance/aj;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/clov4r/android/nil/entrance/aj;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->au:Lcom/clov4r/android/nil/entrance/aj;

    :goto_5
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->au:Lcom/clov4r/android/nil/entrance/aj;

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    sget v1, Lcom/clov4r/android/nil/ec;->o:I

    mul-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setSpacing(I)V

    :cond_6
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ar:Lcom/clov4r/android/nil/fb;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/fb;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ar:Lcom/clov4r/android/nil/fb;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    new-instance v1, Lcom/clov4r/android/nil/bt;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/bt;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->o()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->au:Lcom/clov4r/android/nil/entrance/aj;

    invoke-virtual {v0, v5, v5}, Lcom/clov4r/android/nil/entrance/aj;->a(II)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->au:Lcom/clov4r/android/nil/entrance/aj;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->as:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/entrance/aj;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->N:Landroid/widget/Gallery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setVisibility(I)V

    goto :goto_5
.end method

.method public d()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Lcom/clov4r/android/nil/bo;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/bo;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v2, Lcom/clov4r/android/nil/bh;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/bh;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->L:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x252b

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "mytag"

    const-string v1, "MainActivity OnResult"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/clov4r/android/nil/MainActivity;->aA:I

    if-ne v0, p1, :cond_1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "show_tips"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->ab:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/clov4r/android/nil/MainActivity;->ab:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900d6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    const/16 v3, 0x1f40

    invoke-static {p0, v0, v1, v2, v3}, Lcom/clov4r/android/nil/bp;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/clov4r/android/nil/MainActivity;->aB:I

    if-ne p1, v0, :cond_2

    if-ne p2, v3, :cond_0

    new-instance v0, Lcom/clov4r/android/nil/n;

    invoke-direct {v0, p0, v2}, Lcom/clov4r/android/nil/n;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/n;->start()V

    goto :goto_0

    :cond_2
    sget v0, Lcom/clov4r/android/nil/MainActivity;->aC:I

    if-ne p1, v0, :cond_3

    if-ne p2, v3, :cond_0

    new-instance v0, Lcom/clov4r/android/nil/n;

    invoke-direct {v0, p0, v2}, Lcom/clov4r/android/nil/n;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/n;->start()V

    goto :goto_0

    :cond_3
    sget v0, Lcom/clov4r/android/nil/MainActivity;->aD:I

    if-ne p1, v0, :cond_5

    if-ne p2, v3, :cond_0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "background_color"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->M:Landroid/widget/LinearLayout;

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_4
    new-instance v0, Lcom/clov4r/android/nil/n;

    invoke-direct {v0, p0, v2}, Lcom/clov4r/android/nil/n;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/n;->start()V

    goto :goto_0

    :cond_5
    sget v0, Lcom/clov4r/android/nil/CMPlayer;->c:I

    if-eq p1, v0, :cond_6

    if-ne p1, v6, :cond_c

    :cond_6
    if-ne p2, v3, :cond_b

    new-instance v1, Lcom/clov4r/android/nil/library/c;

    invoke-direct {v1}, Lcom/clov4r/android/nil/library/c;-><init>()V

    if-eqz p3, :cond_8

    const-string v0, "next"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v5, :cond_7

    sget v0, Lcom/clov4r/android/nil/ec;->t:I

    if-lez v0, :cond_7

    sget v0, Lcom/clov4r/android/nil/ec;->t:I

    sget-object v2, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0xc

    iput v0, v2, Landroid/os/Message;->what:I

    sget-object v0, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    sget v3, Lcom/clov4r/android/nil/ec;->t:I

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->b:Ljava/util/Timer;

    new-instance v3, Lcom/clov4r/android/nil/as;

    invoke-direct {v3, p0, v2}, Lcom/clov4r/android/nil/as;-><init>(Lcom/clov4r/android/nil/MainActivity;Landroid/os/Message;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_7
    const-string v0, "EXT_START_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/clov4r/android/nil/library/c;->a:J

    const-string v0, "EXT_TOTAL_TIME"

    const-wide/16 v2, 0x0

    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/clov4r/android/nil/library/c;->b:J

    :cond_8
    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-nez v0, :cond_9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    :cond_9
    iget-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->Y:Z

    if-eqz v0, :cond_a

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/clov4r/android/nil/MainActivity;->B:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->b(Landroid/content/Context;)Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->finish()V

    goto/16 :goto_0

    :cond_a
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    sget-object v2, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->b(Landroid/content/Context;)Z

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->i:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->refreshDrawableState()V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->v:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->refreshDrawableState()V

    goto/16 :goto_0

    :cond_b
    if-ne p1, v6, :cond_0

    iget-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->Y:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->finish()V

    goto/16 :goto_0

    :cond_c
    sget v0, Lcom/clov4r/android/nil/MainActivity;->aE:I

    if-eq p1, v0, :cond_d

    sget v0, Lcom/clov4r/android/nil/MainActivity;->aF:I

    if-ne p1, v0, :cond_e

    :cond_d
    new-instance v0, Lcom/clov4r/android/nil/n;

    invoke-direct {v0, p0, v2}, Lcom/clov4r/android/nil/n;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/n;->start()V

    goto/16 :goto_0

    :cond_e
    sget v0, Lcom/clov4r/android/nil/MainActivity;->aG:I

    if-ne v0, p1, :cond_0

    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->d()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->finish()V

    goto/16 :goto_0

    :cond_f
    const-string v0, "open_manager"

    invoke-virtual {p0, v0, v4}, Lcom/clov4r/android/nil/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Z:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aa:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Z:Landroid/content/SharedPreferences;

    const-string v1, "first_open"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->ab:Z

    iget-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->ab:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aa:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_open"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aa:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/entrance/UserHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/clov4r/android/nil/MainActivity;->aA:I

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_10
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_11

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    :cond_11
    sget-object v0, Lcom/clov4r/android/nil/ec;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aR:Ljava/net/URI;

    new-instance v0, La/a/a/f;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->aR:Ljava/net/URI;

    invoke-direct {v0, v1}, La/a/a/f;-><init>(Ljava/net/URI;)V

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->aQ:La/a/a/f;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->b(I)V

    new-instance v0, Lcom/clov4r/android/nil/ae;

    invoke-direct {v0, p0, v2}, Lcom/clov4r/android/nil/ae;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ae;->start()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-static {}, Ljava/lang/System;->gc()V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ct;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ct;->dismiss()V

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->b(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    const-string v0, "mytag"

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mytag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_0
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iput-wide v5, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_2
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_6

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    :cond_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/clov4r/android/nil/ca;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/ca;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_8

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pathKey"

    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_a

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_a

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->aL:Ljava/lang/String;

    invoke-static {p0}, Lcom/clov4r/android/nil/PlayListActivity;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1

    :cond_b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    goto/16 :goto_2

    :cond_c
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_10

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v1, v0, Lcom/clov4r/android/nil/library/c;->b:J

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v3, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sub-long v0, v1, v3

    const-wide/16 v2, 0x1388

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v0, v0, Lcom/clov4r/android/nil/library/c;->a:J

    :goto_3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_d

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    sget-object v3, Lcom/clov4r/android/nil/MainActivity;->ay:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_f

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    :cond_f
    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    move-wide v0, v5

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "mytag"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v5}, Lcom/clov4r/android/nil/MainActivity;->requestWindowFeature(I)Z

    sput-object p0, Lcom/clov4r/android/nil/MainActivity;->af:Lcom/clov4r/android/nil/MainActivity;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ae:Landroid/util/DisplayMetrics;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ae:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->ae:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ae:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, v1, :cond_6

    sput v0, Lcom/clov4r/android/nil/ec;->o:I

    sput v1, Lcom/clov4r/android/nil/ec;->p:I

    :goto_0
    invoke-static {p0}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/clov4r/android/nil/Setting;->b(Landroid/content/Context;)V

    sget-boolean v0, Lcom/clov4r/android/nil/ec;->q:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/clov4r/android/nil/entrance/aa;->a()I

    move-result v0

    sput v0, Lcom/clov4r/android/nil/ec;->j:I

    :cond_0
    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->l(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/ec;->d:[Ljava/lang/String;

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->h(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    iput-boolean v4, p0, Lcom/clov4r/android/nil/MainActivity;->Y:Z

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "file://"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v1, -0x1

    sput v1, Lcom/clov4r/android/nil/ec;->t:I

    invoke-static {v0}, Lcom/clov4r/android/nil/ec;->a(Ljava/lang/String;)Z

    iput-boolean v5, p0, Lcom/clov4r/android/nil/MainActivity;->Y:Z

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v1, :cond_7

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    invoke-static {v0, p0}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/library/g;Landroid/content/Context;)V

    :cond_2
    :goto_1
    const-string v0, "path"

    invoke-static {v0, v6}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    const-string v0, "current_playpath"

    invoke-static {v0, v6}, Lcom/clov4r/android/nil/Setting;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-static {}, Lcom/clov4r/android/nil/MainActivity;->e()I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    :cond_4
    sput v4, Lcom/clov4r/android/nil/g;->b:I

    sput v5, Lcom/clov4r/android/nil/g;->c:I

    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".so"

    const-string v2, ".zip"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".mobo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "library"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MoboPlayer"

    const-string v2, "File has download"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->ag:Ljava/lang/String;

    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->d()Z

    move-result v0

    if-nez v0, :cond_8

    new-instance v0, Lcom/clov4r/android/nil/entrance/h;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/clov4r/android/nil/MainActivity;->ai:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/clov4r/android/nil/entrance/h;-><init>(Landroid/content/Context;Ljava/io/File;ILandroid/os/Handler;)V

    :goto_2
    return-void

    :cond_6
    sput v1, Lcom/clov4r/android/nil/ec;->o:I

    sput v0, Lcom/clov4r/android/nil/ec;->p:I

    goto/16 :goto_0

    :cond_7
    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v0, "open_manager"

    invoke-virtual {p0, v0, v4}, Lcom/clov4r/android/nil/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Z:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aa:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->Z:Landroid/content/SharedPreferences;

    const-string v1, "first_open"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->ab:Z

    iget-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->ab:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aa:Landroid/content/SharedPreferences$Editor;

    const-string v1, "first_open"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aa:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/entrance/UserHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/clov4r/android/nil/MainActivity;->aA:I

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_9
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->E:Landroid/graphics/drawable/Drawable;

    :cond_a
    sget-object v0, Lcom/clov4r/android/nil/ec;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->aR:Ljava/net/URI;

    new-instance v0, La/a/a/f;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->aR:Ljava/net/URI;

    invoke-direct {v0, v1}, La/a/a/f;-><init>(Ljava/net/URI;)V

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->aQ:La/a/a/f;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/MainActivity;->b(I)V

    new-instance v0, Lcom/clov4r/android/nil/ae;

    invoke-direct {v0, p0, v6}, Lcom/clov4r/android/nil/ae;-><init>(Lcom/clov4r/android/nil/MainActivity;Lcom/clov4r/android/nil/as;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ae;->start()V

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v1, v0

    iget-object v1, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0b000b

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, ""

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->ax:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/clov4r/android/nil/MainActivity;->S:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const-string v0, ""

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "hxMobo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-boolean v0, p0, Lcom/clov4r/android/nil/MainActivity;->U:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/clov4r/android/nil/MainActivity;->K:Z

    invoke-direct {p0}, Lcom/clov4r/android/nil/MainActivity;->h()V

    iput-boolean v3, p0, Lcom/clov4r/android/nil/MainActivity;->U:Z

    :cond_1
    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09005e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004b

    new-instance v2, Lcom/clov4r/android/nil/bf;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/bf;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090044

    new-instance v2, Lcom/clov4r/android/nil/bk;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/bk;-><init>(Lcom/clov4r/android/nil/MainActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    :cond_3
    const/16 v0, 0x52

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ac:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ac:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v3, p0, Lcom/clov4r/android/nil/MainActivity;->J:Z

    :cond_4
    :goto_2
    move v0, v3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ad:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/MainActivity;->I:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/clov4r/android/nil/MainActivity;->ad:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v4, p0, Lcom/clov4r/android/nil/MainActivity;->J:Z

    goto :goto_2

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string v0, "1"

    sget-boolean v1, Lcom/clov4r/android/nil/MainActivity;->t:Z

    if-nez v1, :cond_0

    const-string v0, "2"

    :cond_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
