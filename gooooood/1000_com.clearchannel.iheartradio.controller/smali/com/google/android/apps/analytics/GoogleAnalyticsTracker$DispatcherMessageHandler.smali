.class Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherMessageHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatcherMessageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherMessageHandler;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0xd04e17

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherMessageHandler;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    invoke-virtual {v0}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->dispatchFinished()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x5e4717

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker$DispatcherMessageHandler;->this$0:Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/analytics/GoogleAnalyticsTracker;->eventDispatched(J)V

    goto :goto_0
.end method
