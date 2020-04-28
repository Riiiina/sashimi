.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$3;
.super Ljava/lang/Object;
.source "IHRControllerSSOMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    .line 100
    .local v0, "act":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "http://www.iheartradio.com/cc-common/tou.html#tou"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    return-void
.end method
