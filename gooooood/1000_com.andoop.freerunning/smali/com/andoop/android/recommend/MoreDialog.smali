.class public Lcom/andoop/android/recommend/MoreDialog;
.super Landroid/app/Dialog;
.source "MoreDialog.java"


# static fields
.field private static final DEFAULT_GAMES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/andoop/android/common/GameData;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_MORE_GAMES:Ljava/lang/String; = "KEY_MORE_GAMES"

.field private static final URL_MORE:Ljava/lang/String; = "http://w5.andoop.com/more/"


# instance fields
.field private final mActivity:Lcom/andoop/android/engine/BaseActivity;

.field public final mMyAll:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/andoop/android/common/GameData;",
            ">;"
        }
    .end annotation
.end field

.field public final mMyNotInstalled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/andoop/android/common/GameData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgNameSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v1, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    .line 40
    new-instance v0, Lcom/andoop/android/common/GameData;

    invoke-direct {v0}, Lcom/andoop/android/common/GameData;-><init>()V

    .line 41
    .local v0, "game":Lcom/andoop/android/common/GameData;
    const-string v1, "com.andoop.freerunning"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    .line 42
    const-string v1, "Free Running"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    .line 43
    const-string v1, "Simple and addictive STICK MAN Free Running game."

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    .line 44
    const-string v1, "http://market.android.com/publish/images/PAAAACrftbNmiXYcPawkw0JlUsBWhqL1si5Y2LQnO7uZnPKHUJkoH85qEo6rYsVICsRTOJuRIA_p8kVIQcBjgCcR7SMAzfqVaQAHxCeYVb737YwR_H_6UrMwUf_Y.png"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    .line 45
    sget-object v1, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/andoop/android/common/GameData;

    .end local v0    # "game":Lcom/andoop/android/common/GameData;
    invoke-direct {v0}, Lcom/andoop/android/common/GameData;-><init>()V

    .line 48
    .restart local v0    # "game":Lcom/andoop/android/common/GameData;
    const-string v1, "com.wooyy.android.bow"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    .line 49
    const-string v1, "Bow Man"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    .line 50
    const-string v1, "Classic Bow Man shooting game."

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    .line 51
    const-string v1, "http://market.android.com/publish/images/PAAAAFN_4aWZhWUifWyFo1S1_DULEKKqe1AAPW7ckW14_k2J68ZQBoFGmaHmmfAWXD_IdiLEi6lXomzMBgXVK_wHOmMAzfqVae4YL1X4Cx9XzHX8Hi8sa1rm7Wpr.png"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    .line 52
    sget-object v1, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v0, Lcom/andoop/android/common/GameData;

    .end local v0    # "game":Lcom/andoop/android/common/GameData;
    invoke-direct {v0}, Lcom/andoop/android/common/GameData;-><init>()V

    .line 55
    .restart local v0    # "game":Lcom/andoop/android/common/GameData;
    const-string v1, "com.nebera.app.fishing"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    .line 56
    const-string v1, "Fishing"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    .line 57
    const-string v1, "A fun fishing game."

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    .line 58
    const-string v1, "http://market.android.com/publish/images/PAAAADCi93LY_hqBEptYofnQ6OMtk4rs9w-2RnkhJ6nPWHRtXqXzr9EC9DEGQRpej0qdnFm6so7046lnRP4pQrdlxZwAzfqVafBk6HP380_rNbMuIAMwSuo4AWnO.png"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    .line 59
    sget-object v1, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v0, Lcom/andoop/android/common/GameData;

    .end local v0    # "game":Lcom/andoop/android/common/GameData;
    invoke-direct {v0}, Lcom/andoop/android/common/GameData;-><init>()V

    .line 62
    .restart local v0    # "game":Lcom/andoop/android/common/GameData;
    const-string v1, "com.andoop.shootapple_girl"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    .line 63
    const-string v1, "aShootApple Girl Edition"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    .line 64
    const-string v1, "Shoot the apple on the hot girl\'s head."

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    .line 65
    const-string v1, "http://market.android.com/publish/images/PAAAADkLiRaWEHsKEwr1kZNFuXso0DQ2evpWnzAgB2tKR9DSXeOJMyqXRz54BwiqPz027R6dqQlv80cDl5dK1b6zho4AzfqVaYy00C04jyiUxHSpcdAcXMve-ZN3.png"

    iput-object v1, v0, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    .line 66
    sget-object v1, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method

