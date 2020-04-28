.class Lcom/clearchannel/iheartradio/android/view/IHRViewMain$3;
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$3;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 501
    const/4 v0, 0x1

    return v0
.end method
