.class Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$2;
.super Ljava/lang/Object;
.source "IHRSearchPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->dismiss()V

    .line 100
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/iheartradio;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/controller/iheartradio;

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/iheartradio;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "category"

    const-string v3, "search"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "search"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRSearchPopupWindow;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 105
    return-void
.end method
