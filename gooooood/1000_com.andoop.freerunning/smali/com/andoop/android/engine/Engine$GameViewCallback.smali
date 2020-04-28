.class Lcom/andoop/android/engine/Engine$GameViewCallback;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/engine/Engine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GameViewCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/Engine;


# direct methods
.method constructor <init>(Lcom/andoop/android/engine/Engine;)V
    .locals 0

    .prologue
    .line 362
    iput-object p1, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 391
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-virtual {v0, p1, p2}, Lcom/andoop/android/engine/Engine;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 367
    const-string v0, "---> surfaceChanged"

    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    iput p3, v0, Lcom/andoop/android/engine/Engine;->mSurfaceWidth:I

    .line 369
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    iput p4, v0, Lcom/andoop/android/engine/Engine;->mSurfaceHeight:I

    .line 371
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v0, v0, Lcom/andoop/android/engine/Engine;->mCamera:Lcom/andoop/android/engine/Camera;

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/engine/Camera;->surfaceChanged(FF)V

    .line 372
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 376
    const-string v0, "---> surfaceCreated"

    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 377
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-static {v0}, Lcom/andoop/android/engine/Engine;->access$1(Lcom/andoop/android/engine/Engine;)Lcom/andoop/android/engine/Engine$GameThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-static {v0}, Lcom/andoop/android/engine/Engine;->access$1(Lcom/andoop/android/engine/Engine;)Lcom/andoop/android/engine/Engine$GameThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/Engine$GameThread;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 380
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 384
    const-string v0, "---> surfaceDestroyed"

    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-static {v0}, Lcom/andoop/android/engine/Engine;->access$1(Lcom/andoop/android/engine/Engine;)Lcom/andoop/android/engine/Engine$GameThread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$GameViewCallback;->this$0:Lcom/andoop/android/engine/Engine;

    invoke-static {v0}, Lcom/andoop/android/engine/Engine;->access$1(Lcom/andoop/android/engine/Engine;)Lcom/andoop/android/engine/Engine$GameThread;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/Engine$GameThread;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 388
    :cond_0
    return-void
.end method
