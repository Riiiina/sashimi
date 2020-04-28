.class Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;
.super Ljava/lang/Object;
.source "IHRServiceConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    .line 1509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1512
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$0(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$1(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1513
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$2(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    packed-switch v0, :pswitch_data_0

    .line 1526
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$2(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1527
    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$4(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;I)V

    .line 1528
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$0(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$1(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1529
    return-void

    .line 1515
    :pswitch_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$3(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 1518
    :pswitch_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$3(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 1521
    :pswitch_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$3(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " .."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 1524
    :pswitch_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration$1;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->access$3(Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " ..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/services/IHRServiceConfiguration;->updateStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1513
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