.method public constructor <init>(Lcom/andoop/android/engine/BaseActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/andoop/android/engine/BaseActivity;

    .prologue
    const/16 v2, 0x400

    .line 76
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/andoop/android/recommend/MoreDialog;->mPkgNameSet:Ljava/util/HashSet;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    .line 78
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/andoop/android/recommend/MoreDialog;->requestWindowFeature(I)Z

    .line 79
    const/16 v0, 0x400

    .line 80
    .local v0, "fullscreen":I
    invoke-virtual {p0}, Lcom/andoop/android/recommend/MoreDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 82
    const/high16 v1, 0x7f030000

    invoke-virtual {p0, v1}, Lcom/andoop/android/recommend/MoreDialog;->setContentView(I)V

    .line 83
    iput-object p1, p0, Lcom/andoop/android/recommend/MoreDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    .line 84
    invoke-direct {p0}, Lcom/andoop/android/recommend/MoreDialog;->initPkgNameSet()V

    .line 85
    invoke-direct {p0}, Lcom/andoop/android/recommend/MoreDialog;->reloadGames()V

    .line 86
    invoke-direct {p0}, Lcom/andoop/android/recommend/MoreDialog;->parseGames()V

    .line 87
    invoke-direct {p0}, Lcom/andoop/android/recommend/MoreDialog;->initListGame()V

    .line 88
    invoke-direct {p0}, Lcom/andoop/android/recommend/MoreDialog;->initFirstGame()V

    .line 89
    return-void
.end method

.method static synthetic access$0(Lcom/andoop/android/recommend/MoreDialog;)Lcom/andoop/android/engine/BaseActivity;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/andoop/android/recommend/MoreDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1(Lcom/andoop/android/recommend/MoreDialog;)V
    .locals 0

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/andoop/android/recommend/MoreDialog;->parseGames()V

    return-void
.end method

.method static synthetic access$2(Lcom/andoop/android/recommend/MoreDialog;)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/andoop/android/recommend/MoreDialog;->initListGame()V

    return-void
.end method

.method static synthetic access$3(Lcom/andoop/android/recommend/MoreDialog;)V
    .locals 0

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/andoop/android/recommend/MoreDialog;->initFirstGame()V

    return-void
.end method

.method private initFirstGame()V
    .locals 3

    .prologue
    .line 167
    iget-object v1, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/common/GameData;

    .line 173
    .local v0, "game":Lcom/andoop/android/common/GameData;
    const v1, 0x7f060001

    invoke-virtual {p0, v1}, Lcom/andoop/android/recommend/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/andoop/android/common/RemoteImageView;

    invoke-virtual {v1, v0}, Lcom/andoop/android/common/RemoteImageView;->loadImage(Lcom/andoop/android/common/GameData;)V

    .line 174
    const v1, 0x7f060003

    invoke-virtual {p0, v1}, Lcom/andoop/android/recommend/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    const v1, 0x7f060004

    invoke-virtual {p0, v1}, Lcom/andoop/android/recommend/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, v0, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const/high16 v1, 0x7f060000

    invoke-virtual {p0, v1}, Lcom/andoop/android/recommend/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/andoop/android/recommend/MoreDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/andoop/android/recommend/MoreDialog$2;-><init>(Lcom/andoop/android/recommend/MoreDialog;Lcom/andoop/android/common/GameData;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initListGame()V
    .locals 4

    .prologue
    .line 186
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/andoop/android/recommend/MoreDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 187
    .local v0, "listView":Landroid/widget/ListView;
    new-instance v1, Lcom/andoop/android/recommend/MoreListAdapter;

    iget-object v2, p0, Lcom/andoop/android/recommend/MoreDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    iget-object v3, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/andoop/android/recommend/MoreListAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 188
    return-void
.end method

.method private final initPkgNameSet()V
    .locals 5

    .prologue
    .line 191
    iget-object v3, p0, Lcom/andoop/android/recommend/MoreDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    invoke-virtual {v3}, Lcom/andoop/android/engine/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 192
    .local v0, "allPkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    iget-object v3, p0, Lcom/andoop/android/recommend/MoreDialog;->mPkgNameSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 193
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 197
    return-void

    .line 194
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 195
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/andoop/android/recommend/MoreDialog;->mPkgNameSet:Ljava/util/HashSet;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private final parseGames()V
    .locals 11

    .prologue
    .line 118
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    const-string v9, "KEY_MORE_GAMES"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/andoop/android/engine/BaseActivity;->getData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "moreJson":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 120
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 121
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    sget-object v9, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 122
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 123
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    sget-object v9, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v8, "ok"

    const-string v9, "result"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    const-string v9, "KEY_RECOMMEND_TIMEOUT"

    const-string v10, "timeout"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/andoop/android/engine/BaseActivity;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    const-string v8, "games"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 132
    .local v4, "jsonGames":Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 133
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 134
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v2, v8, :cond_3

    .line 149
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 150
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    sget-object v9, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 153
    :cond_2
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_0

    .line 154
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    sget-object v9, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    .end local v4    # "jsonGames":Lorg/json/JSONArray;
    .end local v6    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 158
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/Throwable;)V

    .line 159
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 160
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    sget-object v9, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 162
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    sget-object v9, Lcom/andoop/android/recommend/MoreDialog;->DEFAULT_GAMES:Ljava/util/List;

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 135
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "i":I
    .restart local v4    # "jsonGames":Lorg/json/JSONArray;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 136
    .local v3, "jsonGame":Lorg/json/JSONObject;
    const-string v8, "pkg_name"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    .local v7, "pkgName":Ljava/lang/String;
    new-instance v1, Lcom/andoop/android/common/GameData;

    invoke-direct {v1}, Lcom/andoop/android/common/GameData;-><init>()V

    .line 138
    .local v1, "game":Lcom/andoop/android/common/GameData;
    iput-object v7, v1, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    .line 139
    const-string v8, "title"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    .line 140
    const-string v8, "desc"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    .line 141
    const-string v8, "icon_url"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Lcom/andoop/android/common/GameData;->icon_url:Ljava/lang/String;

    .line 142
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyAll:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mPkgNameSet:Ljava/util/HashSet;

    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 134
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 146
    :cond_4
    iget-object v8, p0, Lcom/andoop/android/recommend/MoreDialog;->mMyNotInstalled:Ljava/util/List;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private final reloadGames()V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Lcom/andoop/android/common/WebRequest;

    const-string v1, "http://w5.andoop.com/more/"

    new-instance v2, Lcom/andoop/android/recommend/MoreDialog$1;

    invoke-direct {v2, p0}, Lcom/andoop/android/recommend/MoreDialog$1;-><init>(Lcom/andoop/android/recommend/MoreDialog;)V

    invoke-direct {v0, v1, v2}, Lcom/andoop/android/common/WebRequest;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 113
    .local v0, "request":Lcom/andoop/android/common/WebRequest;
    const-string v1, "from"

    iget-object v2, p0, Lcom/andoop/android/recommend/MoreDialog;->mActivity:Lcom/andoop/android/engine/BaseActivity;

    invoke-static {v2}, Lcom/andoop/android/common/Constant;->getAppNameVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/andoop/android/common/WebRequest;->addData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {v0}, Lcom/andoop/android/common/WebRequest;->get()V

    .line 115
    return-void
.end method
