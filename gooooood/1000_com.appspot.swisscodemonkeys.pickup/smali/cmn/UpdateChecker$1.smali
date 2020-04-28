.class Lcmn/UpdateChecker$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/UpdateChecker;->showUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/UpdateChecker;

.field private final synthetic val$gotoUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcmn/UpdateChecker;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/UpdateChecker$1;->this$0:Lcmn/UpdateChecker;

    iput-object p2, p0, Lcmn/UpdateChecker$1;->val$gotoUrl:Ljava/lang/String;

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 385
    iget-object v1, p0, Lcmn/UpdateChecker$1;->this$0:Lcmn/UpdateChecker;

    invoke-static {v1}, Lcmn/UpdateChecker;->access$0(Lcmn/UpdateChecker;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcmn/UpdateChecker$1;->val$gotoUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcmn/UpdateChecker;->access$1(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcmn/UpdateChecker$1;->this$0:Lcmn/UpdateChecker;

    invoke-static {v1}, Lcmn/UpdateChecker;->access$0(Lcmn/UpdateChecker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 387
    return-void
.end method
