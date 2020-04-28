.class Lcom/tt/yy/loginActivity$1$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/tt/yy/loginActivity$1$1;->this$1:Lcom/tt/yy/loginActivity$1;

    .line 98
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 100
    iget-object v3, p0, Lcom/tt/yy/loginActivity$1$1;->this$1:Lcom/tt/yy/loginActivity$1;

    invoke-static {v3}, Lcom/tt/yy/loginActivity$1;->access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/tt/yy/loginActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 101
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "SID":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 104
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 105
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/tt/yy/loginActivity$1$1;->this$1:Lcom/tt/yy/loginActivity$1;

    invoke-static {v3}, Lcom/tt/yy/loginActivity$1;->access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;

    move-result-object v3

    .line 106
    const-class v4, Lcom/tt/yy/ViewActivity;

    .line 105
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 108
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "SID"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    iget-object v3, p0, Lcom/tt/yy/loginActivity$1$1;->this$1:Lcom/tt/yy/loginActivity$1;

    invoke-static {v3}, Lcom/tt/yy/loginActivity$1;->access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/tt/yy/loginActivity;->startActivity(Landroid/content/Intent;)V

    .line 129
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 116
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/tt/yy/loginActivity$1$1;->this$1:Lcom/tt/yy/loginActivity$1;

    invoke-static {v4}, Lcom/tt/yy/loginActivity$1;->access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 118
    const-string v4, "\u767b\u9646\u5931\u8d25\uff01\u8bf7\u68c0\u67e5\u7528\u6237\u540d\u3001\u5bc6\u7801\u4ee5\u53ca\u7f51\u7edc\u8fde\u63a5\uff01"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 120
    const-string v4, "\u786e\u5b9a"

    .line 121
    new-instance v5, Lcom/tt/yy/loginActivity$1$1$1;

    invoke-direct {v5, p0}, Lcom/tt/yy/loginActivity$1$1$1;-><init>(Lcom/tt/yy/loginActivity$1$1;)V

    .line 119
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 127
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
