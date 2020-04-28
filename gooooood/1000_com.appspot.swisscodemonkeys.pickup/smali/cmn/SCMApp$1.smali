.class Lcmn/SCMApp$1;
.super Ljava/lang/Object;
.source "SCMApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/SCMApp;->showMarketDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/SCMApp;


# direct methods
.method constructor <init>(Lcmn/SCMApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/SCMApp$1;->this$0:Lcmn/SCMApp;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://market.android.com/search?q=pname:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget-object v2, p0, Lcmn/SCMApp$1;->this$0:Lcmn/SCMApp;

    invoke-virtual {v2}, Lcmn/SCMApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcmn/SCMApp$1;->this$0:Lcmn/SCMApp;

    invoke-virtual {v1, v0}, Lcmn/SCMApp;->startActivity(Landroid/content/Intent;)V

    .line 96
    iget-object v1, p0, Lcmn/SCMApp$1;->this$0:Lcmn/SCMApp;

    invoke-virtual {v1}, Lcmn/SCMApp;->finish()V

    .line 97
    return-void
.end method
