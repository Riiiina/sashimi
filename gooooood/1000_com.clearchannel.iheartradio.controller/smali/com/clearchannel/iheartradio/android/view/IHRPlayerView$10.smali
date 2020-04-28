.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;
.super Ljava/lang/Thread;
.source "IHRPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->fetchLogos(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

.field private final synthetic val$callLetters:Ljava/lang/String;

.field private final synthetic val$metadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field private final synthetic val$radioCoverURL:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->val$radioCoverURL:Ljava/lang/String;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->val$callLetters:Ljava/lang/String;

    iput-object p4, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->val$metadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 484
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 498
    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/String;

    .line 506
    .local v2, "trackInfo":[Ljava/lang/String;
    new-array v0, v10, [Ljava/lang/String;

    .line 508
    .local v0, "covers":[Ljava/lang/String;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->val$radioCoverURL:Ljava/lang/String;

    aput-object v3, v0, v7

    .line 509
    const-string v3, ""

    aput-object v3, v0, v8

    .line 510
    const-string v3, ""

    aput-object v3, v0, v9

    .line 513
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->val$callLetters:Ljava/lang/String;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->val$metadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v4, "artist"

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->val$metadata:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v6, "track"

    invoke-virtual {v4, v6}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v3, v4}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->getCoverAndLyricsByCallLetters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 522
    if-eqz v2, :cond_1

    .line 523
    aget-object v3, v2, v7

    if-eqz v3, :cond_0

    aget-object v3, v2, v7

    const-string v4, "tid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    aget-object v3, v2, v7

    aput-object v3, v0, v9

    .line 526
    :cond_0
    aget-object v3, v2, v8

    aput-object v3, v0, v8

    .line 529
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 530
    .local v1, "message":Landroid/os/Message;
    iput v10, v1, Landroid/os/Message;->what:I

    .line 531
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 533
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$16(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 535
    return-void
.end method
