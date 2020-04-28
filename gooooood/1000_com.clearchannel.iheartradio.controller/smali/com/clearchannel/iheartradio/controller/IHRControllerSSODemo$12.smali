.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$12;
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


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$12;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 152
    return-void
.end method
