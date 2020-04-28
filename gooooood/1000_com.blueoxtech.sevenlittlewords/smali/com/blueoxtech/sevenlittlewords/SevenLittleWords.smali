.class public Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;
.super Landroid/app/Application;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# instance fields
.field public c:Z

.field public d:Landroid/content/res/AssetManager;

.field public e:Landroid/content/SharedPreferences;

.field public f:Landroid/content/SharedPreferences$Editor;

.field public g:Z

.field public h:Lcom/blueoxtech/sevenlittlewords/p;

.field public i:Landroid/os/Handler;

.field public j:[Ljava/lang/String;

.field public k:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "&radic;"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a:Ljava/lang/String;

    const-string v0, "&#8230;"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->c:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->k:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SLW"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->d:Landroid/content/res/AssetManager;

    const-string v0, "PREFS"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->f:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->j:[Ljava/lang/String;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const-string v1, "soundOn"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->g:Z

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/p;

    invoke-direct {v0, p0}, Lcom/blueoxtech/sevenlittlewords/p;-><init>(Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;)V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->h:Lcom/blueoxtech/sevenlittlewords/p;

    return-void
.end method
