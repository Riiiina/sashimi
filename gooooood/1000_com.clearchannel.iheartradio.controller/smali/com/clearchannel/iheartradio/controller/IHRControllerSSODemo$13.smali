.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$13;
.super Ljava/lang/Object;
.source "IHRControllerSSODemo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildForgootPasswordDialog(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

.field private final synthetic val$mEditEmail:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$13;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$13;->val$mEditEmail:Landroid/widget/EditText;

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 172
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$13;->val$mEditEmail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    .local v0, "email":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 177
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$13;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    invoke-static {v1, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->access$4(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Ljava/lang/String;)V

    goto :goto_0
.end method
