.class Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$1;
.super Landroid/os/Handler;
.source "IHRGalleryAdapterAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$1;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;

    .line 41
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 45
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 62
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$1;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 47
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$1;
    :pswitch_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$1;
    check-cast p0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aget-object v0, p0, v1

    check-cast v0, Landroid/widget/ImageView;

    .line 48
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, v2

    check-cast p0, Landroid/graphics/Bitmap;

    if-eqz p0, :cond_1

    .line 50
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, v2

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 53
    :cond_1
    const-string v1, "Gallery"

    const-string v2, "Download gallery pic finished bu not shown anymore."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
