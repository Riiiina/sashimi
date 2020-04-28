.class public Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;
.super Ljava/lang/Object;
.source "XMLConfigurationParser.java"


# static fields
.field private static final EXCEPTION_MESSAGE:Ljava/lang/String; = "Wrong format of configuration.xml file"

.field private static final RESOURCE_ID:I = 0x7f040000


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;->context:Landroid/content/Context;

    .line 29
    return-void
.end method

.method private getConfigurationStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    :try_start_0
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 50
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Couldn\'t found configuration file"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public parse()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 32
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 35
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    :try_start_0
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getWidgetsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    move-result-object v4

    invoke-interface {v4}, Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;->removeAll()V

    .line 36
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 37
    .local v3, "parser":Ljavax/xml/parsers/SAXParser;
    new-instance v2, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;

    invoke-direct {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;-><init>()V

    .line 38
    .local v2, "handler":Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;
    invoke-direct {p0}, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationParser;->getConfigurationStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 39
    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->getWebWidgetConfigutation()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 41
    .end local v2    # "handler":Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;
    .end local v3    # "parser":Ljavax/xml/parsers/SAXParser;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 42
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Wrong format of configuration.xml file"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
.end method
