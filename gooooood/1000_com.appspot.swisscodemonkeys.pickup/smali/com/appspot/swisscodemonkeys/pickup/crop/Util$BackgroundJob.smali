.class Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;
.super Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleAdapter;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/crop/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackgroundJob"
.end annotation


# instance fields
.field private final mActivity:Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;

.field private final mCleanupRunner:Ljava/lang/Runnable;

.field private final mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private final mJob:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;Landroid/os/Handler;)V
    .locals 1
    .param p1, "activity"    # Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;
    .param p2, "job"    # Ljava/lang/Runnable;
    .param p3, "dialog"    # Landroid/app/ProgressDialog;
    .param p4, "handler"    # Landroid/os/Handler;

    .prologue
    .line 432
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleAdapter;-><init>()V

    .line 425
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob$1;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    .line 434
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mActivity:Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;

    .line 435
    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    .line 436
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    .line 437
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mActivity:Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->addLifeCycleListener(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;)V

    .line 438
    iput-object p4, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    .line 439
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;)Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mActivity:Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;)Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method


# virtual methods
.method public onActivityDestroyed(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;)V
    .locals 2
    .param p1, "activity"    # Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 455
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    return-void
.end method

.method public onActivityStarted(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 466
    return-void
.end method

.method public onActivityStopped(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;

    .prologue
    .line 460
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 461
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 443
    :try_start_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mJob:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 447
    return-void

    .line 444
    :catchall_0
    move-exception v0

    .line 445
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->mCleanupRunner:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    throw v0
.end method
