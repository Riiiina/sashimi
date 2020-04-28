.class public Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
.super Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;
.source "IHRConfigurationClient.java"


# static fields
.field public static ctxt:Landroid/content/Context; = null

.field public static final kAccessClear:I = 0x2

.field public static final kAccessFetch:I = 0x0

.field public static final kAccessForce:I = -0x1

.field public static final kAccessWrite:I = 0x1

.field protected static final kConfigurationTimeoutMs:I = 0xea60

.field protected static final kConfigurationTimeoutMsLong:I = 0xea60

.field protected static final kKeyAutoplay:J = -0x33a5ffa85f695ee3L

.field protected static final kKeyAutoupdateWarnInterval:J = 0x7692aa7b567449b2L

.field protected static final kKeyClientID:J = -0x53810a030843d15dL

.field public static final kKeyDebugModeEnabled:J = 0x1aeb15fd81f08af0L

.field protected static final kKeyDefaultCity:J = 0x29d4d56235fc445eL

.field protected static final kKeyDontWarnAboutCarrierDataCharges:J = -0x111e065835ed9ab3L

.field protected static final kKeyDontWarnAboutOptimalUsage:J = -0x521adf7bf175e9c2L

.field protected static final kKeyFavorites:J = 0x4e61e97dea9b09ddL

.field protected static final kKeyLocalStationsXML:J = 0xd20bf0494d61727L

.field protected static final kKeyTaggedSongs:J = 0x5334d89a231d5864L

.field private static mShared:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;


# instance fields
.field private mCacheAutoplay:Ljava/lang/String;

.field private mCacheCityNames:Ljava/util/List;

.field private mCacheFormatNames:Ljava/util/List;

.field private mCachePremiumChannels:Ljava/util/List;

.field private mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

