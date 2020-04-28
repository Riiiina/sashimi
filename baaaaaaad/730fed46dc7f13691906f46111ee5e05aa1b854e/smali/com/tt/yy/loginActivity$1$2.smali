.class Lcom/tt/yy/loginActivity$1$2;
.super Ljava/lang/Thread;
.source "loginActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tt/yy/loginActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tt/yy/loginActivity$1;


# direct methods
.method constructor <init>(Lcom/tt/yy/loginActivity$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tt/yy/loginActivity$1$2;->this$1:Lcom/tt/yy/loginActivity$1;

    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-string v9, ""

    .line 133
    iget-object v5, p0, Lcom/tt/yy/loginActivity$1$2;->this$1:Lcom/tt/yy/loginActivity$1;

    invoke-static {v5}, Lcom/tt/yy/loginActivity$1;->access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;

    move-result-object v5

    const-string v6, "user_info"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/tt/yy/loginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 134
    .local v4, "user":Landroid/content/SharedPreferences;
    const-string v5, "NAME"

    const-string v6, ""

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "name":Ljava/lang/String;
    const-string v5, "PASSWORD"

    const-string v6, ""

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 137
    .local v3, "pwd":Ljava/lang/String;
    iget-object v5, p0, Lcom/tt/yy/loginActivity$1$2;->this$1:Lcom/tt/yy/loginActivity$1;

    invoke-static {v5}, Lcom/tt/yy/loginActivity$1;->access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;

    move-result-object v5

    invoke-static {v5, v2, v3}, Lcom/tt/yy/loginActivity;->access$2(Lcom/tt/yy/loginActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "SID":Ljava/lang/String;
    iget-object v5, p0, Lcom/tt/yy/loginActivity$1$2;->this$1:Lcom/tt/yy/loginActivity$1;

    invoke-static {v5}, Lcom/tt/yy/loginActivity$1;->access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/tt/yy/loginActivity;->h:Landroid/os/Handler;

    invoke-virtual {v5, v8, v8, v8, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 140
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, p0, Lcom/tt/yy/loginActivity$1$2;->this$1:Lcom/tt/yy/loginActivity$1;

    invoke-static {v5}, Lcom/tt/yy/loginActivity$1;->access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;

    move-result-object v5

    iget-object v5, v5, Lcom/tt/yy/loginActivity;->h:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 141
    return-void
.end method
