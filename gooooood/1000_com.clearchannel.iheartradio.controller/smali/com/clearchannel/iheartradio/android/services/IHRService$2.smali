.class Lcom/clearchannel/iheartradio/android/services/IHRService$2;
.super Landroid/content/BroadcastReceiver;
.source "IHRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/services/IHRService;->doCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    .line 392
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "i"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 396
    const-string v5, "CONNECTIVITY EVENT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "action":Ljava/lang/String;
    const-string v3, ""

    .line 400
    .local v3, "netStatus":Ljava/lang/String;
    const-string v5, "noConnectivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 401
    const-string v3, "offline"

    .line 485
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-virtual {v5, v3}, Lcom/clearchannel/iheartradio/android/services/IHRService;->updateNetworkStatus(Ljava/lang/String;)V

    .line 486
    return-void

    .line 402
    :cond_1
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 405
    const-string v5, "networkInfo"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 406
    .local v1, "info":Landroid/net/NetworkInfo;
    const-string v5, "NetworkEvent"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "info="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v4

    .line 409
    .local v4, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRStation;->isStream()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 422
    .local v2, "message":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MOBILE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 423
    const-string v3, "data"

    .line 428
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_3

    .line 429
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_9

    .line 430
    const-string v3, "offline"

    .line 439
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$0(Lcom/clearchannel/iheartradio/android/services/IHRService;)Ljava/lang/String;

    move-result-object v5

    if-eq v5, v3, :cond_0

    const-string v5, ""

    if-eq v3, v5, :cond_0

    .line 441
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v5, v3}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$1(Lcom/clearchannel/iheartradio/android/services/IHRService;Ljava/lang/String;)V

    .line 444
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$2(Lcom/clearchannel/iheartradio/android/services/IHRService;)Z

    move-result v5

    if-eqz v5, :cond_a

    move v5, v8

    :goto_3
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_b

    move v6, v8

    :goto_4
    and-int/2addr v5, v6

    if-eqz v5, :cond_4

    .line 445
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStatus()Ljava/lang/String;

    move-result-object v5

    const-string v6, "stopped"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 446
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v5, v8}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$3(Lcom/clearchannel/iheartradio/android/services/IHRService;Z)V

    .line 447
    const/16 v5, 0x3f3

    iput v5, v2, Landroid/os/Message;->what:I

    .line 448
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v5, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->handleMessage(Landroid/os/Message;)Z

    .line 449
    const-string v5, "IHRService"

    const-string v6, "STOP PLAYER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_4
    :goto_5
    const-string v5, "offline"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 457
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v5, v9}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$4(Lcom/clearchannel/iheartradio/android/services/IHRService;Z)V

    .line 463
    :goto_6
    const-string v5, "IHRService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " was playing : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$5(Lcom/clearchannel/iheartradio/android/services/IHRService;)Z

    move-result v7

    if-eqz v7, :cond_e

    move v7, v8

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    const-string v5, "IHRService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " was disconnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$2(Lcom/clearchannel/iheartradio/android/services/IHRService;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const-string v5, "failed"

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "nonetwork"

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v6, v6, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->getStatus()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 468
    :cond_5
    const-string v5, "onReceive"

    const-string v6, "When the network is active,the streaming will be resumed"

    invoke-static {p0, v5, v6}, Lcom/clearchannel/iheartradio/model/LogUtil;->i(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    const-string v5, "STATUS"

    const-string v6, "onReceive When the network is active,the streaming will be resumed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/16 v5, 0x3fb

    iput v5, v2, Landroid/os/Message;->what:I

    .line 471
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v5, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->handleMessage(Landroid/os/Message;)Z

    .line 476
    :cond_6
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$5(Lcom/clearchannel/iheartradio/android/services/IHRService;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "data"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "wifi"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 477
    :cond_7
    const/16 v5, 0x3f4

    iput v5, v2, Landroid/os/Message;->what:I

    .line 478
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    iget-object v5, v5, Lcom/clearchannel/iheartradio/android/services/IHRService;->mPlayer:Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;

    invoke-virtual {v5, v2}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->handleMessage(Landroid/os/Message;)Z

    .line 479
    const-string v5, "IHRService"

    const-string v6, "START PLAYER"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 424
    :cond_8
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WIFI"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 425
    const-string v3, "wifi"

    goto/16 :goto_1

    .line 434
    :cond_9
    const-string v3, "wifi"

    goto/16 :goto_2

    :cond_a
    move v5, v9

    .line 444
    goto/16 :goto_3

    :cond_b
    move v6, v9

    goto/16 :goto_4

    .line 451
    :cond_c
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v5, v9}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$3(Lcom/clearchannel/iheartradio/android/services/IHRService;Z)V

    goto/16 :goto_5

    .line 459
    :cond_d
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$2;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-static {v5, v8}, Lcom/clearchannel/iheartradio/android/services/IHRService;->access$4(Lcom/clearchannel/iheartradio/android/services/IHRService;Z)V

    goto/16 :goto_6

    :cond_e
    move v7, v9

    .line 463
    goto/16 :goto_7
.end method
