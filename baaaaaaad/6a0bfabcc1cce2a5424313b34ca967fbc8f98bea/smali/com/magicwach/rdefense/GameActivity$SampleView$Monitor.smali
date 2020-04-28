.class public Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;
.super Ljava/lang/Object;
.source "GameActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/GameActivity$SampleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Monitor"
.end annotation


# instance fields
.field running:Z

.field final synthetic this$0:Lcom/magicwach/rdefense/GameActivity$SampleView;


# direct methods
.method protected constructor <init>(Lcom/magicwach/rdefense/GameActivity$SampleView;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->this$0:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    .line 294
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->running:Z

    .line 295
    :goto_0
    iget-boolean v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->running:Z

    if-eqz v2, :cond_2

    .line 297
    const-wide/16 v2, 0x21

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_1
    const/16 v1, 0x1e

    .line 303
    .local v1, "local_delta":I
    :try_start_1
    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->this$0:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-static {v2}, Lcom/magicwach/rdefense/GameActivity$SampleView;->access$000(Lcom/magicwach/rdefense/GameActivity$SampleView;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 304
    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->this$0:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-static {v2}, Lcom/magicwach/rdefense/GameActivity$SampleView;->access$100(Lcom/magicwach/rdefense/GameActivity$SampleView;)I

    move-result v1

    .line 305
    if-ge v1, v4, :cond_0

    .line 306
    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->this$0:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-static {v2}, Lcom/magicwach/rdefense/GameActivity$SampleView;->access$104(Lcom/magicwach/rdefense/GameActivity$SampleView;)I

    .line 308
    :cond_0
    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->this$0:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-static {v2}, Lcom/magicwach/rdefense/GameActivity$SampleView;->access$000(Lcom/magicwach/rdefense/GameActivity$SampleView;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 312
    :goto_2
    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->this$0:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v2}, Lcom/magicwach/rdefense/GameActivity$SampleView;->postInvalidate()V

    .line 313
    if-ge v1, v4, :cond_1

    .line 314
    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->this$0:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-static {v2}, Lcom/magicwach/rdefense/GameActivity$SampleView;->access$200(Lcom/magicwach/rdefense/GameActivity$SampleView;)Ljava/util/concurrent/Semaphore;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0

    .line 298
    .end local v1    # "local_delta":I
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 309
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v1    # "local_delta":I
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 310
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 317
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_1
    const-wide/16 v2, 0x42

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 318
    :catch_2
    move-exception v0

    .line 319
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v1    # "local_delta":I
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_2
    return-void
.end method

.method public stopUpdating()V
    .locals 1

    .prologue
    .line 291
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/magicwach/rdefense/GameActivity$SampleView$Monitor;->running:Z

    .line 292
    return-void
.end method
