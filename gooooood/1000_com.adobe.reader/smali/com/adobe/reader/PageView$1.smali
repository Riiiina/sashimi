.class Lcom/adobe/reader/PageView$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/PageView;->initializePageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/reader/PageView;


# direct methods
.method constructor <init>(Lcom/adobe/reader/PageView;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getScrollX()I

    move-result v10

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->getScrollY()I

    move-result v11

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Rect;

    invoke-static {v1, v0, v12}, Lcom/adobe/reader/PageView;->access$000(Lcom/adobe/reader/PageView;Landroid/graphics/Rect;Z)V

    :cond_0
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v0

    aput v10, v0, v2

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v0

    aput v11, v0, v12

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v1

    aget v1, v1, v2

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v3

    aget v3, v3, v12

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v4

    aget v4, v4, v2

    iget-object v5, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v5}, Lcom/adobe/reader/PageView;->access$200(Lcom/adobe/reader/PageView;)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v5}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v5

    aget v5, v5, v12

    iget-object v6, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v6}, Lcom/adobe/reader/PageView;->access$300(Lcom/adobe/reader/PageView;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$200(Lcom/adobe/reader/PageView;)I

    move-result v1

    add-int/2addr v1, v10

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$300(Lcom/adobe/reader/PageView;)I

    move-result v3

    add-int/2addr v3, v11

    invoke-virtual {v0, v10, v11, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v3

    aget v3, v3, v2

    sub-int/2addr v1, v3

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v4

    aget v4, v4, v12

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v5}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v5

    aget v5, v5, v2

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v5}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v6}, Lcom/adobe/reader/PageView;->access$100(Lcom/adobe/reader/PageView;)[I

    move-result-object v6

    aget v6, v6, v12

    sub-int/2addr v5, v6

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v10

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v11

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v10

    iget-object v5, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v5}, Lcom/adobe/reader/PageView;->access$500(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v11

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$700(Lcom/adobe/reader/PageView;)[I

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$200(Lcom/adobe/reader/PageView;)I

    move-result v1

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$300(Lcom/adobe/reader/PageView;)I

    move-result v3

    mul-int/2addr v1, v3

    new-array v1, v1, [I

    invoke-static {v0, v1}, Lcom/adobe/reader/PageView;->access$702(Lcom/adobe/reader/PageView;[I)[I

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$800(Lcom/adobe/reader/PageView;)Lcom/adobe/reader/JSurface;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->m_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$700(Lcom/adobe/reader/PageView;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$800(Lcom/adobe/reader/PageView;)Lcom/adobe/reader/JSurface;

    move-result-object v3

    iget v3, v3, Lcom/adobe/reader/JSurface;->m_width:I

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v5}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v6}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v7}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v7}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v8}, Lcom/adobe/reader/PageView;->access$400(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$800(Lcom/adobe/reader/PageView;)Lcom/adobe/reader/JSurface;

    move-result-object v0

    iget-object v0, v0, Lcom/adobe/reader/JSurface;->m_bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$700(Lcom/adobe/reader/PageView;)[I

    move-result-object v1

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$800(Lcom/adobe/reader/PageView;)Lcom/adobe/reader/JSurface;

    move-result-object v3

    iget v3, v3, Lcom/adobe/reader/JSurface;->m_width:I

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v5}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v6}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v7}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v7}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v8}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$200(Lcom/adobe/reader/PageView;)I

    move-result v1

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$1000(Lcom/adobe/reader/PageView;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v9}, Lcom/adobe/reader/PageView;->access$1100(Lcom/adobe/reader/PageView;JIIII)V

    :cond_3
    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$1000(Lcom/adobe/reader/PageView;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v9}, Lcom/adobe/reader/PageView;->access$1100(Lcom/adobe/reader/PageView;JIIII)V

    :cond_4
    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$200(Lcom/adobe/reader/PageView;)I

    move-result v4

    iget-object v5, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v5}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$1000(Lcom/adobe/reader/PageView;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v9}, Lcom/adobe/reader/PageView;->access$1100(Lcom/adobe/reader/PageView;JIIII)V

    :cond_5
    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v3}, Lcom/adobe/reader/PageView;->access$200(Lcom/adobe/reader/PageView;)I

    move-result v3

    iget-object v4, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v4}, Lcom/adobe/reader/PageView;->access$300(Lcom/adobe/reader/PageView;)I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$600(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$1000(Lcom/adobe/reader/PageView;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$900(Lcom/adobe/reader/PageView;)Landroid/graphics/Rect;

    move-result-object v0

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static/range {v3 .. v9}, Lcom/adobe/reader/PageView;->access$1100(Lcom/adobe/reader/PageView;JIIII)V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$1000(Lcom/adobe/reader/PageView;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$200(Lcom/adobe/reader/PageView;)I

    move-result v8

    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$300(Lcom/adobe/reader/PageView;)I

    move-result v9

    move v6, v2

    move v7, v2

    invoke-static/range {v3 .. v9}, Lcom/adobe/reader/PageView;->access$1100(Lcom/adobe/reader/PageView;JIIII)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$1200(Lcom/adobe/reader/PageView;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/adobe/reader/PageView$1;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$1300(Lcom/adobe/reader/PageView;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
