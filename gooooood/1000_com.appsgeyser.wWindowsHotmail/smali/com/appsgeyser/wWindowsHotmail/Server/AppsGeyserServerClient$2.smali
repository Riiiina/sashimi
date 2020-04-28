.class Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;
.super Ljava/lang/Thread;
.source "AppsGeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->SendRequestAsync(Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

.field final synthetic val$requestURL:Ljava/lang/String;

.field final synthetic val$type:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->val$requestURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->val$type:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v7, 0x193

    const/16 v6, 0xc8

    .line 136
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$200(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lorg/apache/http/params/HttpParams;

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 138
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->val$requestURL:Ljava/lang/String;

    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 139
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    const-string v4, "Cache-Control"

    const-string v5, "no-cache,no-store"

    invoke-virtual {v2, v4, v5}, Lorg/apache/http/client/methods/HttpGet;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 142
    .local v3, "response":Lorg/apache/http/HttpResponse;
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->val$type:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->APPMODE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 143
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 144
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    sget-object v5, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-static {v4, v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$302(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .line 148
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$400(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v4

    new-instance v5, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$1;

    invoke-direct {v5, p0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$1;-><init>(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;)V

    invoke-virtual {v4, v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 154
    :cond_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 157
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$500(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->val$type:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :goto_1
    return-void

    .line 145
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_2
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 146
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    sget-object v5, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-static {v4, v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$302(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    .end local v0    # "client":Lorg/apache/http/client/HttpClient;
    .end local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$500(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v2    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_3
    :try_start_1
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    if-ne v4, v7, :cond_4

    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->val$type:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 161
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$400(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v4

    new-instance v5, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$2;

    invoke-direct {v5, p0}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2$2;-><init>(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;)V

    invoke-virtual {v4, v5}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 166
    :cond_4
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->val$type:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v4

    sget-object v5, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->REGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v5

    if-ne v4, v5, :cond_5

    .line 167
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$400(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/c2dm/C2DMessaging;->clearRegistrationId(Landroid/content/Context;)V

    goto :goto_1

    .line 169
    :cond_5
    iget-object v4, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$2;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$500(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
