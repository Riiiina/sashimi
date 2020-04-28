.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$4;
.super Ljava/lang/Object;
.source "IHRControllerSSOSignUp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->prepareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 119
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->access$3(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 121
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$4;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->signup()V

    .line 122
    return-void
.end method
