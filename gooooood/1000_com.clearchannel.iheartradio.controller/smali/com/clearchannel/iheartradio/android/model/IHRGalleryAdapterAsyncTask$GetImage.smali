.class Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;
.super Landroid/os/AsyncTask;
.source "IHRGalleryAdapterAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field private imageBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;


# direct methods
.method private constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;)V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 4
    .param p1, "params"    # [Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 91
    aget-object v2, p1, v3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "url":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;

    invoke-static {v2, v1}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;->imageBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    aget-object v2, p1, v3

    return-object v2

    .line 95
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 96
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;->doInBackground([Landroid/widget/ImageView;)Landroid/widget/ImageView;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "imageViewByTag"    # Landroid/widget/ImageView;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;->imageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 105
    if-eqz p1, :cond_0

    .line 106
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;->imageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 109
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;->onPostExecute(Landroid/widget/ImageView;)V

    return-void
.end method
