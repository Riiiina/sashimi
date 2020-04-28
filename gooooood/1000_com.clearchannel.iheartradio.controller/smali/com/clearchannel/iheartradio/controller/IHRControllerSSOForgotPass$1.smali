.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass$1;
.super Ljava/lang/Object;
.source "IHRControllerSSOForgotPass.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->prepareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 37
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "email":Ljava/lang/String;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 40
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 42
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;

    invoke-virtual {v2, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOForgotPass;->forgotPassword(Ljava/lang/String;)V

    .line 43
    return-void
.end method
