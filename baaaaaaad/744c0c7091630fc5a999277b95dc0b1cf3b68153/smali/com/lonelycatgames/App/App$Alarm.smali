.class public Lcom/lonelycatgames/App/App$Alarm;
.super Ljava/util/Timer;
.source "App.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Alarm"
.end annotation


# instance fields
.field jni_alm:I

.field final synthetic this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App;IIIIIII)V
    .locals 7

    .prologue
    .line 305
    iput-object p1, p0, Lcom/lonelycatgames/App/App$Alarm;->this$0:Lcom/lonelycatgames/App/App;

    .line 306
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljava/util/Timer;-><init>(Z)V

    .line 307
    iput p2, p0, Lcom/lonelycatgames/App/App$Alarm;->jni_alm:I

    .line 308
    new-instance v0, Ljava/util/Date;

    const/16 v1, 0x76c

    sub-int v1, p3, v1

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 310
    new-instance v1, Lcom/lonelycatgames/App/App$Alarm$1;

    invoke-direct {v1, p0, p1}, Lcom/lonelycatgames/App/App$Alarm$1;-><init>(Lcom/lonelycatgames/App/App$Alarm;Lcom/lonelycatgames/App/App;)V

    .line 313
    invoke-virtual {p0, v1, v0}, Lcom/lonelycatgames/App/App$Alarm;->schedule(Ljava/util/TimerTask;Ljava/util/Date;)V

    .line 314
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/lonelycatgames/App/App$Alarm;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, p0, Lcom/lonelycatgames/App/App$Alarm;->jni_alm:I

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->JniAlarm(I)V

    .line 304
    return-void
.end method
