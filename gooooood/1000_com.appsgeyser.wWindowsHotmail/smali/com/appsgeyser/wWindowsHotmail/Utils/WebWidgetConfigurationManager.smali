.class public Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;
.super Ljava/lang/Object;
.source "WebWidgetConfigurationManager.java"


# static fields
.field private static instance:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;


# instance fields
.field private config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

.field private parser:Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;

    invoke-direct {v0, p1}, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->parser:Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;

    .line 28
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->instance:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;

    invoke-direct {v0, p0}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->instance:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;

    .line 19
    :cond_0
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->instance:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->instance:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;

    .line 24
    return-void
.end method

.method public loadConfiguration()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->parser:Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;->parse()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    .line 37
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigurationManager;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    return-object v0
.end method
