.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "email":Ljava/lang/String;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 45
    .local v2, "password":Ljava/lang/String;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 48
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;

    invoke-virtual {v3, v0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOLogin;->signin(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
