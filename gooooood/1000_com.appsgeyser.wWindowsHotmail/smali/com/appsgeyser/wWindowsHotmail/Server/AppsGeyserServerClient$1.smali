.class Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$1;
.super Landroid/os/Handler;
.source "AppsGeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;


# direct methods
.method constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->AFTERINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 109
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v2}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$000(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "file":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    .line 113
    .local v1, "printWriter":Ljava/io/PrintWriter;
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$1;->this$0:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;

    invoke-static {v2}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;->access$100(Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "printWriter":Ljava/io/PrintWriter;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 128
    return-void

    .line 117
    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 118
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->LOCATION:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 119
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->UNINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 120
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->REGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 121
    iget v2, p1, Landroid/os/Message;->what:I

    sget-object v3, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->UNREGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v3}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->ordinal()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 122
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 115
    .restart local v0    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
