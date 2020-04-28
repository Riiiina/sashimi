.class Lcom/tt/yy/loginActivity$1;
.super Ljava/lang/Object;
.source "loginActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tt/yy/loginActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tt/yy/loginActivity;


# direct methods
.method constructor <init>(Lcom/tt/yy/loginActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tt/yy/loginActivity$1;->this$0:Lcom/tt/yy/loginActivity;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/tt/yy/loginActivity$1;)Lcom/tt/yy/loginActivity;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/tt/yy/loginActivity$1;->this$0:Lcom/tt/yy/loginActivity;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v3, p0, Lcom/tt/yy/loginActivity$1;->this$0:Lcom/tt/yy/loginActivity;

    invoke-static {v3}, Lcom/tt/yy/loginActivity;->access$0(Lcom/tt/yy/loginActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/tt/yy/loginActivity$1;->this$0:Lcom/tt/yy/loginActivity;

    invoke-static {v3}, Lcom/tt/yy/loginActivity;->access$1(Lcom/tt/yy/loginActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "pwd":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 93
    iget-object v3, p0, Lcom/tt/yy/loginActivity$1;->this$0:Lcom/tt/yy/loginActivity;

    const-string v4, "user_info"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/tt/yy/loginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 94
    .local v2, "user":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "NAME"

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "PASSWORD"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 95
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 97
    iget-object v3, p0, Lcom/tt/yy/loginActivity$1;->this$0:Lcom/tt/yy/loginActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tt/yy/loginActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 98
    iget-object v3, p0, Lcom/tt/yy/loginActivity$1;->this$0:Lcom/tt/yy/loginActivity;

    new-instance v4, Lcom/tt/yy/loginActivity$1$1;

    invoke-direct {v4, p0}, Lcom/tt/yy/loginActivity$1$1;-><init>(Lcom/tt/yy/loginActivity$1;)V

    iput-object v4, v3, Lcom/tt/yy/loginActivity;->h:Landroid/os/Handler;

    .line 131
    new-instance v3, Lcom/tt/yy/loginActivity$1$2;

    invoke-direct {v3, p0}, Lcom/tt/yy/loginActivity$1$2;-><init>(Lcom/tt/yy/loginActivity$1;)V

    .line 142
    invoke-virtual {v3}, Lcom/tt/yy/loginActivity$1$2;->start()V

    .line 159
    .end local v2    # "user":Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 148
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/tt/yy/loginActivity$1;->this$0:Lcom/tt/yy/loginActivity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 150
    const-string v4, "\u7528\u6237\u540d\u6216\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "\u786e\u5b9a"

    .line 151
    new-instance v5, Lcom/tt/yy/loginActivity$1$3;

    invoke-direct {v5, p0}, Lcom/tt/yy/loginActivity$1$3;-><init>(Lcom/tt/yy/loginActivity$1;)V

    .line 150
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 157
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method
