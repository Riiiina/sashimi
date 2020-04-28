.class public Lcom/tt/yy/ReadingList;
.super Landroid/app/ListActivity;
.source "ReadingList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "List13"


# instance fields
.field private absListView:Landroid/widget/AbsListView;

.field private dataaddcount:I

.field private dataposstart:I

.field private firstPos:I

.field private mStatus:Landroid/widget/TextView;

.field private maxViewcount:I

.field private mylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field rssAdapter:Landroid/widget/SimpleAdapter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tt/yy/ReadingList;->mylist:Ljava/util/ArrayList;

    .line 31
    iput v1, p0, Lcom/tt/yy/ReadingList;->firstPos:I

    .line 32
    iput v1, p0, Lcom/tt/yy/ReadingList;->dataposstart:I

    .line 33
    const/16 v0, 0x28

    iput v0, p0, Lcom/tt/yy/ReadingList;->dataaddcount:I

    .line 34
    const/16 v0, 0xc8

    iput v0, p0, Lcom/tt/yy/ReadingList;->maxViewcount:I

    .line 25
    return-void
.end method

.method private AddDatas()V
    .locals 5

    .prologue
    .line 89
    iget v0, p0, Lcom/tt/yy/ReadingList;->dataposstart:I

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/tt/yy/ReadingList;->dataposstart:I

    iget v3, p0, Lcom/tt/yy/ReadingList;->dataaddcount:I

    add-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    .line 94
    iget-object v2, p0, Lcom/tt/yy/ReadingList;->rssAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 95
    iget v2, p0, Lcom/tt/yy/ReadingList;->dataposstart:I

    iget v3, p0, Lcom/tt/yy/ReadingList;->dataaddcount:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/tt/yy/ReadingList;->dataposstart:I

    .line 96
    return-void

    .line 90
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 91
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "ItemTitle"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "item"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v2, p0, Lcom/tt/yy/ReadingList;->mylist:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public initAdapter()Landroid/widget/SimpleAdapter;
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 129
    new-instance v0, Landroid/widget/SimpleAdapter;

    .line 130
    iget-object v2, p0, Lcom/tt/yy/ReadingList;->mylist:Ljava/util/ArrayList;

    .line 131
    const v3, 0x7f030003

    .line 132
    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "ItemTitle"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x7f050009

    aput v1, v5, v6

    move-object v1, p0

    .line 129
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 134
    .local v0, "mSchedule":Landroid/widget/SimpleAdapter;
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/tt/yy/ReadingList;->setContentView(I)V

    .line 39
    const v0, 0x7f050007

    invoke-virtual {p0, v0}, Lcom/tt/yy/ReadingList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tt/yy/ReadingList;->mStatus:Landroid/widget/TextView;

    .line 40
    iget-object v0, p0, Lcom/tt/yy/ReadingList;->mStatus:Landroid/widget/TextView;

    const-string v1, "\u7a7a\u95f2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object v0, p0, Lcom/tt/yy/ReadingList;->mylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 43
    invoke-virtual {p0}, Lcom/tt/yy/ReadingList;->initAdapter()Landroid/widget/SimpleAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/tt/yy/ReadingList;->rssAdapter:Landroid/widget/SimpleAdapter;

    .line 44
    invoke-direct {p0}, Lcom/tt/yy/ReadingList;->AddDatas()V

    .line 49
    iget-object v0, p0, Lcom/tt/yy/ReadingList;->rssAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/tt/yy/ReadingList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 51
    invoke-virtual {p0}, Lcom/tt/yy/ReadingList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 52
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 58
    iget v1, p0, Lcom/tt/yy/ReadingList;->maxViewcount:I

    if-gt v1, p4, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    add-int v0, p2, p3

    .line 63
    .local v0, "lastItem":I
    if-lt v0, p4, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/tt/yy/ReadingList;->AddDatas()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 119
    return-void
.end method

.method public update()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tt/yy/ReadingList;->rssAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 125
    return-void
.end method
