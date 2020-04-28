.class public abstract Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;
.super Landroid/app/AlertDialog;
.source "IHRController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "IHRAlert"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRController;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 1

    .prologue
    .line 244
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;Landroid/content/Context;)V
    .locals 1
    .param p2, "inContext"    # Landroid/content/Context;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "inMessage"    # Ljava/lang/String;
    .param p3, "inButton1"    # Ljava/lang/String;
    .param p4, "inButton2"    # Ljava/lang/String;
    .param p5, "inButton3"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->prepare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->show()V

    return-void
.end method


# virtual methods
.method public cease()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->setResult(I)V

    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "inDialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->cease()V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->onClick(I)V

    return-void
.end method

.method public abstract onClick(I)V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "inDialog"    # Landroid/content/DialogInterface;
    .param p2, "inButton"    # I

    .prologue
    .line 248
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->onClick(I)V

    return-void
.end method

.method public prepare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "inMessage"    # Ljava/lang/CharSequence;
    .param p2, "inButton1"    # Ljava/lang/CharSequence;
    .param p3, "inButton2"    # Ljava/lang/CharSequence;
    .param p4, "inButton3"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 253
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    if-eqz p2, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 256
    :cond_0
    if-eqz p3, :cond_1

    const/4 v0, -0x2

    invoke-virtual {p0, v0, p3, p0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 257
    :cond_1
    if-eqz p4, :cond_2

    const/4 v0, -0x3

    invoke-virtual {p0, v0, p4, p0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 259
    :cond_2
    invoke-virtual {p0, p0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 260
    if-nez p4, :cond_3

    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->setCancelable(Z)V

    .line 261
    if-nez p4, :cond_4

    if-nez p2, :cond_4

    move v0, v2

    :goto_1
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->setCanceledOnTouchOutside(Z)V

    .line 262
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->this$0:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;->setOwnerActivity(Landroid/app/Activity;)V

    .line 263
    return-void

    :cond_3
    move v0, v1

    .line 260
    goto :goto_0

    :cond_4
    move v0, v1

    .line 261
    goto :goto_1
.end method
