.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$3;
.super Ljava/lang/Object;
.source "IHRControllerSSOLogin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->prepareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 63
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 65
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->forgotPassword(Ljava/lang/String;)V

    .line 67
    return-void
.end method
