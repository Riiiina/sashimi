.class public Lcom/andoop/android/recommend/MoreListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MoreListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mGames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/andoop/android/common/GameData;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/andoop/android/common/GameData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, "games":Ljava/util/List;, "Ljava/util/List<Lcom/andoop/android/common/GameData;>;"
    const v0, 0x7f030001

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 30
    iput-object p1, p0, Lcom/andoop/android/recommend/MoreListAdapter;->mActivity:Landroid/app/Activity;

    .line 31
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/recommend/MoreListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 32
    iput-object p2, p0, Lcom/andoop/android/recommend/MoreListAdapter;->mGames:Ljava/util/List;

    .line 33
    return-void
.end method

.method static synthetic access$0(Lcom/andoop/android/recommend/MoreListAdapter;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/andoop/android/recommend/MoreListAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/andoop/android/recommend/MoreListAdapter;->mGames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    iget-object v2, p0, Lcom/andoop/android/recommend/MoreListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "row":Landroid/view/View;
    iget-object v2, p0, Lcom/andoop/android/recommend/MoreListAdapter;->mGames:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/andoop/android/common/GameData;

    .line 45
    .local v0, "game":Lcom/andoop/android/common/GameData;
    const v2, 0x7f060006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/andoop/android/common/RemoteImageView;

    invoke-virtual {v2, v0}, Lcom/andoop/android/common/RemoteImageView;->loadImage(Lcom/andoop/android/common/GameData;)V

    .line 46
    const v2, 0x7f060007

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andoop/android/common/GameData;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v2, 0x7f060008

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, v0, Lcom/andoop/android/common/GameData;->desc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    new-instance v2, Lcom/andoop/android/recommend/MoreListAdapter$1;

    invoke-direct {v2, p0, v0}, Lcom/andoop/android/recommend/MoreListAdapter$1;-><init>(Lcom/andoop/android/recommend/MoreListAdapter;Lcom/andoop/android/common/GameData;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-object v1
.end method
