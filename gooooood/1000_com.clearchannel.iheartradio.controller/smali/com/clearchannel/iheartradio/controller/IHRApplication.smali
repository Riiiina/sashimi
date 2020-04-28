.class public Lcom/clearchannel/iheartradio/controller/IHRApplication;
.super Landroid/app/Application;
.source "IHRApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "149416568430371"

.field public static BUILD_ID:Ljava/lang/String;

.field public static DEVICE:Ljava/lang/String;

.field private static FB_SESSION_FILE:Ljava/lang/String;

.field private static IHR_SESSION_FILE:Ljava/lang/String;

.field public static MODEL:Ljava/lang/String;

.field public static OS_VERSION:Ljava/lang/String;

.field private static final PERMISSIONS:[Ljava/lang/String;

.field public static PRODUCT:Ljava/lang/String;

.field private static TYPE_SESSION_FILE:Ljava/lang/String;

.field public static session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const-string v0, "fbsession.ser"

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->FB_SESSION_FILE:Ljava/lang/String;

    .line 25
    const-string v0, "ihrsession.ser"

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->IHR_SESSION_FILE:Ljava/lang/String;

    .line 26
    const-string v0, "typesession.ser"

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->TYPE_SESSION_FILE:Ljava/lang/String;

    .line 30
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->OS_VERSION:Ljava/lang/String;

    .line 33
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->BUILD_ID:Ljava/lang/String;

    .line 36
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->MODEL:Ljava/lang/String;

    .line 39
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->PRODUCT:Ljava/lang/String;

    .line 42
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->DEVICE:Ljava/lang/String;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "publish_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "read_stream"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "offline_access"

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->PERMISSIONS:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->IHR_SESSION_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->FB_SESSION_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->TYPE_SESSION_FILE:Ljava/lang/String;

    return-object v0
.end method

.method public static logout(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->clear(Landroid/content/Context;)V

    .line 275
    return-void
.end method


# virtual methods
.method public deleteSessionFile()V
    .locals 2

    .prologue
    .line 222
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRApplication$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRApplication$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 233
    return-void
.end method

.method public loadSession()V
    .locals 4

    .prologue
    .line 181
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;-><init>(Lcom/clearchannel/iheartradio/controller/IHRApplication;)V

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    .line 183
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRApplication$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRApplication$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 215
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->isSessionValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    new-instance v1, Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    const-string v2, "149416568430371"

    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->PERMISSIONS:[Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setFacebook(Lcom/clearchannel/iheartradio/model/facebook/Facebook;)V

    .line 219
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 53
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 56
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->loadSession()V

    .line 59
    :cond_0
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 64
    return-void
.end method

.method public saveSession()V
    .locals 2

    .prologue
    .line 237
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRApplication$3;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRApplication$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 261
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 262
    return-void
.end method
