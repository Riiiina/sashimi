.class public Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
.super Landroid/widget/ListView;
.source "BlurbListWidget.java"

# interfaces
.implements Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$AdsView;,
        Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;,
        Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;
    }
.end annotation


# static fields
.field public static defaultDrawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;


# instance fields
.field protected adapter:Landroid/widget/BaseAdapter;

.field protected blurbList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;",
            ">;"
        }
    .end annotation
.end field

.field private drawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

.field protected hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

.field protected headerView:Landroid/view/View;

.field protected inited:Z

.field protected loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

.field protected loadingInProgress:Z

.field protected maxListSize:I

.field protected next:Ljava/lang/String;

.field protected scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->defaultDrawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->next:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loadingInProgress:Z

    .line 52
    iput-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->maxListSize:I

    .line 63
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->defaultDrawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;-><init>(Landroid/content/res/Resources;)V

    .line 64
    :goto_0
    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->drawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    .line 81
    iput-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    .line 82
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->adapter:Landroid/widget/BaseAdapter;

    .line 166
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 194
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->init(Landroid/content/Context;)V

    .line 195
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->defaultDrawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attributes"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 198
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->next:Ljava/lang/String;

    .line 50
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loadingInProgress:Z

    .line 52
    iput-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    .line 55
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->maxListSize:I

    .line 63
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->defaultDrawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;-><init>(Landroid/content/res/Resources;)V

    .line 64
    :goto_0
    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->drawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    .line 81
    iput-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    .line 82
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->adapter:Landroid/widget/BaseAdapter;

    .line 166
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 199
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->init(Landroid/content/Context;)V

    .line 201
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->defaultDrawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->drawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    return-object v0
.end method

.method private blurbListChanged()V
    .locals 1

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->checkInited()V

    .line 249
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 250
    return-void
.end method

.method private checkInited()V
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->inited:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->inited:Z

    .line 245
    :cond_0
    return-void
.end method

