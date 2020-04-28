.class Lcmn/NotificationBar$1;
.super Ljava/lang/Object;
.source "NotificationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/NotificationBar;->setContentViewWithNotification(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/NotificationBar;


# direct methods
.method constructor <init>(Lcmn/NotificationBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/NotificationBar$1;->this$0:Lcmn/NotificationBar;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v1, p0, Lcmn/NotificationBar$1;->this$0:Lcmn/NotificationBar;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcmn/NotificationBar;->access$0(Lcmn/NotificationBar;Z)V

    .line 68
    iget-object v1, p0, Lcmn/NotificationBar$1;->this$0:Lcmn/NotificationBar;

    invoke-static {v1}, Lcmn/NotificationBar;->access$1(Lcmn/NotificationBar;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcmn/NotificationBar$1;->this$0:Lcmn/NotificationBar;

    invoke-static {v1}, Lcmn/NotificationBar;->access$1(Lcmn/NotificationBar;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "className":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcmn/NotificationBar$1;->this$0:Lcmn/NotificationBar;

    invoke-static {v1}, Lcmn/NotificationBar;->access$2(Lcmn/NotificationBar;)Lcmn/SCMApp;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcmn/NotificationBar$1;->this$0:Lcmn/NotificationBar;

    invoke-static {v3}, Lcmn/NotificationBar;->access$2(Lcmn/NotificationBar;)Lcmn/SCMApp;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcmn/SCMApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "className":Ljava/lang/String;
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v1, p0, Lcmn/NotificationBar$1;->this$0:Lcmn/NotificationBar;

    invoke-static {v1}, Lcmn/NotificationBar;->access$2(Lcmn/NotificationBar;)Lcmn/SCMApp;

    move-result-object v1

    iget-object v2, p0, Lcmn/NotificationBar$1;->this$0:Lcmn/NotificationBar;

    invoke-static {v2}, Lcmn/NotificationBar;->access$1(Lcmn/NotificationBar;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcmn/SCMApp;->showAboutDialog(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .restart local v0    # "className":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
