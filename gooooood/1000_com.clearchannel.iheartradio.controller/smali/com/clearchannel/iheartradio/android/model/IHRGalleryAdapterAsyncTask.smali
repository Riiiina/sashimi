.class public Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;
.super Landroid/widget/BaseAdapter;
.source "IHRGalleryAdapterAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;,
        Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;
    }
.end annotation


# static fields
.field private static final DownloadingError:I = 0x0

.field private static final DownloadingOK:I = 0x1

.field private static listLogo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private featured:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/app/Activity;

.field mGalleryItemBackground:I

.field public updateViewHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$1;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->updateViewHandler:Landroid/os/Handler;

    .line 66
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "c":Landroid/content/Context;
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->mContext:Landroid/app/Activity;

    .line 67
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 68
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->featured()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->featured:Ljava/util/List;

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->listLogo:Ljava/util/HashMap;

    .line 70
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 211
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 214
    .local v3, "urlImage":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 215
    .local v1, "connection":Ljava/net/HttpURLConnection;
    sget v4, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 216
    sget v4, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 217
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 218
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 219
    sget-object v4, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->listLogo:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->featured:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->featured:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 77
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 81
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 116
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->featured:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    .line 120
    .local v0, "content":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    if-nez p2, :cond_0

    .line 121
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->mContext:Landroid/app/Activity;

    const v4, 0x7f030007

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;-><init>()V

    .line 124
    .local v2, "holder":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;
    const v3, 0x7f090038

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 125
    const v3, 0x7f09003a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->title:Landroid/widget/TextView;

    .line 126
    const v3, 0x7f09003b

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->description:Landroid/widget/TextView;

    .line 128
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 133
    :goto_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 134
    iget-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    :goto_1
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 139
    iget-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_2
    :try_start_0
    sget-object v3, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->listLogo:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 186
    iget-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 187
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;)V

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/widget/ImageView;

    const/4 v5, 0x0

    iget-object v6, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->icon:Landroid/widget/ImageView;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$GetImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;
    :goto_3
    return-object p2

    .line 130
    .end local v2    # "holder":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;

    .restart local v2    # "holder":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;
    goto :goto_0

    .line 136
    :cond_1
    iget-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->title:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 141
    :cond_2
    iget-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->description:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 191
    :cond_3
    :try_start_1
    iget-object v3, v2, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask$ViewHolder;->icon:Landroid/widget/ImageView;

    sget-object v4, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;->listLogo:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapterAsyncTask;
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 194
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 197
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
