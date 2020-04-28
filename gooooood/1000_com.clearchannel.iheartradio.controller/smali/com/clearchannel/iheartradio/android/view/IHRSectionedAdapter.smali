.class public Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;
.super Landroid/widget/BaseAdapter;
.source "IHRSectionedAdapter.java"


# static fields
.field public static final TYPE_SECTION_HEADER:I


# instance fields
.field public final headers:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final sections:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/widget/Adapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    .line 23
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f030009

    invoke-direct {v0, p1, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->headers:Landroid/widget/ArrayAdapter;

    .line 24
    return-void
.end method


# virtual methods
.method public addSection(Ljava/lang/String;Landroid/widget/Adapter;)V
    .locals 1
    .param p1, "section"    # Ljava/lang/String;
    .param p2, "adapter"    # Landroid/widget/Adapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public areAllItemsSelectable()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "total":I
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 51
    return v1

    .line 49
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 50
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 32
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    const/4 v3, 0x0

    :goto_1
    return-object v3

    .line 32
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 33
    .local v1, "section":Ljava/lang/Object;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 34
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 37
    .local v2, "size":I
    if-nez p1, :cond_1

    move-object v3, v1

    goto :goto_1

    .line 38
    :cond_1
    if-ge p1, v2, :cond_2

    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    .line 41
    :cond_2
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 7
    .param p1, "position"    # I

    .prologue
    const-wide/16 v5, 0x0

    .line 108
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    move-wide v3, v5

    .line 119
    :goto_1
    return-wide v3

    .line 108
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, "section":Ljava/lang/Object;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 110
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 113
    .local v2, "size":I
    if-nez p1, :cond_1

    move-wide v3, v5

    goto :goto_1

    .line 114
    :cond_1
    if-ge p1, v2, :cond_2

    const/4 v3, 0x1

    sub-int v3, p1, v3

    invoke-interface {v0, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v3

    goto :goto_1

    .line 117
    :cond_2
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 63
    const/4 v3, 0x1

    .line 64
    .local v3, "type":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 76
    const/4 v4, -0x1

    :goto_1
    return v4

    .line 64
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 65
    .local v1, "section":Ljava/lang/Object;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 66
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 69
    .local v2, "size":I
    if-nez p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 70
    :cond_1
    if-ge p1, v2, :cond_2

    const/4 v4, 0x1

    sub-int v4, p1, v4

    invoke-interface {v0, v4}, Landroid/widget/Adapter;->getItemViewType(I)I

    move-result v4

    add-int/2addr v4, v3

    goto :goto_1

    .line 73
    :cond_2
    sub-int/2addr p1, v2

    .line 74
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v5

    add-int/2addr v3, v5

    goto :goto_0
.end method

.method public getSection(Ljava/lang/String;)Landroid/widget/Adapter;
    .locals 1
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;
    check-cast p0, Landroid/widget/Adapter;

    return-object p0
.end method

.method public getSectionCursor(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 125
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 136
    const-string v3, ""

    :goto_1
    return-object v3

    .line 125
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, "section":Ljava/lang/Object;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 127
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 128
    .local v2, "size":I
    if-ge p1, v2, :cond_1

    .line 129
    check-cast v1, Ljava/lang/String;

    .end local v1    # "section":Ljava/lang/Object;
    move-object v3, v1

    goto :goto_1

    .line 133
    .restart local v1    # "section":Ljava/lang/Object;
    :cond_1
    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, "sectionnum":I
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 102
    const/4 v4, 0x0

    :goto_1
    return-object v4

    .line 90
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 91
    .local v1, "section":Ljava/lang/Object;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 92
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    .line 95
    .local v3, "size":I
    if-nez p1, :cond_1

    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v2, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 96
    :cond_1
    if-ge p1, v3, :cond_2

    const/4 v4, 0x1

    sub-int v4, p1, v4

    invoke-interface {v0, v4, p2, p3}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    .line 99
    :cond_2
    sub-int/2addr p1, v3

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 4

    .prologue
    .line 56
    const/4 v1, 0x1

    .line 57
    .local v1, "total":I
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 59
    return v1

    .line 57
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Adapter;

    .line 58
    .local v0, "adapter":Landroid/widget/Adapter;
    invoke-interface {v0}, Landroid/widget/Adapter;->getViewTypeCount()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllSections()V
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->sections:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 142
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->headers:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    .line 143
    return-void
.end method
