.class Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->access$0(Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;)Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity;->removeLifeCycleListener(Lcom/appspot/swisscodemonkeys/pickup/crop/MonitoredActivity$LifeCycleListener;)V

    .line 428
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;->access$1(Lcom/appspot/swisscodemonkeys/pickup/crop/Util$BackgroundJob;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 429
    :cond_0
    return-void
.end method
