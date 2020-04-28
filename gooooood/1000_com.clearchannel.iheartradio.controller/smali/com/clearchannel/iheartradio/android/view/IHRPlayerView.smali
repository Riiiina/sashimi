.class public Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;
.super Ljava/lang/Object;
.source "IHRPlayerView.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRListener;
.implements Ljava/lang/Runnable;


# static fields
.field private static final BUFFERING:I = 0x1

.field public static FETCH_HTTP_ATTEMPT:I = 0x0

.field private static final PLAYING:I = 0x2

.field private static final STOPPED:I = 0x0

.field private static coverURL:Ljava/lang/String; = null

.field private static currentAdFetchTimerList:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Timer;",
            ">;"
        }
    .end annotation
.end field

.field private static imageChangeTime:I = 0x0

.field public static isPlayingLivePodcast:Z = false

.field private static isPodcastFirtLaunched:Z = false

.field public static isSubscriptionMode:Z = false

.field private static final kGotMediaCover:I = 0x0

.field private static final kGotMetadata:I = 0x2

.field private static final kGotRadioLogo:I = 0x1

.field private static final kGotSongInfo:I = 0x3

.field protected static final kKeyListenSecondsSinceLastGatewayAdShown:J = -0x51588841e93536dbL

.field protected static final kKeyLoadsSinceLastGatewayAdShown:J = -0x1bf593cb2b6e0379L

.field private static lastPlayedStation:Ljava/lang/String;

.field private static mediaCoverContent:Landroid/graphics/Bitmap;

.field private static radioLogoContent:Landroid/graphics/Bitmap;

.field private static radioURL:Ljava/lang/String;


# instance fields
.field private adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

.field private advertisingController:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field private animationIn:Landroid/view/animation/Animation;

.field private animationOut:Landroid/view/animation/Animation;

.field private changerImageTask:Ljava/lang/Runnable;

.field private context:Landroid/content/Context;

.field private currentOffset:I

.field private favoriteButton:Landroid/widget/ImageButton;

.field private handler:Landroid/os/Handler;

.field private ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

.field private isMediaCoverShown:Z

.field private logoImage:Landroid/widget/ImageView;

.field private lyricsButton:Landroid/widget/Button;

.field private mFavoriteDialog:Landroid/app/AlertDialog;

.field private mHandlerChangerImage:Landroid/os/Handler;

.field private nextButton:Landroid/widget/ImageButton;

.field private podcastBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private previousButton:Landroid/widget/ImageButton;

.field private seekBar:Landroid/widget/SeekBar;

.field private seekBarLayout:Landroid/view/View;

.field private shareButton:Landroid/widget/ImageButton;

.field private smallAd:Landroid/widget/ImageView;

.field private stationBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private statusButton:Landroid/widget/ImageButton;

.field private textRemainingTime:Landroid/widget/TextView;

.field private textSeekTime:Landroid/widget/TextView;

.field private textViewArtist:Landroid/widget/TextView;

.field private textViewStation:Landroid/widget/TextView;

.field private textViewTrack:Landroid/widget/TextView;

.field private view:Landroid/view/View;

