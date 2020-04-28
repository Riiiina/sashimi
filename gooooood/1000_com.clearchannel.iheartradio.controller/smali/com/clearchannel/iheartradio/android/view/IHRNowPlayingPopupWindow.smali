.class public Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
.super Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;
.source "IHRNowPlayingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRNowPlayingPopupWindow$PopUpType:[I

.field public static isVisible:Z


# instance fields
.field private bAddToFav:Landroid/widget/ImageButton;

.field private bMediaShare:Landroid/widget/ImageButton;

.field private final callLettersPlayer:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private controller:Lcom/clearchannel/iheartradio/controller/IHRController;

.field private handler:Landroid/os/Handler;

.field private ihrActivity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

.field private imageContent:Landroid/graphics/Bitmap;

.field private imageSong:Landroid/widget/ImageView;

.field private imageUrl:Ljava/lang/String;

.field private inflater:Landroid/view/LayoutInflater;

.field private mFavoriteDialog:Landroid/app/AlertDialog;

.field private popUpType:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

.field private rootView:Landroid/view/ViewGroup;

.field private streamID:J


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRNowPlayingPopupWindow$PopUpType()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRNowPlayingPopupWindow$PopUpType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->values()[Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->player:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->stations:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRNowPlayingPopupWindow$PopUpType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->isVisible:Z

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;JLcom/clearchannel/iheartradio/controller/IHRActivity;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "popUpType"    # Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;
    .param p3, "streamID"    # J
    .param p5, "ihrActivity"    # Lcom/clearchannel/iheartradio/controller/IHRActivity;

    .prologue
    .line 87
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->stations:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    if-ne p2, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;-><init>(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 68
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->callLettersPlayer:Ljava/lang/String;

    .line 73
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$1;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->handler:Landroid/os/Handler;

    .line 89
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->popUpType:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    .line 90
    iput-object p5, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->ihrActivity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    .line 91
    if-eqz p5, :cond_0

    .line 92
    invoke-virtual {p5}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->getIhrController()Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->controller:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->context:Landroid/content/Context;

    .line 95
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->stations:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    if-ne p2, v0, :cond_1

    .line 96
    iput-wide p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->streamID:J

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->onCreate()V

    .line 115
    return-void

    .line 87
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->imageContent:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->imageSong:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->mFavoriteDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->mFavoriteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$5(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 429
    invoke-static {p0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->imageContent:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$8(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$9(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRActivity;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->ihrActivity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    return-object v0
.end method

.method private static downloadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 431
    const/4 v0, 0x0

    .line 435
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 437
    .local v3, "urlImage":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 436
    check-cast v1, Ljava/net/HttpURLConnection;

    .line 439
    .local v1, "connection":Ljava/net/HttpURLConnection;
    sget v4, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 440
    sget v4, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 442
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 443
    .local v2, "inputStream":Ljava/io/InputStream;
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 449
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "urlImage":Ljava/net/URL;
    :goto_0
    return-object v0

    .line 445
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 502
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->ihrActivity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    if-eqz v1, :cond_0

    .line 503
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->ihrActivity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->controllers()[Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v1

    array-length v2, v1

    move v3, v5

    :goto_0
    if-lt v3, v2, :cond_1

    .line 508
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->shared()Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setEventLayerVisible(Z)V

    .line 510
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 511
    sput-boolean v5, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->isVisible:Z

    .line 512
    return-void

    .line 503
    :cond_1
    aget-object v0, v1, v3

    .line 504
    .local v0, "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/controller/IHRController;->setPopup(Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;)V

    .line 503
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 422
    return-void
.end method

.method protected onCreate()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 126
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->inflater:Landroid/view/LayoutInflater;

    .line 128
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRNowPlayingPopupWindow$PopUpType()[I

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->popUpType:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->popUpType:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->player:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    if-ne v1, v2, :cond_2

    .line 147
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->ihrActivity:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->controllers()[Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v1

    array-length v2, v1

    move v3, v4

    :goto_1
    if-lt v3, v2, :cond_3

    .line 151
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f090063

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bMediaShare:Landroid/widget/ImageButton;

    .line 152
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f090062

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bAddToFav:Landroid/widget/ImageButton;

    .line 154
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->callLettersPlayer:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bMediaShare:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 156
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bAddToFav:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 158
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bAddToFav:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 160
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bMediaShare:Landroid/widget/ImageButton;

    invoke-virtual {v1, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 168
    :goto_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bMediaShare:Landroid/widget/ImageButton;

    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bAddToFav:Landroid/widget/ImageButton;

    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->controller:Lcom/clearchannel/iheartradio/controller/IHRController;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->mFavoriteDialog:Landroid/app/AlertDialog;

    invoke-direct {v2, v3, v4, p0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;Landroid/app/AlertDialog;Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->setContentView(Landroid/view/View;)V

    .line 216
    return-void

    .line 131
    :pswitch_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030016

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030015

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    goto/16 :goto_0

    .line 147
    :cond_3
    aget-object v0, v1, v3

    .line 148
    .local v0, "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->setPopup(Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;)V

    .line 147
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 163
    .end local v0    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bAddToFav:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 164
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->bMediaShare:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_2

    .line 128
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onShow()V
    .locals 14

    .prologue
    .line 230
    const/4 v11, 0x1

    sput-boolean v11, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->isVisible:Z

    .line 234
    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v12, 0x7f09005f

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 235
    .local v8, "textTitle":Landroid/widget/TextView;
    const-string v11, ""

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v12, 0x7f09005d

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 237
    .local v7, "textStation":Landroid/widget/TextView;
    const-string v11, ""

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRNowPlayingPopupWindow$PopUpType()[I

    move-result-object v11

    iget-object v12, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->popUpType:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->ordinal()I

    move-result v12

    aget v11, v11, v12

    packed-switch v11, :pswitch_data_0

    .line 413
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    :pswitch_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v11

    iget-wide v12, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->streamID:J

    invoke-virtual {v11, v12, v13}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationById(J)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v6

    .line 250
    .local v6, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    iget-wide v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->streamID:J

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->getNowPlayingByStreamId(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 252
    .local v5, "songInfos":[Ljava/lang/String;
    const/4 v11, 0x0

    aget-object v11, v5, v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    aget-object v11, v5, v11

    const-string v12, ""

    if-eq v11, v12, :cond_3

    const/4 v11, 0x1

    aget-object v11, v5, v11

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    aget-object v11, v5, v11

    const-string v12, ""

    if-eq v11, v12, :cond_3

    .line 254
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 266
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    :cond_2
    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v12, 0x7f090064

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->imageSong:Landroid/widget/ImageView;

    .line 271
    const/4 v11, 0x2

    aget-object v11, v5, v11

    if-eqz v11, :cond_4

    .line 272
    const/4 v11, 0x2

    aget-object v11, v5, v11

    iput-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->imageUrl:Ljava/lang/String;

    .line 273
    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->imageSong:Landroid/widget/ImageView;

    const v12, 0x7f02004b

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 275
    new-instance v9, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$3;

    invoke-direct {v9, p0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$3;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)V

    .line 283
    .local v9, "thread":Ljava/lang/Thread;
    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 258
    .end local v9    # "thread":Ljava/lang/Thread;
    :cond_3
    if-eqz v6, :cond_1

    .line 260
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 286
    :cond_4
    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->imageSong:Landroid/widget/ImageView;

    const v12, 0x7f02004b

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 294
    .end local v5    # "songInfos":[Ljava/lang/String;
    .end local v6    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :pswitch_1
    const/4 v0, 0x0

    .line 295
    .local v0, "artist":Ljava/lang/String;
    const/4 v10, 0x0

    .line 297
    .local v10, "track":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v11

    invoke-virtual {v11}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, "callLettersPlayer":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v11

    invoke-virtual {v11}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v4

    .line 300
    .local v4, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    new-instance v12, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;

    invoke-direct {v12, p0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$4;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v12, 0x7f090060

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 328
    .local v2, "mMediaStatus":Landroid/widget/ImageButton;
    new-instance v11, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$5;

    invoke-direct {v11, p0}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$5;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v11

    invoke-virtual {v11}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 337
    const v11, 0x7f020100

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 356
    :goto_2
    if-eqz v1, :cond_8

    .line 357
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v6

    .line 358
    .restart local v6    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v6, :cond_5

    .line 359
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .end local v6    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_5
    :goto_3
    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v12, 0x7f09005e

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 370
    .local v3, "mediaInfos":Landroid/view/View;
    if-eqz v4, :cond_c

    .line 371
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 374
    const-string v11, "callletters"

    invoke-virtual {v4, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "!"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 376
    const-string v11, "artist"

    invoke-virtual {v4, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v0

    .line 377
    const-string v11, "track"

    invoke-virtual {v4, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v10

    .line 379
    if-eqz v0, :cond_6

    .line 380
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    :cond_6
    if-eqz v10, :cond_0

    .line 383
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 352
    .end local v3    # "mediaInfos":Landroid/view/View;
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    :cond_7
    const v11, 0x7f02007b

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_2

    .line 362
    :cond_8
    const-string v11, ""

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 389
    .restart local v3    # "mediaInfos":Landroid/view/View;
    :cond_9
    const-string v11, "artist"

    invoke-virtual {v4, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    const-string v11, "track"

    invoke-virtual {v4, v11}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v10

    .line 392
    if-eqz v0, :cond_a

    const-string v11, ""

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_a

    if-eqz v10, :cond_a

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 393
    :cond_a
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v11

    invoke-virtual {v11}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v11

    invoke-virtual {v11}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 395
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, " | "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 401
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    :cond_c
    const-string v11, ""

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected preShow()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->preShow()V

    .line 221
    return-void
.end method

.method public shareViaEmail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "station"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 460
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string v1, "<br />"

    .line 464
    .local v1, "lineBreak":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Check out "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on iheartradio"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "subject":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "<font face=\'helvetica\' size=\'3\'><p>Hello --</p>"

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 467
    .local v0, "body":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 468
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<p>I was just listening to <b>"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "</b> on iheartradio and I think you would enjoy it too! Listen for free*, where ever you go.</p>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 469
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 470
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    const-string v4, "<a href=\'http://www.iheartradio.com/\'>Explore over 750 other radio stations on iheartradio</a>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 473
    const-string v4, "<a href=\'http://www.iheartradio.com/cc-common/radio_app/index.html\'>Download iheartradio for: iPhone, iPad, Blackberry, Android, Windows Phone 7</a>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 475
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    const-string v4, "<p>*Standard carrier charges may apply.</p></font>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string v4, "text/html"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 490
    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 492
    const-string v4, "sms_body"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 493
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 495
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Send mail..."

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public shareViaFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "identifier"    # Ljava/lang/String;

    .prologue
    .line 455
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->context:Landroid/content/Context;

    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v1

    invoke-static {v0, v1, p1, p2, p3}, Lcom/clearchannel/iheartradio/model/facebook/Util;->publish(Landroid/content/Context;Lcom/clearchannel/iheartradio/model/facebook/Facebook;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method
