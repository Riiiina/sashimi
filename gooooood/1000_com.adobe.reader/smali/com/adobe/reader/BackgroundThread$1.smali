.class Lcom/adobe/reader/BackgroundThread$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/BackgroundThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/reader/BackgroundThread;


# direct methods
.method constructor <init>(Lcom/adobe/reader/BackgroundThread;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/adobe/reader/PageView;->handlePaintTilesMessage(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->doubleTapNativeZoom()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->nativeDocZoom()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_0

    move v1, v2

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/PageView;->zoom(ZI)V

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->handleWindowSizeChangedMessage(Z)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/PageView;->handleSaveTilesToDiskMessage(II)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/PageView;->handleLoadTileFromDiskMessage(II)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->handleDeleteTilesFromDiskMessage()V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/adobe/reader/PageView;->handlePrefetchTilesMessage(Landroid/graphics/Rect;)V

    goto :goto_0

    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v1}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v1

    const-string v2, "PREFETCH_PIVOT_X"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "PREFETCH_PIVOT_Y"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "PREFETCH_LEFT"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "PREFETCH_TOP"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/adobe/reader/PageView;->handlePrefetchOneTileMessage(IIII)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->handlePurgeOffscreenTilesMessage()V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adobe/reader/PageView;->navigatePage(Z)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adobe/reader/PageView;->navigatePage(Z)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->handleSetViewModeMessage(I)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->handleOpenDocumentMessage()V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v1}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/adobe/reader/PageView;->findText(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v1}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/adobe/reader/PageView;->findText(Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->removeTextHighlight()V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/PageView;->handleFetchPrevNextTilesMessage(II)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->gotoPageInSinglePageMode(I)V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/reader/PageView;->handleDeleteTileFromDiskMessage(II)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/adobe/reader/BackgroundThread$1;->this$0:Lcom/adobe/reader/BackgroundThread;

    invoke-static {v0}, Lcom/adobe/reader/BackgroundThread;->access$000(Lcom/adobe/reader/BackgroundThread;)Lcom/adobe/reader/PageView;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0, v1}, Lcom/adobe/reader/PageView;->handlePaintRectIntoTilesMessage(Landroid/graphics/Rect;I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method
