.class public Lcmn/BrowserDetect;
.super Ljava/lang/Object;
.source "BrowserDetect.java"


# static fields
.field protected static volatile agent:Ljava/lang/String;

.field protected static detect:Lcmn/BrowserDetect;


# instance fields
.field protected context:Landroid/content/Context;

.field protected handler:Landroid/os/Handler;

.field protected volatile haveWaited:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    sput-object v0, Lcmn/BrowserDetect;->agent:Ljava/lang/String;

    .line 16
    sput-object v0, Lcmn/BrowserDetect;->detect:Lcmn/BrowserDetect;

    .line 14
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcmn/BrowserDetect;->haveWaited:Z

    .line 22
    if-eqz p1, :cond_0

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcmn/BrowserDetect;->handler:Landroid/os/Handler;

    .line 24
    iput-object p1, p0, Lcmn/BrowserDetect;->context:Landroid/content/Context;

    .line 26
    :cond_0
    return-void
.end method

.method public static getDetector(Landroid/content/Context;)Lcmn/BrowserDetect;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 36
    sget-object v0, Lcmn/BrowserDetect;->detect:Lcmn/BrowserDetect;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcmn/BrowserDetect;

    invoke-direct {v0, p0}, Lcmn/BrowserDetect;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcmn/BrowserDetect;->detect:Lcmn/BrowserDetect;

    .line 38
    sget-object v0, Lcmn/BrowserDetect;->detect:Lcmn/BrowserDetect;

    invoke-direct {v0}, Lcmn/BrowserDetect;->requestAgentFetch()V

    .line 40
    :cond_0
    sget-object v0, Lcmn/BrowserDetect;->detect:Lcmn/BrowserDetect;

    return-object v0
.end method

.method public static getFakeDetector()Lcmn/BrowserDetect;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcmn/BrowserDetect;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcmn/BrowserDetect;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "detect":Lcmn/BrowserDetect;
    const-string v1, ""

    sput-object v1, Lcmn/BrowserDetect;->agent:Ljava/lang/String;

    .line 31
    return-object v0
.end method

.method private requestAgentFetch()V
    .locals 2

    .prologue
    .line 44
    sget-object v1, Lcmn/BrowserDetect;->agent:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 45
    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcmn/BrowserDetect;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 46
    .local v0, "wv":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcmn/BrowserDetect;->agent:Ljava/lang/String;

    .line 48
    .end local v0    # "wv":Landroid/webkit/WebView;
    :cond_0
    return-void
.end method


# virtual methods
.method public getAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcmn/BrowserDetect;->agent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 52
    const-string v0, ""

    .line 54
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcmn/BrowserDetect;->agent:Ljava/lang/String;

    goto :goto_0
.end method

.method public replaceAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "agent_"    # Ljava/lang/String;

    .prologue
    .line 58
    sput-object p1, Lcmn/BrowserDetect;->agent:Ljava/lang/String;

    .line 59
    return-void
.end method