.method public static formatTime(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 13
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "timestamp"    # I

    .prologue
    const-wide/16 v11, 0x3e8

    const/4 v10, 0x2

    const v9, 0x15180

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v11

    int-to-long v5, p1

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 322
    .local v1, "t":I
    const-string v2, ""

    .line 323
    .local v2, "text":Ljava/lang/String;
    const/16 v3, 0xe10

    if-ge v1, v3, :cond_0

    .line 324
    const v3, 0x7f07002a

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    div-int/lit8 v5, v1, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 337
    :goto_0
    return-object v2

    .line 325
    :cond_0
    if-ge v1, v9, :cond_1

    .line 326
    const v3, 0x7f07002b

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    div-int/lit16 v5, v1, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    rem-int/lit16 v5, v1, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 327
    :cond_1
    const v3, 0x2a300

    if-ge v1, v3, :cond_2

    .line 328
    const v3, 0x7f07002c

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/Object;

    div-int v5, v1, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    .line 329
    rem-int v5, v1, v9

    div-int/lit16 v5, v5, 0xe10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    .line 328
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 330
    :cond_2
    const v3, 0x93a80

    if-ge v1, v3, :cond_3

    .line 331
    const v3, 0x7f07002d

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    div-int v5, v1, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 334
    :cond_3
    invoke-static {v10}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 335
    .local v0, "dateFormat":Ljava/text/DateFormat;
    new-instance v3, Ljava/util/Date;

    int-to-long v4, p1

    mul-long/2addr v4, v11

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getBlurbAuthorInfo(Landroid/content/res/Resources;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Ljava/lang/String;
    .locals 5
    .param p0, "r"    # Landroid/content/res/Resources;
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 347
    const-string v0, ""

    .line 348
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getGenerationTime()I

    move-result v1

    if-lez v1, :cond_1

    .line 349
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getGenerationTime()I

    move-result v1

    invoke-static {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->formatTime(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v0

    .line 350
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const v1, 0x7f07002e

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_0
    :goto_0
    return-object v0

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasNickname()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getNickname()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v2, 0x7f070029

    .line 204
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 205
    const v1, 0x1090003

    .line 204
    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 207
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 210
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->inited:Z

    .line 211
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 212
    return-void
.end method


# virtual methods
.method public addBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)I
    .locals 5
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 259
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 260
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->maxListSize:I

    add-int/lit8 v2, v2, 0x32

    if-lt v1, v2, :cond_0

    iget v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->maxListSize:I

    if-lez v1, :cond_0

    .line 261
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x32

    if-lt v0, v1, :cond_1

    .line 265
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getChildCount()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-lt v1, v2, :cond_2

    .line 269
    invoke-virtual {p0, v4}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setTranscriptMode(I)V

    .line 273
    :goto_1
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbListChanged()V

    .line 274
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v3

    return v1

    .line 262
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 261
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 271
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setTranscriptMode(I)V

    goto :goto_1
.end method

.method public addBlurbs(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V
    .locals 6
    .param p1, "additionalBlurbs"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 284
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 285
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->checkInited()V

    .line 286
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 292
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getNext()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->next:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 300
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 302
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->next:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 303
    :cond_1
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHasMore(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;)V

    .line 313
    :goto_1
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbListChanged()V

    .line 314
    return-void

    .line 294
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 295
    .local v0, "b":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCategory()J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lstats/StatsTracker;->getInstance(Landroid/content/Context;)Lstats/StatsTracker;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ib_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lstats/StatsTracker;->track(Ljava/lang/String;)V

    goto :goto_0

    .line 305
    .end local v0    # "b":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    :cond_3
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHasMore(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;)V

    goto :goto_1

    .line 307
    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListCount()I

    move-result v1

    if-nez v1, :cond_5

    .line 308
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHasMore(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;)V

    goto :goto_1

    .line 311
    :cond_5
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE_LAST_TIME_ERROR:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHasMore(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;)V

    goto :goto_1
.end method

.method public getBlurbDrawer()Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->drawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    return-object v0
.end method

.method public getBlurbList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    return-object v0
.end method

.method public getHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    return-object v0
.end method

.method public loadMore()V
    .locals 2

    .prologue
    .line 183
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 184
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loadingInProgress:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loadingInProgress:Z

    .line 186
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    .line 187
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbListChanged()V

    .line 188
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->next:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;->loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V

    .line 190
    :cond_0
    return-void
.end method

.method public newBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V
    .locals 1
    .param p1, "list"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loadingInProgress:Z

    .line 255
    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->addBlurbs(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 256
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 370
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loadingInProgress:Z

    .line 373
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;->loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V

    .line 374
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbListChanged()V

    .line 375
    return-void
.end method

.method public setBlurb(ILcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 1
    .param p1, "location"    # I
    .param p2, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 278
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 279
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbListChanged()V

    .line 281
    return-void
.end method

.method public setBlurbDrawer(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;)V
    .locals 0
    .param p1, "drawer"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->drawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    .line 68
    return-void
.end method

.method public setBlurbLoader(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V
    .locals 0
    .param p1, "loader"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->checkInited()V

    .line 220
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    .line 221
    return-void
.end method

.method public setBlurbs(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V
    .locals 2
    .param p1, "blurbs"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 224
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    .line 227
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getListList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 228
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getNext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHasMore(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;)V

    .line 230
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    if-eq v0, v1, :cond_0

    .line 231
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getNext()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->next:Ljava/lang/String;

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbListChanged()V

    .line 234
    return-void

    .line 229
    :cond_1
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    goto :goto_0
.end method

.method public setHasMore(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;)V
    .locals 0
    .param p1, "hasMoreLines"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    .line 216
    return-void
.end method

.method public setHeaderView(Landroid/view/View;)V
    .locals 0
    .param p1, "headerView"    # Landroid/view/View;

    .prologue
    .line 365
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->checkInited()V

    .line 366
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    .line 367
    return-void
.end method

.method public setMaxListSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 237
    iput p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->maxListSize:I

    .line 238
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .prologue
    .line 380
    .local p1, "listener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;

    invoke-direct {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 418
    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .prologue
    .line 424
    .local p1, "listener":Landroid/widget/AdapterView$OnItemLongClickListener;, "Landroid/widget/AdapterView$OnItemLongClickListener;"
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;

    invoke-direct {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$4;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 451
    return-void
.end method
