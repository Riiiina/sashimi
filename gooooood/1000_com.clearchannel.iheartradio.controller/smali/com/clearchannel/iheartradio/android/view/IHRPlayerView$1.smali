.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;
.super Landroid/os/Handler;
.source "IHRPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x7f02006a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 134
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 188
    :goto_0
    return-void

    .line 138
    :pswitch_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setRadioCover(Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-static {v4, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V

    .line 140
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    aget-object v0, v3, v7

    .line 141
    .local v0, "lyricsURL":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 143
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 144
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v3

    const-string v4, "lyricsURL"

    invoke-virtual {v3, v4, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v3, v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateLyricsButton(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 153
    .end local v0    # "lyricsURL":Ljava/lang/String;
    :pswitch_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v3, v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$2(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Z)V

    .line 154
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$3()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    .line 155
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :cond_2
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$3()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 162
    .local v2, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 164
    .local v1, "songInfos":[Ljava/lang/String;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 167
    if-eqz v2, :cond_3

    .line 168
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStation(Ljava/lang/String;)V

    .line 169
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$5(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->setCallLetters(Ljava/lang/String;)V

    .line 170
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getLogoURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setRadioCover(Ljava/lang/String;)V

    .line 172
    :cond_3
    if-eqz v1, :cond_6

    .line 173
    aget-object v3, v1, v5

    const-string v4, ""

    if-eq v3, v4, :cond_4

    aget-object v3, v1, v6

    const-string v4, ""

    if-ne v3, v4, :cond_7

    .line 174
    :cond_4
    if-eqz v2, :cond_5

    .line 175
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setArtist(Ljava/lang/String;)V

    .line 182
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    aget-object v4, v1, v7

    invoke-static {v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V

    .line 185
    :cond_6
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 179
    :cond_7
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setArtist(Ljava/lang/String;)V

    .line 180
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    aget-object v4, v1, v6

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setTrack(Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
