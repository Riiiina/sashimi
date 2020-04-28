.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$11;
.super Ljava/lang/Object;
.source "IHRControllerSSODemo.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildLoginPartnerDialog(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

.field private final synthetic val$mEditFbuserid:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$11;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$11;->val$mEditFbuserid:Landroid/widget/EditText;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 139
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$11;->val$mEditFbuserid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "fbuserid":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$11;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->access$3(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;I)V

    goto :goto_0
.end method
