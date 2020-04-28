.class Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;
.super Ljava/lang/Object;
.source "IHRViewMain.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setEventLayerVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 486
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 487
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->dismissEventLayerOnClick:Z

    .line 488
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->eventLayer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 492
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-static {v0, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;Landroid/widget/PopupWindow;)V

    .line 493
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->visibleController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->setPopup(Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;)V

    .line 494
    const/4 v0, 0x1

    return v0
.end method