.field private volumeBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const-string v0, ""

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lastPlayedStation:Ljava/lang/String;

    .line 105
    const/4 v0, 0x5

    sput v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->FETCH_HTTP_ATTEMPT:I

    .line 107
    const/4 v0, 0x0

    sput-boolean v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isPodcastFirtLaunched:Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->currentAdFetchTimerList:Ljava/util/ArrayList;

    .line 127
    const/16 v0, 0x2710

    sput v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->imageChangeTime:I

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
    .locals 8
    .param p1, "ihrController"    # Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .prologue
    const-wide/16 v6, 0x14d

    const/4 v5, 0x1

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v2, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->advertisingController:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    .line 96
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isMediaCoverShown:Z

    .line 130
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->handler:Landroid/os/Handler;

    .line 191
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$2;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$2;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->podcastBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 208
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$3;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$3;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->stationBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 219
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mHandlerChangerImage:Landroid/os/Handler;

    .line 220
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$4;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->changerImageTask:Ljava/lang/Runnable;

    .line 246
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .line 247
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x10a0001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->animationOut:Landroid/view/animation/Animation;

    .line 248
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->animationOut:Landroid/view/animation/Animation;

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 250
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v2

    const/high16 v3, 0x10a0000

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->animationIn:Landroid/view/animation/Animation;

    .line 251
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->animationIn:Landroid/view/animation/Animation;

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 253
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v2

    const-string v3, "player"

    invoke-virtual {v2, v3, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 254
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v2

    const-string v3, "IHRCacheData"

    invoke-virtual {v2, v3, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 255
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v2

    const-string v3, "IHRCacheResults"

    invoke-virtual {v2, v3, p0}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->listenFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/model/IHRListener;)V

    .line 257
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->context:Landroid/content/Context;

    .line 258
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->context:Landroid/content/Context;

    const v3, 0x7f03002d

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    .line 260
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900c3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textViewArtist:Landroid/widget/TextView;

    .line 261
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900c4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textViewTrack:Landroid/widget/TextView;

    .line 262
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textViewStation:Landroid/widget/TextView;

    .line 264
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textRemainingTime:Landroid/widget/TextView;

    .line 265
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900c9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textSeekTime:Landroid/widget/TextView;

    .line 267
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    .line 268
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$5;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$5;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900d2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->shareButton:Landroid/widget/ImageButton;

    .line 275
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900d1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    .line 277
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->nextButton:Landroid/widget/ImageButton;

    .line 278
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->nextButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$6;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$6;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->previousButton:Landroid/widget/ImageButton;

    .line 290
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->previousButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$7;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$7;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900c6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    .line 302
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setLyricsButton()V

    .line 304
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900c7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->volumeBar:Landroid/widget/SeekBar;

    .line 305
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900ca

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->seekBar:Landroid/widget/SeekBar;

    .line 306
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900c8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->seekBarLayout:Landroid/view/View;

    .line 307
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 308
    .local v0, "c":Landroid/graphics/drawable/ColorDrawable;
    const/16 v2, 0x5a

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 309
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->seekBarLayout:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900bd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->smallAd:Landroid/widget/ImageView;

    .line 312
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    const v3, 0x7f0900c1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->logoImage:Landroid/widget/ImageView;

    .line 314
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->logoImage:Landroid/widget/ImageView;

    new-instance v3, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$8;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mFavoriteDialog:Landroid/app/AlertDialog;

    invoke-direct {v3, p1, v4}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteButtonClickListener;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->shareButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;

    invoke-direct {v3, p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getPosition()[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 394
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getPosition()[I

    move-result-object v1

    .line 396
    .local v1, "position":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v5, :cond_0

    aget v2, v1, v5

    if-lez v2, :cond_0

    .line 398
    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;J)Z

    .line 401
    .end local v1    # "position":[I
    :cond_0
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 707
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setMediaCover(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$10(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mHandlerChangerImage:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$11(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->changerImageTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$12()I
    .locals 1

    .prologue
    .line 127
    sget v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->imageChangeTime:I

    return v0
.end method

.method static synthetic access$13(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->seekBarLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mFavoriteDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$15(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mFavoriteDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$16(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$17(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 80
    sput-object p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->radioLogoContent:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$18(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 77
    sput-object p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mediaCoverContent:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$19(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Z)V
    .locals 0

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isMediaCoverShown:Z

    return-void
.end method

.method static synthetic access$20(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->radioLogoContent:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->logoImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->advertisingController:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    return-object v0
.end method

.method static synthetic access$6(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->animationOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$7(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Z
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isMediaCoverShown:Z

    return v0
.end method

.method static synthetic access$8()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mediaCoverContent:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$9(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->animationIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method private clearAllTimers()V
    .locals 3

    .prologue
    .line 860
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->currentAdFetchTimerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 863
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->currentAdFetchTimerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 864
    return-void

    .line 860
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    .line 861
    .local v0, "t":Ljava/util/Timer;
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    goto :goto_0
.end method

.method public static isSubscriptionMode()Z
    .locals 1

    .prologue
    .line 956
    sget-boolean v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isSubscriptionMode:Z

    return v0
.end method

.method private setMediaCover(Ljava/lang/String;)V
    .locals 2
    .param p1, "mediaUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 708
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 709
    :cond_0
    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mediaCoverContent:Landroid/graphics/Bitmap;

    .line 710
    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->coverURL:Ljava/lang/String;

    .line 743
    :goto_0
    return-void

    .line 713
    :cond_1
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->coverURL:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->coverURL:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 715
    :cond_2
    sput-object p1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->coverURL:Ljava/lang/String;

    .line 717
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$12;

    invoke-direct {v1, p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$12;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 738
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 740
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateStatusButton(I)V
    .locals 3
    .param p1, "currentStatus"    # I

    .prologue
    const/4 v2, 0x1

    .line 968
    packed-switch p1, :pswitch_data_0

    .line 989
    :goto_0
    return-void

    .line 970
    :pswitch_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    const v1, 0x7f02007b

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 971
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 975
    :pswitch_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    const v1, 0x7f02001a

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 976
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 977
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 978
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 983
    :pswitch_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 984
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 968
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public adClicked(ZLjava/lang/String;)V
    .locals 2
    .param p1, "clickedOnSmallAd"    # Z
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 930
    if-eqz p2, :cond_0

    .line 931
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRAd;->shared()Lcom/clearchannel/iheartradio/model/IHRAd;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRAd;->report(I)V

    .line 932
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;
    check-cast p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->openWebURL(Ljava/lang/String;)V

    .line 934
    :cond_0
    return-void

    .line 931
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;
    :cond_1
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public assignVolume(F)V
    .locals 4
    .param p1, "inVolume"    # F

    .prologue
    const/4 v3, 0x3

    .line 941
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    .line 942
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 943
    .local v0, "audio":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 945
    .end local v0    # "audio":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public createAdpopup(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 7
    .param p1, "hash"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 890
    const-string v0, "large_image"

    invoke-virtual {p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->dpToPix(I)I

    move-result v2

    .line 891
    .local v2, "width":I
    const-string v0, "large_image"

    invoke-virtual {p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->dpToPix(I)I

    move-result v3

    .line 893
    .local v3, "height":I
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-le v2, v0, :cond_0

    .line 894
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    mul-int/2addr v0, v3

    div-int v3, v0, v2

    .line 895
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->dismiss()V

    .line 910
    :goto_0
    return-void

    .line 905
    :cond_1
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v4, 0x1

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;-><init>(Landroid/view/View;IIZLcom/clearchannel/iheartradio/android/model/IHRHashtable;Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    goto :goto_0
.end method

.method public displaySubscriptionMode(ZZ)V
    .locals 5
    .param p1, "isSubscriptionMode"    # Z
    .param p2, "isLivePodcast"    # Z

    .prologue
    const/16 v4, 0x64

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 746
    sput-boolean p2, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isPlayingLivePodcast:Z

    .line 748
    if-nez p1, :cond_1

    .line 749
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 750
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 751
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->seekBarLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->volumeBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->stationBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 753
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->volumeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 755
    if-nez p2, :cond_0

    .line 756
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 758
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 759
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 760
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mHandlerChangerImage:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->changerImageTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 761
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mHandlerChangerImage:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->changerImageTask:Ljava/lang/Runnable;

    sget v2, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->imageChangeTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 780
    :goto_0
    return-void

    .line 763
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 764
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 765
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 766
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->mHandlerChangerImage:Landroid/os/Handler;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->changerImageTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 769
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->nextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 770
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->previousButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 771
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 773
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 774
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->shareButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->volumeBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->stationBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 776
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->volumeBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 777
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateVolume()V

    .line 778
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->seekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->podcastBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    goto :goto_0
.end method

.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 851
    int-to-float v1, p1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 852
    .local v0, "res":I
    return v0
.end method

.method public fetchLogos(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 6
    .param p1, "metadata"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 474
    const-string v4, "callletters"

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 475
    .local v0, "callLetters":Ljava/lang/String;
    const-string v4, "stationid"

    invoke-virtual {p1, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    .local v2, "streamId":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRStation;->getLogoURL()Ljava/lang/String;

    move-result-object v1

    .line 482
    .local v1, "radioCoverURL":Ljava/lang/String;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->logoImage:Landroid/widget/ImageView;

    const v5, 0x7f02006a

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 484
    new-instance v3, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$10;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 537
    .local v3, "threadSt":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 589
    return-void
.end method

.method public getAdController()Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;
    .locals 1

    .prologue
    .line 926
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->advertisingController:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    return-object v0
.end method

.method public getAdPopup()Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    return-object v0
.end method

.method public getSmallAd()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->smallAd:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->view:Landroid/view/View;

    return-object v0
.end method

.method public isAdPopUpShowing()Z
    .locals 1

    .prologue
    .line 922
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->isShowing()Z

    move-result v0

    goto :goto_0
.end method

.method public isShown()Z
    .locals 1

    .prologue
    .line 937
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    return v0
.end method

.method public listen(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 5
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    const/4 v3, 0x0

    .line 820
    sget-boolean v2, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isSubscriptionMode:Z

    if-eqz v2, :cond_0

    .line 822
    const-string v2, "player"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 824
    const-string v2, "position"

    invoke-virtual {p2, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v1

    .line 825
    .local v1, "positionPlayer":I
    const-string v2, "duration"

    invoke-virtual {p2, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v0

    .line 827
    .local v0, "durationPlayer":I
    iput v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->currentOffset:I

    .line 828
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v2, v1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateSeekBar(Landroid/widget/SeekBar;II)V

    .line 830
    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, p0, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;J)Z

    .line 834
    .end local v0    # "durationPlayer":I
    .end local v1    # "positionPlayer":I
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 837
    sget-boolean v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->isSubscriptionMode:Z

    if-eqz v1, :cond_0

    .line 838
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getPosition()[I

    move-result-object v0

    .line 840
    .local v0, "position":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-le v1, v4, :cond_0

    aget v1, v0, v4

    if-lez v1, :cond_0

    .line 841
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->seekBar:Landroid/widget/SeekBar;

    aget v2, v0, v5

    aget v3, v0, v4

    invoke-virtual {p0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateSeekBar(Landroid/widget/SeekBar;II)V

    .line 843
    aget v1, v0, v5

    aget v2, v0, v4

    if-ge v1, v2, :cond_0

    .line 844
    sget-object v1, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;J)Z

    .line 848
    .end local v0    # "position":[I
    :cond_0
    return-void
.end method

.method public setAdPopupVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 913
    if-eqz p1, :cond_0

    .line 914
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->show()V

    .line 919
    :goto_0
    return-void

    .line 917
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->adPopup:Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/AdvertisingPopupWindow;->dismiss()V

    goto :goto_0
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 408
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textViewArtist:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    return-void
.end method

.method public setLyricsButton()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 992
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getMetadata()Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v0

    .line 993
    .local v0, "metadata":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    if-eqz v0, :cond_1

    .line 994
    const-string v2, "lyricsURL"

    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 995
    .local v1, "url":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 996
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    new-instance v3, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$14;

    invoke-direct {v3, p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$14;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1002
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1009
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 1004
    .restart local v1    # "url":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1007
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setRadioCover(Ljava/lang/String;)V
    .locals 3
    .param p1, "radioURL"    # Ljava/lang/String;

    .prologue
    .line 670
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 671
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->radioLogoContent:Landroid/graphics/Bitmap;

    .line 672
    const-string v1, ""

    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->radioURL:Ljava/lang/String;

    .line 705
    :goto_0
    return-void

    .line 674
    :cond_1
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->radioURL:Ljava/lang/String;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->radioURL:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 675
    :cond_2
    sput-object p1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->radioURL:Ljava/lang/String;

    .line 677
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$11;

    invoke-direct {v0, p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$11;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V

    .line 700
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 702
    .end local v0    # "thread":Ljava/lang/Thread;
    :cond_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setSeekBarVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 867
    if-eqz p1, :cond_0

    .line 868
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->volumeBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 872
    :goto_0
    return-void

    .line 870
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->volumeBar:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSmallAd(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 879
    if-eqz p2, :cond_0

    .line 880
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->smallAd:Landroid/widget/ImageView;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$13;

    invoke-direct {v1, p0, p2}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$13;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->smallAd:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 887
    return-void
.end method

.method public setStation(Ljava/lang/String;)V
    .locals 1
    .param p1, "station"    # Ljava/lang/String;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textViewStation:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 417
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 6
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 596
    if-nez p1, :cond_0

    .line 597
    const-string p1, "null"

    .line 600
    :cond_0
    const-string v1, "STATUS"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 606
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "nonetwork"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 607
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 609
    const-string v1, "buffering"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "opening"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "prepared"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5

    .line 610
    :cond_3
    invoke-direct {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    .line 611
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 667
    :cond_4
    :goto_0
    return-void

    .line 612
    :cond_5
    const-string v1, "buffered"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 613
    invoke-direct {p0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    .line 614
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 615
    :cond_6
    const-string v1, "preparing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_7

    .line 616
    invoke-direct {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    .line 617
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 618
    :cond_7
    const-string v1, "nonetwork"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    .line 619
    invoke-direct {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    .line 620
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 621
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->context:Landroid/content/Context;

    const v3, 0x7f070016

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 622
    :cond_8
    const-string v1, "connectionfailed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_9

    .line 623
    invoke-direct {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    .line 624
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 625
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->context:Landroid/content/Context;

    const v3, 0x7f070017

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 626
    :cond_9
    const-string v1, "stopped"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_a

    .line 627
    invoke-direct {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    .line 628
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 629
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->clearAllTimers()V

    goto :goto_0

    .line 630
    :cond_a
    const-string v1, "loadingSubscription"

    if-ne p1, v1, :cond_b

    .line 631
    invoke-direct {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    goto :goto_0

    .line 632
    :cond_b
    const-string v1, "subscriptionLoaded"

    if-ne p1, v1, :cond_c

    .line 633
    invoke-direct {p0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    goto/16 :goto_0

    .line 635
    :cond_c
    const-string v1, "finished"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_d

    .line 637
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    const v2, 0x7f02007b

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 638
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textRemainingTime:Landroid/widget/TextView;

    const-string v2, "-00:00"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->followingIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_4

    .line 641
    sget-object v1, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumArchives;->followingIntents:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 644
    .local v0, "newArchiveIntent":Landroid/content/Intent;
    if-eqz v0, :cond_4

    const-string v1, "archive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 645
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v2

    const-string v1, "archive"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/model/IHRCache;->stateForFileWithURL(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 646
    const-string v1, "class"

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    const-string v1, "category"

    const-string v2, "playerSubscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 648
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto/16 :goto_0

    .line 652
    .end local v0    # "newArchiveIntent":Landroid/content/Intent;
    :cond_d
    const-string v1, "playing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    .line 654
    invoke-direct {p0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->updateStatusButton(I)V

    .line 655
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 658
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textViewStation:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lastPlayedStation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 659
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->clearAllTimers()V

    .line 660
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textViewStation:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lastPlayedStation:Ljava/lang/String;

    .line 661
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->smallAd:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 663
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->advertisingController:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->initAds()V

    goto/16 :goto_0
.end method

.method public setStatusPlaying()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 960
    const-string v0, "stopped"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStatus(Ljava/lang/String;)V

    .line 961
    const-string v0, "playing"

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStatus(Ljava/lang/String;)V

    .line 962
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->statusButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 963
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->favoriteButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 964
    return-void
.end method

.method public setTrack(Ljava/lang/String;)V
    .locals 1
    .param p1, "track"    # Ljava/lang/String;

    .prologue
    .line 412
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textViewTrack:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 413
    return-void
.end method

.method public updateLyricsButton(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1012
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1014
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$15;

    invoke-direct {v1, p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$15;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1023
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->lyricsButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public updateMetadataFields(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 3
    .param p1, "metadata"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 422
    if-eqz p1, :cond_3

    .line 424
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    const-string v1, "callletters"

    invoke-virtual {p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    if-nez v1, :cond_0

    .line 426
    const-string v1, "stationid"

    invoke-virtual {p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStation(Ljava/lang/String;)V

    .line 427
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->advertisingController:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    const-string v1, "callletters"

    invoke-virtual {p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->setCallLetters(Ljava/lang/String;)V

    .line 436
    :goto_0
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 437
    const-string v1, "artist"

    invoke-virtual {p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setArtist(Ljava/lang/String;)V

    .line 438
    const-string v1, "track"

    invoke-virtual {p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setTrack(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setLyricsButton()V

    .line 443
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->fetchLogos(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 470
    :goto_1
    return-void

    .line 431
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStation(Ljava/lang/String;)V

    .line 432
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->advertisingController:Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRAdControllerPlayer;->setCallLetters(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :cond_1
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v0

    .line 447
    .local v0, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v0, :cond_2

    .line 448
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStation(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setArtist(Ljava/lang/String;)V

    .line 454
    :goto_2
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setTrack(Ljava/lang/String;)V

    .line 455
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setMediaCover(Ljava/lang/String;)V

    goto :goto_1

    .line 451
    :cond_2
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStation(Ljava/lang/String;)V

    .line 452
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setArtist(Ljava/lang/String;)V

    goto :goto_2

    .line 459
    .end local v0    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    :cond_3
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v0

    .line 460
    .restart local v0    # "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v0, :cond_4

    .line 461
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStation(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setArtist(Ljava/lang/String;)V

    .line 467
    :goto_3
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setTrack(Ljava/lang/String;)V

    .line 468
    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setMediaCover(Ljava/lang/String;)V

    goto :goto_1

    .line 464
    :cond_4
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setStation(Ljava/lang/String;)V

    .line 465
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->setArtist(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public updateSeekBar(Landroid/widget/SeekBar;II)V
    .locals 9
    .param p1, "seekbar"    # Landroid/widget/SeekBar;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    const/16 v8, 0x9

    .line 783
    iput p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->currentOffset:I

    .line 785
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 786
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setMax(I)V

    .line 788
    div-int/lit16 v4, p2, 0x3e8

    .line 789
    .local v4, "seekInSeconds":I
    sub-int v6, p3, p2

    div-int/lit16 v1, v6, 0x3e8

    .line 792
    .local v1, "remainingInSeconds":I
    const-string v3, ""

    .line 793
    .local v3, "seekInMinutes":Ljava/lang/String;
    div-int/lit8 v6, v4, 0x3c

    if-gt v6, v8, :cond_0

    .line 794
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 796
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v7, v4, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 797
    const-string v5, ""

    .line 798
    .local v5, "sseekInSeconds":Ljava/lang/String;
    rem-int/lit8 v6, v4, 0x3c

    if-gt v6, v8, :cond_1

    .line 799
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 801
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v7, v4, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 804
    const-string v0, ""

    .line 805
    .local v0, "remainingInMinutes":Ljava/lang/String;
    div-int/lit8 v6, v1, 0x3c

    if-gt v6, v8, :cond_2

    .line 806
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 808
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v7, v1, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    const-string v2, ""

    .line 810
    .local v2, "sRemainingInSeconds":Ljava/lang/String;
    rem-int/lit8 v6, v1, 0x3c

    if-gt v6, v8, :cond_3

    .line 811
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 813
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    rem-int/lit8 v7, v1, 0x3c

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 815
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textSeekTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->textRemainingTime:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 817
    return-void
.end method

.method public updateVolume()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 948
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 949
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 950
    .local v0, "audio":Landroid/media/AudioManager;
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 951
    .local v1, "inVolume":F
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->volumeBar:Landroid/widget/SeekBar;

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 953
    .end local v0    # "audio":Landroid/media/AudioManager;
    .end local v1    # "inVolume":F
    :cond_0
    return-void
.end method
