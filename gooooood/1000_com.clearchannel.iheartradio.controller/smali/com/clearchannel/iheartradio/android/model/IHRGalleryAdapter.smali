.class public Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;
.super Landroid/widget/BaseAdapter;
.source "IHRGalleryAdapter.java"


# static fields
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
    .line 34
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->updateViewHandler:Landroid/os/Handler;

    .line 35
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "c":Landroid/content/Context;
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->mContext:Landroid/app/Activity;

    .line 36
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 37
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->featured()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->featured:Ljava/util/List;

    .line 38
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->listLogo:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

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
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "urlImage":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 104
    .local v1, "connection":Ljava/net/HttpURLConnection;
    sget v4, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 105
    sget v4, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 106
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 107
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 108
    sget-object v4, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->listLogo:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->featured:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->featured:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 50
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertview"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->featured:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    .line 59
    .local v0, "content":Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->mContext:Landroid/app/Activity;

    const v6, 0x7f030007

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 61
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f090038

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 60
    check-cast v2, Landroid/widget/ImageView;

    .line 63
    .local v2, "icon":Landroid/widget/ImageView;
    const v5, 0x7f09003a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 62
    check-cast v3, Landroid/widget/TextView;

    .line 65
    .local v3, "title":Landroid/widget/TextView;
    const v5, 0x7f09003b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 64
    check-cast v1, Landroid/widget/TextView;

    .line 67
    .local v1, "description":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getTitle()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getDescription()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 73
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_1
    sget-object v5, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->listLogo:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 81
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->updateViewHandler:Landroid/os/Handler;

    new-instance v6, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;

    invoke-direct {v6, p0, v2, v0}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;Landroid/widget/ImageView;Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;
    :goto_2
    return-object v4

    .line 70
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;
    :cond_0
    const-string v5, ""

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 75
    :cond_1
    const-string v5, ""

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 92
    :cond_2
    sget-object v5, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->listLogo:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
