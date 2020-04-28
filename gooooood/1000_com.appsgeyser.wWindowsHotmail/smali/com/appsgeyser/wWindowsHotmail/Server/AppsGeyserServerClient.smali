.class public Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;
.super Ljava/lang/Object;
.source "AppsGeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;
    }
.end annotation


# static fields
.field private static final FILE_NAME:Ljava/lang/String; = "init.txt"

.field private static final FORBIDDEN_RESPONSE:I = 0x193

.field private static final OK_RESPONSE:I = 0xc8

.field public static final SENDER_ID:Ljava/lang/String; = "softotest@gmail.com"

.field private static instance:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;


# instance fields
.field private _activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

.field _strResponse:Ljava/lang/String;

.field private config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

.field private connectionTimeout:I

.field private handler:Landroid/os/Handler;

.field private httpParameters:Lorg/apache/http/params/HttpParams;

.field private isFirstStart:Z

.field private mAppMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

.field private registerFile:Ljava/lang/String;

.field private socketTimeout:I

.field private strGUID:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V
    .locals 6
    .param p1, "activity"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .prologue
    const/16 v2, 0x7530

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->connectionTimeout:I

    .line 45
    iput v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->socketTimeout:I

    .line 46
    const-string v2, ""

    iput-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->registerFile:Ljava/lang/String;

    .line 47
    iput-boolean v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->isFirstStart:Z

    .line 48
    const-string v2, ""

    iput-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    .line 49
    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->mAppMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .line 102
    new-instance v2, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$1;

    invoke-direct {v2, p0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$1;-><init>(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)V

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->handler:Landroid/os/Handler;

    .line 72
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .line 73
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getConfig()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    .line 75
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->httpParameters:Lorg/apache/http/params/HttpParams;

    .line 76
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->httpParameters:Lorg/apache/http/params/HttpParams;

    iget v3, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->connectionTimeout:I

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 77
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->httpParameters:Lorg/apache/http/params/HttpParams;

    iget v3, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->socketTimeout:I

    invoke-static {v2, v3}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "init.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->registerFile:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->registerFile:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    :cond_0
    iput-boolean v5, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->isFirstStart:Z

    .line 94
    :goto_0
    iget-boolean v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->isFirstStart:Z

    if-eqz v2, :cond_1

    .line 96
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    .line 97
    .local v1, "uuid":Ljava/util/UUID;
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    .line 100
    .end local v1    # "uuid":Ljava/util/UUID;
    :cond_1
    return-void

    .line 87
    :cond_2
    invoke-direct {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->getStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    .line 88
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 89
    iput-boolean v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->isFirstStart:Z

    goto :goto_0

    .line 91
    :cond_3
    iput-boolean v5, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->isFirstStart:Z

    goto :goto_0
.end method

.method private SendRequestAsync(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V
    .locals 1
    .param p1, "requestURL"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    .prologue
    .line 133
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;-><init>(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V

    .line 179
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 180
    return-void
.end method

.method private SendSyncRequest(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V
    .locals 5
    .param p1, "requestURL"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    .prologue
    .line 185
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->httpParameters:Lorg/apache/http/params/HttpParams;

    invoke-direct {v0, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 187
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 188
    .local v1, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v3, "Cache-Control"

    const-string v4, "no-cache,no-store"

    invoke-virtual {v1, v3, v4}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v3, ""

    iput-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->_strResponse:Ljava/lang/String;

    .line 191
    new-instance v2, Lorg/apache/http/impl/client/BasicResponseHandler;

    invoke-direct {v2}, Lorg/apache/http/impl/client/BasicResponseHandler;-><init>()V

    .line 192
    .local v2, "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    invoke-interface {v0, v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->_strResponse:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v1    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v2    # "responseHandler":Lorg/apache/http/client/ResponseHandler;, "Lorg/apache/http/client/ResponseHandler<Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->registerFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lorg/apache/http/params/HttpParams;
    .locals 1
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->httpParameters:Lorg/apache/http/params/HttpParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;
    .locals 1
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->mAppMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method

.method static synthetic access$302(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;
    .locals 0
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;
    .param p1, "x1"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->mAppMode:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    return-object p1
.end method

.method static synthetic access$400(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    .locals 1
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getInstance(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;
    .locals 1
    .param p0, "activity"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .prologue
    .line 61
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->instance:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-direct {v0, p0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;-><init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->instance:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .line 64
    :cond_0
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->instance:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    return-object v0
.end method

.method private getStringFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "aFile"    # Ljava/io/File;

    .prologue
    .line 286
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 288
    .local v0, "contents":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .local v2, "input":Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 291
    .local v3, "line":Ljava/lang/String;
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 296
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 302
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 296
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 299
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 300
    .local v1, "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public GetApplicationMode()V
    .locals 4

    .prologue
    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?wid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "requestURL":Ljava/lang/String;
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->APPMODE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-direct {p0, v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRequestAsync(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V

    .line 273
    return-void
.end method

.method public GetBunnerUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    const-string v0, ""

    .line 277
    .local v0, "strUrl":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?widgetid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getApplicationId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&guid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 282
    return-object v0
.end method

.method public SendAfterInstallInfo()V
    .locals 3

    .prologue
    .line 200
    iget-boolean v1, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->isFirstStart:Z

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getRegisteredUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?action=install&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&system=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, "requestURL":Ljava/lang/String;
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->AFTERINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-direct {p0, v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRequestAsync(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V

    .line 208
    .end local v0    # "requestURL":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public SendLocationInfo(Landroid/location/LocationManager;)V
    .locals 8
    .param p1, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 237
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 238
    .local v0, "criteria":Landroid/location/Criteria;
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 240
    invoke-virtual {v0, v7}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 241
    invoke-virtual {v0, v7}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 242
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 243
    invoke-virtual {v0, v6}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 244
    invoke-virtual {p1, v0, v6}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v4

    .line 246
    .local v4, "provider":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    .line 248
    .local v3, "location":Landroid/location/Location;
    const/4 v1, 0x0

    .line 249
    .local v1, "lat":Ljava/lang/Double;
    const/4 v2, 0x0

    .line 250
    .local v2, "lng":Ljava/lang/Double;
    if-eqz v3, :cond_0

    .line 251
    invoke-virtual {v3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 252
    invoke-virtual {v3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 256
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v7}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getLocationUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v7}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getApplicationId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&lt="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&lg="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 260
    .local v5, "requestURL":Ljava/lang/String;
    sget-object v6, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->LOCATION:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-direct {p0, v5, v6}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRequestAsync(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V

    .line 263
    .end local v5    # "requestURL":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public SendRegisteredId(Ljava/lang/String;)V
    .locals 4
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "add_register_id.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&guid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "requestURL":Ljava/lang/String;
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->REGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-direct {p0, v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRequestAsync(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V

    .line 225
    return-void
.end method

.method public SendUninstallInfo()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public SendUnregisteredId(Ljava/lang/String;)V
    .locals 4
    .param p1, "regId"    # Ljava/lang/String;

    .prologue
    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "remove_register_id.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&guid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&regId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "requestURL":Ljava/lang/String;
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->UNREGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-direct {p0, v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRequestAsync(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V

    .line 233
    return-void
.end method

.method public SendUsageInfo()V
    .locals 3

    .prologue
    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getAddUsageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?action=usage&name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->config:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getApplicationId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->strGUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&system=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "requestURL":Ljava/lang/String;
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-direct {p0, v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRequestAsync(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V

    .line 216
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->instance:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    .line 69
    return-void
.end method

.method public getAvailabilityStatus(Ljava/lang/String;)Z
    .locals 7
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v3, 0x1

    .line 308
    .local v3, "resp":Z
    const/4 v5, 0x0

    :try_start_0
    invoke-static {v5}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 311
    new-instance v4, Ljava/net/URL;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&test=1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 312
    .local v4, "testURL":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 314
    .local v0, "con":Ljava/net/HttpURLConnection;
    const-string v5, "HEAD"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 315
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 316
    .local v2, "iResp":I
    const/16 v5, 0x194

    if-ne v2, v5, :cond_0

    .line 317
    const/4 v3, 0x0

    .line 326
    .end local v0    # "con":Ljava/net/HttpURLConnection;
    .end local v2    # "iResp":I
    .end local v4    # "testURL":Ljava/net/URL;
    :cond_0
    :goto_0
    return v3

    .line 323
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 324
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method
