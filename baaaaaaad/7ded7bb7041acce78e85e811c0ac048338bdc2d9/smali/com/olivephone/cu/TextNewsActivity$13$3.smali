.class Lcom/olivephone/cu/TextNewsActivity$13$3;
.super Ljava/lang/Object;
.source "TextNewsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/TextNewsActivity$13;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/olivephone/cu/TextNewsActivity$13;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/TextNewsActivity$13;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/TextNewsActivity$13$3;->this$1:Lcom/olivephone/cu/TextNewsActivity$13;

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 867
    iget-object v0, p0, Lcom/olivephone/cu/TextNewsActivity$13$3;->this$1:Lcom/olivephone/cu/TextNewsActivity$13;

    invoke-static {v0}, Lcom/olivephone/cu/TextNewsActivity$13;->access$0(Lcom/olivephone/cu/TextNewsActivity$13;)Lcom/olivephone/cu/TextNewsActivity;

    move-result-object v0

    iget-object v0, v0, Lcom/olivephone/cu/TextNewsActivity;->detector:Landroid/view/GestureDetector;

    .line 868
    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 867
    return v0
.end method
