.class public Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;
.super Landroid/widget/BaseAdapter;
.source "IHRLocalStationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;,
        Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->mData:Ljava/util/ArrayList;

    .line 21
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public addItem(Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;)V
    .locals 1
    .param p1, "item"    # Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->notifyDataSetChanged()V

    .line 27
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->getItem(I)Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 40
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "holder":Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 47
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 48
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;

    .end local v0    # "holder":Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;
    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;-><init>()V

    .line 49
    .restart local v0    # "holder":Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;
    const v1, 0x7f090042

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;->textName:Landroid/widget/TextView;

    .line 50
    const v1, 0x7f090044

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;->textDescription:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    iget-object v2, v0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;->textName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, v0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;->textDescription:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    return-object p2

    .line 54
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;
    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$ViewHolder;
    goto :goto_0
.end method
