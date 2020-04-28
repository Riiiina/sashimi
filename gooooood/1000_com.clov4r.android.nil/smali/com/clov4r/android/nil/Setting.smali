.class public Lcom/clov4r/android/nil/Setting;
.super Landroid/preference/PreferenceActivity;

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field public static A:Z

.field private static C:Landroid/content/SharedPreferences;

.field private static D:Landroid/content/SharedPreferences$Editor;

.field private static E:I

.field private static F:Ljava/lang/String;

.field private static G:Ljava/lang/String;

.field private static H:Ljava/lang/String;

.field private static I:Ljava/lang/String;

.field private static J:Ljava/lang/String;

.field private static K:Ljava/lang/String;

.field private static L:Ljava/lang/String;

.field static a:Landroid/content/Context;

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:Z

.field public static f:Z

.field public static g:Z

.field public static h:Z

.field public static i:Z

.field public static j:Z

.field public static k:Z

.field public static o:Z

.field public static p:I

.field public static q:I

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:Z

.field public static w:Ljava/lang/String;

.field public static x:I

.field public static y:I

.field public static z:Z


# instance fields
.field B:Landroid/os/Handler;

.field l:Landroid/preference/CheckBoxPreference;

.field m:Landroid/preference/CheckBoxPreference;

.field n:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-object v1, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sput-object v1, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    sput v3, Lcom/clov4r/android/nil/Setting;->b:I

    const/4 v0, 0x2

    sput v0, Lcom/clov4r/android/nil/Setting;->c:I

    const/4 v0, 0x3

    sput v0, Lcom/clov4r/android/nil/Setting;->d:I

    sput-boolean v2, Lcom/clov4r/android/nil/Setting;->e:Z

    sput-boolean v2, Lcom/clov4r/android/nil/Setting;->f:Z

    sput-boolean v2, Lcom/clov4r/android/nil/Setting;->g:Z

    sput-boolean v2, Lcom/clov4r/android/nil/Setting;->h:Z

    sput-boolean v3, Lcom/clov4r/android/nil/Setting;->i:Z

    sput-boolean v3, Lcom/clov4r/android/nil/Setting;->j:Z

    sput-boolean v2, Lcom/clov4r/android/nil/Setting;->k:Z

    sput-object v1, Lcom/clov4r/android/nil/Setting;->F:Ljava/lang/String;

    sput-object v1, Lcom/clov4r/android/nil/Setting;->G:Ljava/lang/String;

    sput-object v1, Lcom/clov4r/android/nil/Setting;->H:Ljava/lang/String;

    sput-object v1, Lcom/clov4r/android/nil/Setting;->I:Ljava/lang/String;

    sput-object v1, Lcom/clov4r/android/nil/Setting;->J:Ljava/lang/String;

    sput-object v1, Lcom/clov4r/android/nil/Setting;->K:Ljava/lang/String;

    sput-object v1, Lcom/clov4r/android/nil/Setting;->L:Ljava/lang/String;

    sput-boolean v2, Lcom/clov4r/android/nil/Setting;->o:Z

    const/16 v0, 0x64

    sput v0, Lcom/clov4r/android/nil/Setting;->p:I

    const/16 v0, 0xc8

    sput v0, Lcom/clov4r/android/nil/Setting;->q:I

    const/16 v0, 0x104

    sput v0, Lcom/clov4r/android/nil/Setting;->r:I

    const/16 v0, 0xbb8

    sput v0, Lcom/clov4r/android/nil/Setting;->s:I

    const/16 v0, 0x1388

    sput v0, Lcom/clov4r/android/nil/Setting;->t:I

    const/16 v0, 0x1b58

    sput v0, Lcom/clov4r/android/nil/Setting;->u:I

    sput-boolean v3, Lcom/clov4r/android/nil/Setting;->v:Z

    const-string v0, "2"

    sput-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    sget v0, Lcom/clov4r/android/nil/Setting;->q:I

    sput v0, Lcom/clov4r/android/nil/Setting;->x:I

    sget v0, Lcom/clov4r/android/nil/Setting;->t:I

    sput v0, Lcom/clov4r/android/nil/Setting;->y:I

    sput-boolean v2, Lcom/clov4r/android/nil/Setting;->z:Z

    sput-boolean v2, Lcom/clov4r/android/nil/Setting;->A:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/Setting;->l:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/clov4r/android/nil/Setting;->m:Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/clov4r/android/nil/Setting;->n:Landroid/content/SharedPreferences;

    new-instance v0, Lcom/clov4r/android/nil/e;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/e;-><init>(Lcom/clov4r/android/nil/Setting;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/Setting;->B:Landroid/os/Handler;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    :cond_1
    const-string v0, ""

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_3

    :cond_2
    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_5

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    move-object v0, p1

    goto/16 :goto_0
.end method

.method private a()V
    .locals 2

    const-string v0, ""

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->d:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/Setting;->a(Ljava/io/File;)V

    sget-object v0, Lcom/clov4r/android/nil/fb;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/fb;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->d:Ljava/lang/String;

    return-void
.end method

.method private a(I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/clov4r/android/nil/Setting;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;)V

    :cond_1
    sget-object v0, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_5

    :cond_3
    sget-object v0, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/String;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_4
    :goto_1
    sget-object v0, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_8

    sget-object v0, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_4

    sget-object v0, Lcom/clov4r/android/nil/Setting;->D:Landroid/content/SharedPreferences$Editor;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method static synthetic a(Lcom/clov4r/android/nil/Setting;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/Setting;->a(I)V

    return-void
.end method

.method private b()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "About MoboPlayer"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/clov4r/android/nil/da;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/da;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Blog"

    new-instance v2, Lcom/clov4r/android/nil/i;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/i;-><init>(Lcom/clov4r/android/nil/Setting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "HomePage"

    new-instance v2, Lcom/clov4r/android/nil/h;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/h;-><init>(Lcom/clov4r/android/nil/Setting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v1, "Suggest"

    new-instance v2, Lcom/clov4r/android/nil/c;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/c;-><init>(Lcom/clov4r/android/nil/Setting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 6

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;)V

    :cond_0
    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "80"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clov4r/android/nil/CMPlayer;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->v:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/clov4r/android/nil/Setting;->p:I

    sput v0, Lcom/clov4r/android/nil/Setting;->x:I

    sput-boolean v3, Lcom/clov4r/android/nil/Setting;->z:Z

    sget v0, Lcom/clov4r/android/nil/Setting;->s:I

    sput v0, Lcom/clov4r/android/nil/Setting;->y:I

    :goto_1
    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->A:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->f:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->k:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "setting_screen_rotation"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/ec;->b:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "setting_encode_style"

    const-string v2, "Auto"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/ec;->c:Ljava/lang/String;

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->g:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->h:Z

    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentPlayMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->h:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "volume_keys_setting"

    const-string v2, "volume_key_valume"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/ec;->g:Ljava/lang/String;

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "setting_screen_tips"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/ec;->h:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "setting_key_show_battery_ornot"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/ec;->i:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sput-boolean v4, Lcom/clov4r/android/nil/MainActivity;->t:Z

    :goto_2
    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "background_keys_setting"

    const-string v2, "#616C81"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/clov4r/android/nil/Setting;->E:I

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clov4r/android/nil/ec;->j:I

    sget v0, Lcom/clov4r/android/nil/ec;->j:I

    sput v0, Lcom/clov4r/android/nil/ec;->k:I

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "CMLight"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/clov4r/android/nil/ec;->l:F

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "CMVolume"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    sput v0, Lcom/clov4r/android/nil/ec;->m:F

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "bg_color_random"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/ec;->q:Z

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "setting_play_next"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/ec;->r:Z

    return-void

    :catch_0
    move-exception v0

    const/16 v0, 0x50

    sput v0, Lcom/clov4r/android/nil/CMPlayer;->g:I

    goto/16 :goto_0

    :cond_1
    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v3, Lcom/clov4r/android/nil/Setting;->z:Z

    sget v0, Lcom/clov4r/android/nil/Setting;->q:I

    sput v0, Lcom/clov4r/android/nil/Setting;->x:I

    sget v0, Lcom/clov4r/android/nil/Setting;->t:I

    sput v0, Lcom/clov4r/android/nil/Setting;->y:I

    goto/16 :goto_1

    :cond_2
    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v3, Lcom/clov4r/android/nil/Setting;->z:Z

    sget v0, Lcom/clov4r/android/nil/Setting;->r:I

    sput v0, Lcom/clov4r/android/nil/Setting;->x:I

    sget v0, Lcom/clov4r/android/nil/Setting;->u:I

    sput v0, Lcom/clov4r/android/nil/Setting;->y:I

    goto/16 :goto_1

    :cond_3
    sput-boolean v4, Lcom/clov4r/android/nil/Setting;->z:Z

    goto/16 :goto_1

    :cond_4
    sput-boolean v3, Lcom/clov4r/android/nil/MainActivity;->t:Z

    goto/16 :goto_2
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_2

    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/clov4r/android/nil/Setting;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    sget v0, Lcom/clov4r/android/nil/Setting;->b:I

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/Setting;->setResult(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/clov4r/android/nil/Setting;->c:I

    if-ne p1, v0, :cond_2

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->k(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clov4r/android/nil/library/MediaLibrary;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/clov4r/android/nil/ec;->d:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v0, v0

    sget-object v1, Lcom/clov4r/android/nil/ec;->d:[Ljava/lang/String;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/Setting;->showDialog(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/clov4r/android/nil/Setting;->d:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/Setting;->setResult(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    const/high16 v0, 0x7f050000

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/Setting;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->F:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->G:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->H:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->I:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->J:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->K:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->L:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    sget-object v0, Lcom/clov4r/android/nil/Setting;->F:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/Setting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/clov4r/android/nil/Setting;->l:Landroid/preference/CheckBoxPreference;

    sget-object v0, Lcom/clov4r/android/nil/Setting;->H:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/Setting;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/clov4r/android/nil/Setting;->m:Landroid/preference/CheckBoxPreference;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/Setting;->n:Landroid/content/SharedPreferences;

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09003c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b5

    new-instance v2, Lcom/clov4r/android/nil/f;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/f;-><init>(Lcom/clov4r/android/nil/Setting;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, -0x1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget v0, Lcom/clov4r/android/nil/Setting;->E:I

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    if-eq v0, v1, :cond_1

    sget v0, Lcom/clov4r/android/nil/ec;->j:I

    sput v0, Lcom/clov4r/android/nil/Setting;->E:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "background_color"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Lcom/clov4r/android/nil/Setting;->setResult(ILandroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/clov4r/android/nil/Setting;->setResult(I)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6

    const v5, 0x7f090020

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/clov4r/android/nil/Setting;->J:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/clov4r/android/nil/Setting;->b()V

    :cond_0
    :goto_0
    const-string v0, "condition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->f:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/clov4r/android/nil/Setting;->k:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090075

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v4, Lcom/clov4r/android/nil/Setting;->o:Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/clov4r/android/nil/Setting;->b:I

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090014

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->f:Z

    if-nez v0, :cond_3

    move v0, v4

    :goto_1
    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->f:Z

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->k:Z

    if-nez v0, :cond_5

    move v0, v4

    :goto_2
    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->k:Z

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0}, Lcom/clov4r/android/nil/Setting;->a()V

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->d(Landroid/content/Context;)Z

    :cond_7
    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090018

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->b(Landroid/content/Context;)Z

    :cond_9
    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090078

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Landroid/content/Context;)Z

    :cond_b
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090076

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/clov4r/android/nil/Setting;->a()V

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_d

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->d(Landroid/content/Context;)Z

    :cond_d
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Landroid/content/Context;)Z

    :cond_e
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->b(Landroid/content/Context;)Z

    :cond_f
    const-string v0, ""

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/Setting;->showDialog(I)V

    new-instance v0, Lcom/clov4r/android/nil/ea;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/clov4r/android/nil/ea;-><init>(Lcom/clov4r/android/nil/Setting;Lcom/clov4r/android/nil/f;)V

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ea;->start()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->v:Z

    if-nez v0, :cond_12

    move v0, v4

    :goto_3
    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->v:Z

    goto/16 :goto_0

    :cond_12
    move v0, v3

    goto :goto_3

    :cond_13
    const-string v1, "setting_key_help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/entrance/UserHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/Setting;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_14
    const-string v1, "setting_key_screen_lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "setting_key_scan_type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/entrance/FileTypeListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v1, Lcom/clov4r/android/nil/Setting;->c:I

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/Setting;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    const v5, 0x7f0900f8

    const v2, 0x7f0900f7

    const v1, 0x7f090011

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "80"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clov4r/android/nil/CMPlayer;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/clov4r/android/nil/Setting;->n:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/Setting;->K:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/clov4r/android/nil/Setting;->n:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->K:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->i:Z

    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/Setting;->n:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    if-eqz v0, :cond_8

    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget v0, Lcom/clov4r/android/nil/Setting;->p:I

    sput v0, Lcom/clov4r/android/nil/Setting;->x:I

    sget v0, Lcom/clov4r/android/nil/Setting;->s:I

    sput v0, Lcom/clov4r/android/nil/Setting;->y:I

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/Setting;->n:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sput-boolean v3, Lcom/clov4r/android/nil/MainActivity;->t:Z

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/Setting;->n:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->A:Z

    :cond_6
    const-string v0, "setting_screen_rotation"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "setting_screen_rotation"

    invoke-interface {p1, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/ec;->b:Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/16 v0, 0x50

    sput v0, Lcom/clov4r/android/nil/CMPlayer;->g:I

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/clov4r/android/nil/Setting;->L:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/Setting;->n:Landroid/content/SharedPreferences;

    sget-object v1, Lcom/clov4r/android/nil/Setting;->L:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/Setting;->j:Z

    goto/16 :goto_2

    :cond_8
    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget v0, Lcom/clov4r/android/nil/Setting;->q:I

    sput v0, Lcom/clov4r/android/nil/Setting;->x:I

    sget v0, Lcom/clov4r/android/nil/Setting;->t:I

    sput v0, Lcom/clov4r/android/nil/Setting;->y:I

    goto/16 :goto_3

    :cond_9
    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    if-eqz v0, :cond_a

    sget-object v0, Lcom/clov4r/android/nil/Setting;->w:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget v0, Lcom/clov4r/android/nil/Setting;->r:I

    sput v0, Lcom/clov4r/android/nil/Setting;->x:I

    sget v0, Lcom/clov4r/android/nil/Setting;->u:I

    sput v0, Lcom/clov4r/android/nil/Setting;->y:I

    goto/16 :goto_3

    :cond_a
    sput-boolean v3, Lcom/clov4r/android/nil/Setting;->z:Z

    goto/16 :goto_3

    :cond_b
    sput-boolean v4, Lcom/clov4r/android/nil/MainActivity;->t:Z

    goto/16 :goto_4

    :cond_c
    const-string v0, "setting_encode_style"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "setting_encode_style"

    const-string v1, "Auto"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/ec;->c:Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    const-string v0, "volume_keys_setting"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "volume_key_valume"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/ec;->g:Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    const-string v0, "setting_screen_tips"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/ec;->h:Z

    goto/16 :goto_0

    :cond_f
    const-string v0, "background_keys_setting"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object v0, Lcom/clov4r/android/nil/Setting;->C:Landroid/content/SharedPreferences;

    const-string v1, "background_keys_setting"

    const-string v2, "#616C81"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/clov4r/android/nil/ec;->j:I

    goto/16 :goto_0

    :cond_10
    const-string v0, "setting_play_next"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "setting_play_next"

    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/clov4r/android/nil/ec;->r:Z

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    sget v0, Lcom/clov4r/android/nil/Setting;->E:I

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    if-eq v0, v1, :cond_0

    sget v0, Lcom/clov4r/android/nil/ec;->j:I

    sput v0, Lcom/clov4r/android/nil/Setting;->E:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "background_color"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/clov4r/android/nil/Setting;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/Setting;->finish()V

    :cond_0
    return-void
.end method
