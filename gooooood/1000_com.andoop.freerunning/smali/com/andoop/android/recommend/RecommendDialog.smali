.class public Lcom/andoop/android/recommend/RecommendDialog;
.super Landroid/app/Dialog;
.source "RecommendDialog.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x15180

.field private static final KEY_RECOMMEND_LASTTIME_END:Ljava/lang/String; = "KEY_RECOMMEND_LASTTIME_END"

.field private static final KEY_RECOMMEND_LASTTIME_START:Ljava/lang/String; = "KEY_RECOMMEND_LASTTIME_START"

.field private static final KEY_RECOMMEND_LAST_GAME:Ljava/lang/String; = "KEY_RECOMMEND_LAST_GAME"

.field public static final KEY_RECOMMEND_TIMEOUT:Ljava/lang/String; = "KEY_RECOMMEND_TIMEOUT"


# instance fields
.field private final mActivity:Lcom/andoop/android/engine/BaseActivity;

.field private mGame:Lcom/andoop/android/common/GameData;

.field private mIsInstalled:Z

.field private final mMoreDialog:Lcom/andoop/android/recommend/MoreDialog;

.field private final mRunAtEnd:Ljava/lang/Runnable;

.field private final mRunAtStart:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/andoop/android/engine/BaseActivity;Lcom/andoop/android/recommend/MoreDialog;)V
    .locals 4
    .param p1, "activity"    # Lcom/andoop/android/engine/BaseActivity;
    .param p2, "moreDialog"    # Lcom/andoop/android/recommend/MoreDialog;

    .prologue
    const/16 v3, 0x400

    .line 46
    const/high16 v2, 0x7f050000

    invoke-direct {p0, p1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 33
    new-instance v2, Lcom/andoop/android/recommend/RecommendDialog$1;

    invoke-direct {v2, p0}, Lcom/andoop/android/recommend/RecommendDialog$1;-><init>(Lcom/andoop/android/recommend/RecommendDialog;)V

    iput-object v2, p0, Lcom/andoop/android/recommend/RecommendDialog;->mRunAtStart:Ljava/lang/Runnable;

    .line 39
    new-instance v2, Lcom/andoop/android/recommend/RecommendDialog$2;

    invoke-direct {v2, p0}, Lcom/andoop/android/recommend/RecommendDialog$2;-><init>(Lcom/andoop/android/recommend/RecommendDialog;)V

    iput-object v2, p0, Lcom/andoop/android/recommend/RecommendDialog;->mRunAtEnd:Ljava/lang/Runnable;

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/andoop/android/recommend/RecommendDialog;->requestWindowFeature(I)Z

    .line 49
    const/16 v0, 0x400

    .line 50
    .local v0, "fullscreen":I
    invoke-virtual {p0}, Lcom/andoop/android/recommend/RecommendDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 52
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/andoop/android/recommend/RecommendDialog;->setContentView(I)V

    .line 54
    invoke-virtual {p0}, Lcom/andoop/android/recommend/RecommendDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 55
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x3f5eb852    # 0.87f

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 56
    invoke-virtual {p0}, Lcom/andoop/android/recommend/RecommendDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 58
    iput-object p1, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    .line 59
    iput-object p2, p0, Lcom/andoop/android/recommend/RecommendDialog;->mMoreDialog:Lcom/andoop/android/recommend/MoreDialog;

    .line 60
    invoke-direct {p0}, Lcom/andoop/android/recommend/RecommendDialog;->initGame()V

    .line 61
    return-void
.end method

.method static synthetic access$0(Lcom/andoop/android/recommend/RecommendDialog;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/andoop/android/recommend/RecommendDialog;->showAt(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1(Lcom/andoop/android/recommend/RecommendDialog;)Lcom/andoop/android/engine/BaseActivity;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    return-object v0
.end method

.method static synthetic access$2(Lcom/andoop/android/recommend/RecommendDialog;)Lcom/andoop/android/common/GameData;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/andoop/android/recommend/RecommendDialog;->mGame:Lcom/andoop/android/common/GameData;

    return-object v0
.end method

.method private initGame()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    iput-boolean v4, p0, Lcom/andoop/android/recommend/RecommendDialog;->mIsInstalled:Z

    .line 90
    iget-object v2, p0, Lcom/andoop/android/recommend/RecommendDialog;->mMoreDialog:Lcom/andoop/android/recommend/MoreDialog;

    iget-object v1, v2, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    .line 91
    .local v1, "myNotInstalled":Ljava/util/List;, "Ljava/util/List<Lcom/andoop/android/common/GameData;>;"
    iget-object v2, p0, Lcom/andoop/android/recommend/RecommendDialog;->mMoreDialog:Lcom/andoop/android/recommend/MoreDialog;

    iget-object v0, v2, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    .line 92
    .local v0, "myAll":Ljava/util/List;, "Ljava/util/List<Lcom/andoop/android/common/GameData;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 93
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/andoop/android/recommend/RecommendDialog;->mIsInstalled:Z

    .line 122
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/andoop/android/common/GameData;

    iput-object v2, p0, Lcom/andoop/android/recommend/RecommendDialog;->mGame:Lcom/andoop/android/common/GameData;

    .line 98
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Lcom/andoop/android/recommend/RecommendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/andoop/android/common/RemoteImageView;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Lcom/andoop/android/common/RemoteImageView;->setBackgroundResource(I)V

    .line 99
    const v2, 0x7f06000f

    invoke-virtual {p0, v2}, Lcom/andoop/android/recommend/RecommendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/andoop/android/recommend/RecommendDialog;->mGame:Lcom/andoop/android/common/GameData;

    iget-object v3, v3, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    const v2, 0x7f060010

    invoke-virtual {p0, v2}, Lcom/andoop/android/recommend/RecommendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/andoop/android/recommend/RecommendDialog;->mGame:Lcom/andoop/android/common/GameData;

    iget-object v3, v3, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    const v2, 0x7f06000d

    invoke-virtual {p0, v2}, Lcom/andoop/android/recommend/RecommendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/andoop/android/recommend/RecommendDialog$3;

    invoke-direct {v3, p0}, Lcom/andoop/android/recommend/RecommendDialog$3;-><init>(Lcom/andoop/android/recommend/RecommendDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Lcom/andoop/android/recommend/RecommendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lcom/andoop/android/recommend/RecommendDialog$4;

    invoke-direct {v3, p0}, Lcom/andoop/android/recommend/RecommendDialog$4;-><init>(Lcom/andoop/android/recommend/RecommendDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v2, 0x7f060011

    invoke-virtual {p0, v2}, Lcom/andoop/android/recommend/RecommendDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    new-instance v3, Lcom/andoop/android/recommend/RecommendDialog$5;

    invoke-direct {v3, p0}, Lcom/andoop/android/recommend/RecommendDialog$5;-><init>(Lcom/andoop/android/recommend/RecommendDialog;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private showAt(Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-string v9, "KEY_RECOMMEND_LAST_GAME"

    .line 72
    iget-boolean v6, p0, Lcom/andoop/android/recommend/RecommendDialog;->mIsInstalled:Z

    if-eqz v6, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v6, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    const-wide/16 v7, 0x0

    invoke-virtual {v6, p1, v7, v8}, Lcom/andoop/android/engine/BaseActivity;->getData(Ljava/lang/String;J)J

    move-result-wide v3

    .line 77
    .local v3, "lastShown":J
    iget-object v6, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    const-string v7, "KEY_RECOMMEND_TIMEOUT"

    const v8, 0x15180

    invoke-virtual {v6, v7, v8}, Lcom/andoop/android/engine/BaseActivity;->getData(Ljava/lang/String;I)I

    move-result v6

    mul-int/lit16 v5, v6, 0x3e8

    .line 78
    .local v5, "timeout":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 80
    .local v0, "current":J
    iget-object v6, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    const-string v7, "KEY_RECOMMEND_LAST_GAME"

    const/4 v7, 0x0

    invoke-virtual {v6, v9, v7}, Lcom/andoop/android/engine/BaseActivity;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "lastPkg":Ljava/lang/String;
    iget-object v6, p0, Lcom/andoop/android/recommend/RecommendDialog;->mGame:Lcom/andoop/android/common/GameData;

    iget-object v6, v6, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    int-to-long v6, v5

    add-long/2addr v6, v3

    cmp-long v6, v6, v0

    if-gez v6, :cond_0

    .line 82
    :cond_2
    iget-object v6, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/andoop/android/engine/BaseActivity;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    iget-object v6, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    const-string v7, "KEY_RECOMMEND_LAST_GAME"

    iget-object v7, p0, Lcom/andoop/android/recommend/RecommendDialog;->mGame:Lcom/andoop/android/common/GameData;

    iget-object v7, v7, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    invoke-virtual {v6, v9, v7}, Lcom/andoop/android/engine/BaseActivity;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0}, Lcom/andoop/android/recommend/RecommendDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public showAtEnd()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    iget-object v1, p0, Lcom/andoop/android/recommend/RecommendDialog;->mRunAtEnd:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method

.method public showAtStart()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/andoop/android/recommend/RecommendDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    iget-object v1, p0, Lcom/andoop/android/recommend/RecommendDialog;->mRunAtStart:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/andoop/android/engine/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method