.field private mCacheStationsByIndex:[Lcom/clearchannel/iheartradio/model/IHRStation;

.field private mCacheStationsByLetters:Ljava/util/Map;

.field private mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

.field public mDontWarnAboutCarrierDataCharges:Z

.field public mDontWarnAboutOptimalUsage:Z

.field protected mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field private mParametersCommon:Ljava/lang/String;

.field private mParametersUnique:Ljava/lang/String;

.field private mPendingRequest:I

.field private mStatus:Ljava/lang/String;

.field private mStop:Ljava/lang/Runnable;

.field protected mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;-><init>()V

    .line 93
    const-wide v0, -0x111e065835ed9ab3L    # -1.330702249918214E226

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getBoolean(J)Z

    move-result v0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDontWarnAboutCarrierDataCharges:Z

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDontWarnAboutOptimalUsage:Z

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mPendingRequest:I

    .line 104
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    return-object v0
.end method

.method static synthetic access$1(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public static isDebug(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 314
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 316
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 321
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 322
    const/4 v3, 0x1

    .line 324
    :goto_0
    return v3

    .line 317
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 318
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    move v3, v5

    .line 319
    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v3, v5

    .line 324
    goto :goto_0
.end method

.method public static shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mShared:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;-><init>()V

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mShared:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    .line 89
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mShared:Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    return-object v0
.end method


# virtual methods
.method protected GPSFailed()V
    .locals 3

    .prologue
    .line 1043
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    .line 1052
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-nez v1, :cond_0

    .line 1067
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->ctxt:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1068
    .local v0, "altdlg":Landroid/app/AlertDialog;
    const-string v1, "Location Services Alert"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1069
    const-string v1, "Your device\'s location services cannot find your location. Please ensure that location services are enabled and a connection is available and try again."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1070
    const-string v1, "OK"

    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$2;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$2;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1077
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1079
    .end local v0    # "altdlg":Landroid/app/AlertDialog;
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-eqz v1, :cond_1

    .line 1081
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->informNoGPS()V

    .line 1083
    :cond_1
    return-void

    .line 1053
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public accessFavorites(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 2
    .param p1, "inAction"    # I

    .prologue
    .line 338
    const-string v0, "favorites"

    .line 340
    .local v0, "key":Ljava/lang/String;
    if-lez p1, :cond_2

    .line 341
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v1, :cond_1

    .line 342
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->clear()V

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceWritePreference(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRVector;)V

    .line 345
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 353
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    return-object v1

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v1, :cond_3

    if-gez p1, :cond_4

    :cond_3
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyStringsInto(Ljava/lang/String;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 349
    :cond_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchPreference(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 350
    :cond_5
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v1, :cond_1

    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mFavorited:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    goto :goto_0
.end method

.method public accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 2
    .param p1, "inAction"    # I

    .prologue
    .line 361
    const-string v0, "tagged"

    .line 363
    .local v0, "key":Ljava/lang/String;
    if-lez p1, :cond_2

    .line 364
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v1, :cond_1

    .line 365
    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->clear()V

    .line 367
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceWritePreference(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRVector;)V

    .line 368
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;Ljava/util/Collection;)Z

    .line 376
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    return-object v1

    .line 371
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v1, :cond_3

    if-gez p1, :cond_4

    :cond_3
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyStringsInto(Ljava/lang/String;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 372
    :cond_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchPreference(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 373
    :cond_5
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v1, :cond_1

    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    goto :goto_0
.end method

.method public addFavorite(Ljava/lang/String;)V
    .locals 1
    .param p1, "callLetters"    # Ljava/lang/String;

    .prologue
    .line 398
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessFavorites(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessFavorites(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 403
    return-void
.end method

.method public addTaggedSong(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "track"    # Ljava/lang/String;

    .prologue
    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, "result":Z
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 428
    :goto_0
    return v1

    .line 410
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->locateTagged(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_2

    .line 411
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 412
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mTagged:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 414
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 416
    const/4 v0, 0x1

    :cond_2
    move v1, v0

    .line 428
    goto :goto_0
.end method

.method public adsDartPrefix()Ljava/lang/String;
    .locals 3

    .prologue
    .line 888
    const/16 v0, 0xab

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchString(ILandroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public adsPositionForPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "inPurpose"    # Ljava/lang/String;

    .prologue
    .line 892
    const/16 v0, 0xac

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchString(ILandroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cachePremiumItem(Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 2
    .param p1, "inItem"    # Ljava/util/ArrayList;
    .param p2, "inOrPause"    # Z
    .param p3, "inSite"    # Ljava/lang/String;

    .prologue
    .line 838
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 840
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 841
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 843
    if-eqz p2, :cond_0

    const/16 v1, 0xcd

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(ILjava/util/List;)V

    .line 844
    return-void

    .line 843
    :cond_0
    const/16 v1, 0xcc

    goto :goto_0
.end method

.method public channelsCount()I
    .locals 2

    .prologue
    .line 737
    const/16 v0, 0x8d

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method public citiesCount()I
    .locals 2

    .prologue
    .line 712
    const/16 v0, 0x83

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method public clearServiceCache()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 959
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    .line 960
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheAutoplay:Ljava/lang/String;

    .line 961
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheCityNames:Ljava/util/List;

    .line 962
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheFormatNames:Ljava/util/List;

    .line 963
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    .line 964
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByIndex:[Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 965
    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByLetters:Ljava/util/Map;

    .line 966
    return-void
.end method

.method protected compareVersions(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p1, "lhs"    # Ljava/lang/String;
    .param p2, "rhs"    # Ljava/lang/String;

    .prologue
    .line 934
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 v11, 0x0

    .line 955
    :goto_0
    return v11

    .line 935
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "lhsLength":I
    if-nez v4, :cond_2

    .end local v4    # "lhsLength":I
    :cond_1
    const/4 v11, -0x1

    goto :goto_0

    .line 936
    .restart local v4    # "lhsLength":I
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    .local v8, "rhsLength":I
    if-nez v8, :cond_4

    .end local v8    # "rhsLength":I
    :cond_3
    const/4 v11, 0x1

    goto :goto_0

    .line 938
    .restart local v8    # "rhsLength":I
    :cond_4
    const/4 v6, 0x0

    .local v6, "r":I
    move v2, v6

    .local v2, "l":I
    move v1, v6

    .local v1, "i":I
    :goto_1
    const/4 v11, 0x3

    if-lt v1, v11, :cond_5

    .line 955
    const/4 v11, 0x0

    goto :goto_0

    .line 939
    :cond_5
    const/4 v5, 0x0

    .local v5, "lhsVersion":I
    move v10, v2

    .local v10, "start":I
    move v3, v2

    .end local v2    # "l":I
    .local v3, "l":I
    :goto_2
    if-lt v3, v4, :cond_8

    .line 943
    :cond_6
    if-ge v10, v3, :cond_d

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "l":I
    .restart local v2    # "l":I
    invoke-virtual {p1, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 945
    :goto_3
    const/4 v9, 0x0

    .local v9, "rhsVersion":I
    move v10, v6

    move v7, v6

    .end local v6    # "r":I
    .local v7, "r":I
    :goto_4
    if-lt v7, v8, :cond_9

    .line 949
    :cond_7
    if-ge v10, v7, :cond_c

    add-int/lit8 v6, v7, 0x1

    .end local v7    # "r":I
    .restart local v6    # "r":I
    invoke-virtual {p2, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 951
    :goto_5
    if-ge v5, v9, :cond_a

    const/4 v11, -0x1

    goto :goto_0

    .line 940
    .end local v2    # "l":I
    .end local v9    # "rhsVersion":I
    .restart local v3    # "l":I
    :cond_8
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, "c":C
    const/16 v11, 0x30

    if-lt v0, v11, :cond_6

    const/16 v11, 0x39

    if-gt v0, v11, :cond_6

    .line 939
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "l":I
    .restart local v2    # "l":I
    move v3, v2

    .end local v2    # "l":I
    .restart local v3    # "l":I
    goto :goto_2

    .line 946
    .end local v0    # "c":C
    .end local v3    # "l":I
    .end local v6    # "r":I
    .restart local v2    # "l":I
    .restart local v7    # "r":I
    .restart local v9    # "rhsVersion":I
    :cond_9
    invoke-virtual {p2, v7}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0    # "c":C
    const/16 v11, 0x30

    if-lt v0, v11, :cond_7

    const/16 v11, 0x39

    if-gt v0, v11, :cond_7

    .line 945
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "r":I
    .restart local v6    # "r":I
    move v7, v6

    .end local v6    # "r":I
    .restart local v7    # "r":I
    goto :goto_4

    .line 952
    .end local v0    # "c":C
    .end local v7    # "r":I
    .restart local v6    # "r":I
    :cond_a
    if-le v5, v9, :cond_b

    const/4 v11, 0x1

    goto :goto_0

    .line 938
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v6    # "r":I
    .restart local v7    # "r":I
    :cond_c
    move v6, v7

    .end local v7    # "r":I
    .restart local v6    # "r":I
    goto :goto_5

    .end local v2    # "l":I
    .end local v9    # "rhsVersion":I
    .restart local v3    # "l":I
    :cond_d
    move v2, v3

    .end local v3    # "l":I
    .restart local v2    # "l":I
    goto :goto_3
.end method

.method public configurationAvailable()V
    .locals 7

    .prologue
    const-wide v5, 0x7692aa7b567449b2L    # 1.469420848704511E263

    const/4 v4, 0x0

    .line 193
    const/4 v1, 0x0

    .line 195
    .local v1, "update":I
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 196
    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->remove(Ljava/lang/Runnable;)V

    .line 197
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    .line 202
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidUpdateURL:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-boolean v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateEnabled:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidUpdateURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidVersion:Ljava/lang/String;

    const-string v3, "3.0.4"

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->compareVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-boolean v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateForced:Z

    if-eqz v2, :cond_3

    .line 204
    const/4 v1, 0x2

    .line 219
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-eqz v2, :cond_2

    if-nez v1, :cond_6

    .line 220
    :cond_2
    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationUpdate(I)V

    .line 226
    :goto_1
    return-void

    .line 206
    :cond_3
    invoke-static {v5, v6, v4}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(JI)I

    move-result v0

    .line 208
    .local v0, "interval":I
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget v2, v2, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateWarnInterval:I

    if-lt v0, v2, :cond_5

    .line 209
    :cond_4
    const/4 v0, 0x1

    .line 210
    const/4 v1, 0x1

    .line 215
    :goto_2
    invoke-static {v5, v6, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setInteger(JI)V

    goto :goto_0

    .line 212
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    .end local v0    # "interval":I
    :cond_6
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-boolean v3, v3, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateForced:Z

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidAutoupdateMessage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->askUpdate(ZLjava/lang/String;)V

    goto :goto_1
.end method

.method public configurationBegin(I)V
    .locals 2
    .param p1, "inSource"    # I

    .prologue
    const/4 v1, 0x0

    .line 267
    packed-switch p1, :pswitch_data_0

    .line 275
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->PRODUCTION:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    sput-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->currentConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    .line 279
    :goto_0
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationContinue(I)V

    .line 281
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->configurationQuerying()V

    .line 285
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 286
    const/16 v0, 0x44d

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(II)V

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDontWarnAboutOptimalUsage:Z

    if-eqz v0, :cond_3

    .line 292
    :cond_1
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationOptimized(I)V

    .line 296
    :goto_2
    return-void

    .line 269
    :pswitch_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->PRODUCTION:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    sput-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->currentConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    goto :goto_0

    .line 272
    :pswitch_1
    sget-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;->STAGING:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    sput-object v0, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->currentConfiguration:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile$ConfigurationMode;

    goto :goto_0

    .line 288
    :cond_2
    iput p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mPendingRequest:I

    goto :goto_1

    .line 294
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->askOptimization()V

    goto :goto_2

    .line 267
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public configurationComplete(Z)V
    .locals 2
    .param p1, "inOffline"    # Z

    .prologue
    .line 186
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    const-string v1, "Ready"

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->updateStatus(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->configurationAcquired(Z)V

    .line 190
    :cond_0
    return-void
.end method

.method public configurationContinue(I)V
    .locals 4
    .param p1, "inFinish"    # I

    .prologue
    const v3, 0xea60

    .line 243
    if-nez p1, :cond_1

    .line 244
    iget-boolean v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDontWarnAboutCarrierDataCharges:Z

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    int-to-long v0, v2

    .line 246
    .local v0, "time":J
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$1;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$1;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)V

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    .line 247
    sget-object v2, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;J)Z

    .line 259
    .end local v0    # "time":J
    :goto_1
    return-void

    :cond_0
    move v2, v3

    .line 244
    goto :goto_0

    .line 250
    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-nez v2, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->terminate()V

    goto :goto_1

    .line 256
    :cond_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->informFinished()V

    goto :goto_1

    .line 251
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method public configurationOptimized(I)V
    .locals 3
    .param p1, "inAlways"    # I

    .prologue
    .line 262
    if-lez p1, :cond_0

    const-wide v0, -0x521adf7bf175e9c2L    # -1.3275454900374267E-87

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDontWarnAboutOptimalUsage:Z

    invoke-static {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setBoolean(JZ)V

    .line 263
    :cond_0
    return-void
.end method

.method protected configurationTimeout()V
    .locals 2

    .prologue
    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    .line 178
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-nez v0, :cond_0

    .line 179
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(II)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->askContinue()V

    goto :goto_0
.end method

.method public configurationUpdate(I)V
    .locals 2
    .param p1, "inUpdate"    # I

    .prologue
    .line 229
    if-nez p1, :cond_1

    .line 230
    const/16 v0, 0x66

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationComplete(Z)V

    .line 240
    :goto_0
    return-void

    .line 233
    :cond_0
    const/16 v0, 0x44e

    const/16 v1, 0xc

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    goto :goto_0

    .line 235
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    .line 236
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->terminate()V

    goto :goto_0

    .line 238
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRActivity;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;->mAndroidUpdateURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->openWebURL(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public copyStartup()Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;
    .locals 3

    .prologue
    .line 896
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    if-nez v1, :cond_0

    .line 897
    const/16 v1, 0xdd

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchBytes(ILandroid/os/Parcel;)[B

    move-result-object v0

    .line 899
    .local v0, "xml":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-eqz v1, :cond_0

    .line 900
    :try_start_0
    new-instance v1, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    invoke-direct {v1, v0}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;-><init>([B)V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    .end local v0    # "xml":[B
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStartup:Lcom/clearchannel/iheartradio/android/services/IHRConfigurationStartup;

    return-object v1

    .line 901
    .restart local v0    # "xml":[B
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deletePremiumItem(Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "inItem"    # Ljava/util/ArrayList;

    .prologue
    .line 847
    const/16 v0, 0xcb

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(ILjava/util/List;)V

    .line 848
    return-void
.end method

.method public do_updateStatusOnMain(Ljava/lang/String;)V
    .locals 2
    .param p1, "inStatus"    # Ljava/lang/String;

    .prologue
    .line 1089
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1090
    :cond_0
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$3;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$3;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)V

    .line 1101
    .local v0, "runner":Ljava/lang/Runnable;
    :goto_0
    sget-object v1, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->handle(Ljava/lang/Runnable;)Z

    .line 1102
    return-void

    .line 1094
    .end local v0    # "runner":Ljava/lang/Runnable;
    :cond_1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStatus:Ljava/lang/String;

    .line 1096
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$4;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient$4;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;)V

    .restart local v0    # "runner":Ljava/lang/Runnable;
    goto :goto_0
.end method

.method public featured()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 602
    const/16 v0, 0xa1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchFeaturedContent(ILandroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fetchChannel(I)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .locals 4
    .param p1, "inIndex"    # I

    .prologue
    .line 764
    const/4 v0, 0x0

    .line 766
    .local v0, "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 767
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 770
    .restart local v0    # "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    :cond_0
    if-nez v0, :cond_1

    .line 771
    const/16 v1, 0x8e

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(I)Landroid/os/Parcel;

    move-result-object v2

    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    .end local v0    # "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 774
    .restart local v0    # "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    :cond_1
    return-object v0
.end method

.method public fetchChannel(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    .locals 6
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 778
    const/4 v2, 0x0

    .line 780
    .local v2, "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    if-eqz v3, :cond_0

    if-eqz p1, :cond_0

    .line 781
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 783
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 790
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_0
    if-nez v2, :cond_1

    .line 791
    const/16 v3, 0x90

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v4

    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-direct {v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;-><init>()V

    invoke-virtual {p0, v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .end local v2    # "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 794
    .restart local v2    # "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    :cond_1
    return-object v2

    .line 784
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_2
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 785
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    .line 783
    .restart local v2    # "result":Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public fetchCity(I)Lcom/clearchannel/iheartradio/model/IHRCity;
    .locals 3
    .param p1, "inIndex"    # I

    .prologue
    .line 724
    const/16 v0, 0x84

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(I)Landroid/os/Parcel;

    move-result-object v1

    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRCity;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRCity;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRCity;

    return-object p0
.end method

.method public fetchCity(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRCity;
    .locals 3
    .param p1, "inName"    # Ljava/lang/String;

    .prologue
    .line 728
    const/16 v0, 0x86

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRCity;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRCity;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRCity;

    return-object p0
.end method

.method public fetchCityNames()Ljava/util/List;
    .locals 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheCityNames:Ljava/util/List;

    if-nez v0, :cond_0

    .line 717
    const/16 v0, 0x86

    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStrings(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheCityNames:Ljava/util/List;

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheCityNames:Ljava/util/List;

    return-object v0
.end method

.method public fetchFormat(I)Lcom/clearchannel/iheartradio/model/IHRFormat;
    .locals 3
    .param p1, "inIndex"    # I

    .prologue
    .line 880
    const/16 v0, 0x7a

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(I)Landroid/os/Parcel;

    move-result-object v1

    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRFormat;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRFormat;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRFormat;

    return-object p0
.end method

.method public fetchFormat(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRFormat;
    .locals 3
    .param p1, "inName"    # Ljava/lang/String;

    .prologue
    .line 884
    const/16 v0, 0x7c

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRFormat;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRFormat;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRFormat;

    return-object p0
.end method

.method public fetchFormatNames()Ljava/util/List;
    .locals 6

    .prologue
    .line 864
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheFormatNames:Ljava/util/List;

    if-nez v3, :cond_1

    .line 865
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 866
    .local v1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v3, 0x7c

    const-string v4, ""

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStrings(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheFormatNames:Ljava/util/List;

    .line 868
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheFormatNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 873
    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheFormatNames:Ljava/util/List;

    .line 876
    .end local v1    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheFormatNames:Ljava/util/List;

    return-object v3

    .line 868
    .restart local v1    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 869
    .local v2, "name":Ljava/lang/Object;
    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const-string v5, "News"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const-string v5, "Sports"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const-string v5, "Video"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    const-string v5, "All"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 870
    check-cast v2, Ljava/lang/String;

    .end local v2    # "name":Ljava/lang/Object;
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public fetchLocal()Lcom/clearchannel/iheartradio/model/IHRLocal;
    .locals 4

    .prologue
    .line 918
    const/16 v1, 0xa3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRLocal;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/model/IHRLocal;-><init>()V

    invoke-virtual {p0, v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRLocal;

    .line 920
    .local v0, "result":Lcom/clearchannel/iheartradio/model/IHRLocal;
    if-nez v0, :cond_0

    .line 921
    const/16 v1, 0x44f

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(I)V

    .line 924
    :cond_0
    return-object v0
.end method

.method public fetchPremiumChannels()Ljava/util/List;
    .locals 3

    .prologue
    .line 741
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    if-nez v1, :cond_0

    .line 742
    const/4 v0, 0x0

    .line 745
    .local v0, "flat":Ljava/lang/String;
    const/16 v1, 0x92

    :try_start_0
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchString(ILandroid/os/Parcel;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 748
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->fromString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    .line 752
    .end local v0    # "flat":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCachePremiumChannels:Ljava/util/List;

    return-object v1

    .line 746
    .restart local v0    # "flat":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public fetchPremiumItems(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "result":Ljava/util/List;
    const/16 v1, 0x93

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->fromString(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 760
    :goto_0
    return-object v0

    .line 758
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public formatsCount()I
    .locals 2

    .prologue
    .line 860
    const/16 v0, 0x79

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method public getAutoplayStation()Ljava/lang/String;
    .locals 3

    .prologue
    .line 432
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheAutoplay:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 433
    const/16 v0, 0xa2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchString(ILandroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheAutoplay:Ljava/lang/String;

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheAutoplay:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultCity()Lcom/clearchannel/iheartradio/model/IHRCity;
    .locals 3

    .prologue
    .line 441
    const/16 v0, 0xa3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    new-instance v2, Lcom/clearchannel/iheartradio/model/IHRCity;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/model/IHRCity;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRCity;

    return-object p0
.end method

.method public getLocalStationsXML()[B
    .locals 2

    .prologue
    .line 470
    const-wide v0, 0xd20bf0494d61727L

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getTaggedSongAtIndex(I)Lcom/clearchannel/iheartradio/model/IHRTaggedSong;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 460
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRTaggedSong;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRTaggedSong;-><init>()V

    .line 461
    .local v0, "result":Lcom/clearchannel/iheartradio/model/IHRTaggedSong;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    .line 463
    .local v1, "tagged":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    mul-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/clearchannel/iheartradio/model/IHRTaggedSong;->mArtist:Ljava/lang/String;

    .line 464
    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/clearchannel/iheartradio/model/IHRTaggedSong;->mTrack:Ljava/lang/String;

    .line 466
    return-object v0
.end method

.method public getTaggedSongsSize()I
    .locals 1

    .prologue
    .line 473
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hasLocal()Z
    .locals 2

    .prologue
    .line 914
    const/16 v0, 0x67

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFavorite(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callLetters"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->locateFavorited(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOffline()Z
    .locals 2

    .prologue
    .line 113
    const/16 v0, 0x68

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSongTagged(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "track"    # Ljava/lang/String;

    .prologue
    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->locateTagged(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public locateFavorited(Ljava/lang/String;)I
    .locals 1
    .param p1, "inFavorited"    # Ljava/lang/String;

    .prologue
    .line 357
    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessFavorites(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public locateTagged(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "inArtist"    # Ljava/lang/String;
    .param p2, "inTrack"    # Ljava/lang/String;

    .prologue
    .line 380
    const/4 v2, -0x1

    .line 382
    .local v2, "result":I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 383
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v3

    .line 384
    .local v3, "tagged":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    .line 386
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 394
    .end local v0    # "count":I
    .end local v1    # "index":I
    .end local v3    # "tagged":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :cond_0
    :goto_1
    return v2

    .line 387
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    .restart local v3    # "tagged":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :cond_1
    invoke-virtual {v3, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 388
    div-int/lit8 v2, v1, 0x2

    .line 389
    goto :goto_1

    .line 386
    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public needsLoad()Z
    .locals 2

    .prologue
    .line 107
    const/16 v0, 0x66

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    const/16 v0, 0x65

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    .line 107
    goto :goto_0
.end method

.method protected networkFailed()V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    .line 165
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->terminate()V

    .line 173
    :goto_1
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->informNoNetwork()V

    goto :goto_1

    .line 166
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 971
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->gMain:Lcom/clearchannel/iheartradio/android/model/IHRThreadable;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRThreadable;->remove(Ljava/lang/Runnable;)V

    .line 972
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mStop:Ljava/lang/Runnable;

    .line 975
    :cond_0
    invoke-super {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->onDestroy()V

    .line 976
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1004
    const-string v3, "action"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "action":Ljava/lang/String;
    const-string v3, "notification"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1007
    const-string v3, "name"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 1010
    .local v1, "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v3, "details"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1011
    const-string v3, "details"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->assign(Landroid/os/Bundle;)V

    .line 1014
    :cond_0
    const-string v3, "endingOfflineMode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1015
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->clearServiceCache()V

    .line 1018
    :cond_1
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->common()Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->notifyOnMainThread(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    .line 1039
    .end local v1    # "details":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 1019
    :cond_3
    const-string v3, "status"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1020
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;->updateStatus(Ljava/lang/String;)V

    goto :goto_0

    .line 1021
    :cond_4
    const-string v3, "startup"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1022
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationAvailable()V

    goto :goto_0

    .line 1023
    :cond_5
    const-string v3, "noconnection"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1024
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->networkFailed()V

    goto :goto_0

    .line 1025
    :cond_6
    const-string v3, "offline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1026
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationComplete(Z)V

    goto :goto_0

    .line 1027
    :cond_7
    const-string v3, "complete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1028
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationComplete(Z)V

    goto :goto_0

    .line 1029
    :cond_8
    const-string v3, "location"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1033
    const-string v3, "nogps"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1036
    sput-object p1, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->ctxt:Landroid/content/Context;

    .line 1037
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->GPSFailed()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "inName"    # Landroid/content/ComponentName;
    .param p2, "inBinder"    # Landroid/os/IBinder;

    .prologue
    const/4 v0, -0x1

    .line 985
    invoke-super {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 988
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessFavorites(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 989
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 992
    :try_start_0
    iget v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mPendingRequest:I

    if-ltz v0, :cond_0

    .line 993
    const/16 v0, 0x44d

    iget v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mPendingRequest:I

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(II)V

    .line 995
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mPendingRequest:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 999
    :cond_0
    :goto_0
    sget-object v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.clearchannel.iheartradio.configuration"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1000
    return-void

    .line 997
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public parameters(Z)Ljava/lang/String;
    .locals 3
    .param p1, "inUnique"    # Z

    .prologue
    .line 124
    const-string v0, ""

    .line 127
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mParametersUnique:Ljava/lang/String;

    if-nez v1, :cond_0

    const/16 v1, 0x6d

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mParametersUnique:Ljava/lang/String;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mParametersUnique:Ljava/lang/String;

    .line 138
    :goto_0
    return-object v0

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mParametersCommon:Ljava/lang/String;

    if-nez v1, :cond_2

    const/16 v1, 0x6c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchString(ILandroid/os/Parcel;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mParametersCommon:Ljava/lang/String;

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mParametersCommon:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public playPremiumItem(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "inItem"    # Ljava/util/ArrayList;
    .param p2, "inSite"    # Ljava/lang/String;

    .prologue
    .line 829
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 831
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 832
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 834
    const/16 v1, 0xca

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(ILjava/util/List;)V

    .line 835
    return-void
.end method

.method public progressForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 2
    .param p1, "inURL"    # Ljava/lang/String;

    .prologue
    .line 851
    const/16 v0, 0xc9

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchHashtable(ILandroid/os/Parcel;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v0

    return-object v0
.end method

.method public refreshPremium(Ljava/lang/String;)V
    .locals 1
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 824
    if-nez p1, :cond_0

    const/16 v0, 0x95

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(I)V

    .line 826
    :goto_0
    return-void

    .line 825
    :cond_0
    const/16 v0, 0x94

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public removeAutoplayStation()V
    .locals 2

    .prologue
    .line 510
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheAutoplay:Ljava/lang/String;

    .line 512
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->setAutoplayStation(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public removeFavorite(Ljava/lang/String;)V
    .locals 2
    .param p1, "callLetters"    # Ljava/lang/String;

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->getAutoplayStation()Ljava/lang/String;

    move-result-object v0

    .local v0, "autoplay":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->removeAutoplayStation()V

    .line 522
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessFavorites(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->remove(Ljava/lang/Object;)Z

    .line 523
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessFavorites(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 528
    return-void
.end method

.method public removeLocalStationsXML()V
    .locals 2

    .prologue
    .line 531
    const-wide v0, 0xd20bf0494d61727L

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->remove(J)Landroid/content/SharedPreferences$Editor;

    .line 532
    return-void
.end method

.method public removeTaggedSong(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 535
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move-result-object v0

    .line 537
    .local v0, "tagged":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->remove(I)Ljava/lang/Object;

    .line 538
    mul-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->remove(I)Ljava/lang/Object;

    .line 540
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->accessTagged(I)Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 545
    return-void
.end method

.method public removeTaggedSong(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "artist"    # Ljava/lang/String;
    .param p2, "track"    # Ljava/lang/String;

    .prologue
    .line 548
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->locateTagged(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 550
    .local v0, "index":I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->removeTaggedSong(I)V

    .line 566
    :cond_0
    return-void
.end method

.method public setAutoplayStation(Ljava/lang/String;)V
    .locals 1
    .param p1, "callLetters"    # Ljava/lang/String;

    .prologue
    .line 569
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheAutoplay:Ljava/lang/String;

    .line 571
    const/16 v0, 0xb5

    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(ILjava/lang/String;)V

    .line 572
    return-void
.end method

.method public setDefaultCity(Ljava/lang/String;)V
    .locals 2
    .param p1, "defaultCity"    # Ljava/lang/String;

    .prologue
    .line 575
    const-wide v0, 0x29d4d56235fc445eL    # 3.548333333518456E-107

    invoke-static {v0, v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setString(JLjava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->removeLocalStationsXML()V

    .line 577
    return-void
.end method

.method public setDelegate(Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;)V
    .locals 0
    .param p1, "delegate"    # Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    .line 581
    return-void
.end method

.method public setDontWarnAboutCarrierDataCharges(Z)V
    .locals 3
    .param p1, "makePermanent"    # Z

    .prologue
    const/4 v2, 0x1

    .line 584
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDontWarnAboutCarrierDataCharges:Z

    .line 585
    if-eqz p1, :cond_0

    const-wide v0, -0x111e065835ed9ab3L    # -1.330702249918214E226

    invoke-static {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setBoolean(JZ)V

    .line 586
    :cond_0
    return-void
.end method

.method public setLocalStationsXML([B)V
    .locals 2
    .param p1, "xml"    # [B

    .prologue
    .line 589
    const-wide v0, 0xd20bf0494d61727L

    invoke-static {v0, v1, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->setBytes(J[B)V

    .line 590
    return-void
.end method

.method public siteAuthenticate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inUsername"    # Ljava/lang/String;
    .param p3, "inPassword"    # Ljava/lang/String;

    .prologue
    .line 818
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 820
    .local v0, "strings":[Ljava/lang/String;
    const/16 v1, 0xc4

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(I[Ljava/lang/String;)V

    .line 821
    return-void
.end method

.method public siteDiscard(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "inSite"    # Ljava/lang/String;
    .param p2, "inForget"    # Z

    .prologue
    .line 814
    if-eqz p2, :cond_0

    const/16 v0, 0xc3

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceTell(ILjava/lang/String;)V

    .line 815
    return-void

    .line 814
    :cond_0
    const/16 v0, 0xc2

    goto :goto_0
.end method

.method public siteHasAnyAuthenticated()Z
    .locals 2

    .prologue
    .line 798
    const/16 v0, 0xbf

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public siteHasArchives(Ljava/lang/String;)Z
    .locals 2
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 806
    const/16 v0, 0xc7

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public siteHasAuthenticated(Ljava/lang/String;)Z
    .locals 2
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 802
    const/16 v0, 0xc0

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public siteValidate(Ljava/lang/String;)Z
    .locals 2
    .param p1, "inSite"    # Ljava/lang/String;

    .prologue
    .line 810
    const/16 v0, 0xc1

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public splashShown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 299
    const/16 v0, 0x65

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationAvailable()V

    .line 309
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerSplash;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->isDebug()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->isSimulator()Z

    move-result v0

    if-nez v0, :cond_2

    const-wide v0, 0x1aeb15fd81f08af0L    # 5.221987775491973E-179

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getBoolean(J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 302
    :cond_1
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationBegin(I)V

    goto :goto_0

    .line 306
    :cond_2
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->configurationBegin(I)V

    goto :goto_0
.end method

.method public stationById(J)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 5
    .param p1, "streamId"    # J

    .prologue
    .line 666
    const/4 v2, 0x0

    .line 667
    .local v2, "result":Lcom/clearchannel/iheartradio/model/IHRStation;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v3, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->ctxt:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 669
    .local v0, "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_0
    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectStationByStationId(J)Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 688
    :goto_0
    return-object v2

    .line 670
    :catch_0
    move-exception v1

    .line 671
    .local v1, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v3, "IHRConfigurationClient"

    const-string v4, "Exception occurred while retrieving station by call letters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public stationCount()I
    .locals 2

    .prologue
    .line 598
    const/16 v0, 0x6f

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchInteger(ILandroid/os/Parcel;)I

    move-result v0

    return v0
.end method

.method public stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 5
    .param p1, "callLetters"    # Ljava/lang/String;

    .prologue
    .line 639
    const/4 v2, 0x0

    .line 640
    .local v2, "result":Lcom/clearchannel/iheartradio/model/IHRStation;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    sget-object v3, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->ctxt:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 642
    .local v0, "dh":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectStationByCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 661
    :goto_0
    return-object v2

    .line 643
    :catch_0
    move-exception v1

    .line 644
    .local v1, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const-string v3, "IHRConfigurationClient"

    const-string v4, "Exception occurred while retrieving station by call letters"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public stationForIndex(I)Lcom/clearchannel/iheartradio/model/IHRStation;
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 606
    const/4 v2, 0x0

    .line 608
    .local v2, "result":Lcom/clearchannel/iheartradio/model/IHRStation;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByIndex:[Lcom/clearchannel/iheartradio/model/IHRStation;

    if-nez v3, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationCount()I

    move-result v3

    new-array v3, v3, [Lcom/clearchannel/iheartradio/model/IHRStation;

    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByIndex:[Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 614
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 615
    const/16 v3, 0x70

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parcel(I)Landroid/os/Parcel;

    move-result-object v4

    new-instance v5, Lcom/clearchannel/iheartradio/model/IHRStation;

    invoke-direct {v5}, Lcom/clearchannel/iheartradio/model/IHRStation;-><init>()V

    invoke-virtual {p0, v3, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    .end local v2    # "result":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 617
    .restart local v2    # "result":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v2, :cond_1

    .line 618
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v1

    .line 619
    .local v1, "key":Ljava/lang/String;
    const/4 v0, 0x0

    .line 621
    .local v0, "found":Lcom/clearchannel/iheartradio/model/IHRStation;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByIndex:[Lcom/clearchannel/iheartradio/model/IHRStation;

    aput-object v2, v3, p1

    .line 623
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByLetters:Ljava/util/Map;

    if-nez v3, :cond_3

    .line 624
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByLetters:Ljava/util/Map;

    .line 629
    :goto_1
    if-nez v0, :cond_1

    .line 630
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByLetters:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    .end local v0    # "found":Lcom/clearchannel/iheartradio/model/IHRStation;
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-object v2

    .line 610
    :cond_2
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByIndex:[Lcom/clearchannel/iheartradio/model/IHRStation;

    array-length v3, v3

    if-ge p1, v3, :cond_0

    .line 611
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByIndex:[Lcom/clearchannel/iheartradio/model/IHRStation;

    aget-object v2, v3, p1

    goto :goto_0

    .line 626
    .restart local v0    # "found":Lcom/clearchannel/iheartradio/model/IHRStation;
    .restart local v1    # "key":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->mCacheStationsByLetters:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lcom/clearchannel/iheartradio/model/IHRStation;
    check-cast v0, Lcom/clearchannel/iheartradio/model/IHRStation;

    .restart local v0    # "found":Lcom/clearchannel/iheartradio/model/IHRStation;
    goto :goto_1
.end method

.method public streamForCallLetters(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p1, "inLetters"    # Ljava/lang/String;
    .param p2, "inAuthenticated"    # Z

    .prologue
    .line 692
    const/4 v0, 0x0

    .line 693
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    .line 695
    .local v1, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v1, :cond_0

    .line 696
    invoke-virtual {v1, p2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getBaseStreamURL(Z)Ljava/lang/String;

    move-result-object v0

    .line 699
    :cond_0
    if-eqz v0, :cond_1

    .line 700
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->parameters(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    :cond_1
    return-object v0
.end method

.method protected terminate()V
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/iheartradio;->finishActivity(I)V

    .line 155
    sget-object v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->finish()V

    .line 159
    return-void
.end method
