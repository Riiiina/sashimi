.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$12;
.super Ljava/lang/Object;
.source "IHRPlayerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setMediaCover(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

.field private final synthetic val$mediaUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$12;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$12;->val$mediaUrl:Ljava/lang/String;

    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 719
    const/4 v3, 0x1

    .line 721
    .local v3, "nbAttempt":I
    :goto_0
    sget v5, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->FETCH_HTTP_ATTEMPT:I

    if-le v3, v5, :cond_0

    .line 737
    :goto_1
    return-void

    .line 722
    :cond_0
    const-string v5, "AlbumArt"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " try to download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$12;->val$mediaUrl:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$12;->val$mediaUrl:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 725
    .local v4, "urlImage":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 726
    .local v0, "connection":Ljava/net/HttpURLConnection;
    sget v5, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 727
    sget v5, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 728
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 729
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$18(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 731
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "urlImage":Ljava/net/URL;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 732
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "AlbumArt"

    const-string v6, "Exception when fetching picture"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$18(Landroid/graphics/Bitmap;)V

    .line 735
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
