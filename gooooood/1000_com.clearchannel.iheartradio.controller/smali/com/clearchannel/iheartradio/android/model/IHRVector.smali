.class public Lcom/clearchannel/iheartradio/android/model/IHRVector;
.super Ljava/util/ArrayList;
.source "IHRVector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field protected static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "inCapacity"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .param p1, "inCollection"    # Ljava/util/Collection;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .param p1, "inArray"    # [Ljava/lang/Object;

    .prologue
    .line 20
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public addElement(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    .line 127
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->makeBundle(Ljava/util/List;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public cloneFiltered(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 4
    .param p1, "inFilter"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 38
    const/4 v2, 0x0

    .line 40
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v1

    .line 43
    .local v1, "n":I
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .end local v2    # "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 45
    .restart local v2    # "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 52
    .end local v0    # "i":I
    .end local v1    # "n":I
    :cond_0
    return-object v2

    .line 46
    .restart local v0    # "i":I
    .restart local v1    # "n":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 47
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public copyFrom(Ljava/util/List;II)V
    .locals 3
    .param p1, "inSource"    # Ljava/util/List;
    .param p2, "inStart"    # I
    .param p3, "inCount"    # I

    .prologue
    .line 73
    if-nez p1, :cond_4

    const/4 v2, 0x0

    move v0, v2

    .line 75
    .local v0, "c":I
    :goto_0
    if-gez p2, :cond_0

    add-int/2addr p2, v0

    .line 76
    :cond_0
    if-le p2, v0, :cond_1

    move p2, v0

    .line 77
    :cond_1
    sub-int/2addr v0, p2

    .line 79
    if-gez p3, :cond_2

    add-int/2addr p3, v0

    .line 80
    :cond_2
    if-le p3, v0, :cond_3

    move p3, v0

    .line 82
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, p3, :cond_5

    .line 85
    return-void

    .line 73
    .end local v0    # "c":I
    .end local v1    # "i":I
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v0, v2

    goto :goto_0

    .line 83
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    :cond_5
    add-int v2, v1, p2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public copyFrom([Ljava/lang/Object;II)V
    .locals 3
    .param p1, "inSource"    # [Ljava/lang/Object;
    .param p2, "inStart"    # I
    .param p3, "inCount"    # I

    .prologue
    .line 88
    if-nez p1, :cond_4

    const/4 v2, 0x0

    move v0, v2

    .line 90
    .local v0, "c":I
    :goto_0
    if-gez p2, :cond_0

    add-int/2addr p2, v0

    .line 91
    :cond_0
    if-le p2, v0, :cond_1

    move p2, v0

    .line 92
    :cond_1
    sub-int/2addr v0, p2

    .line 94
    if-gez p3, :cond_2

    add-int/2addr p3, v0

    .line 95
    :cond_2
    if-le p3, v0, :cond_3

    move p3, v0

    .line 97
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, p3, :cond_5

    .line 100
    return-void

    .line 88
    .end local v0    # "c":I
    .end local v1    # "i":I
    :cond_4
    array-length v2, p1

    move v0, v2

    goto :goto_0

    .line 98
    .restart local v0    # "c":I
    .restart local v1    # "i":I
    :cond_5
    add-int v2, v1, p2

    aget-object v2, p1, v2

    invoke-virtual {p0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public disjoint(Ljava/util/List;)Z
    .locals 1
    .param p1, "that"    # Ljava/util/List;

    .prologue
    .line 123
    invoke-static {p0, p1}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public elementAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public frequency(Ljava/lang/Object;)I
    .locals 1
    .param p1, "inValue"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-static {p0, p1}, Ljava/util/Collections;->frequency(Ljava/util/Collection;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public insertElementAt(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 115
    invoke-virtual {p0, p2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public join(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inSeparator"    # Ljava/lang/String;

    .prologue
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .local v2, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    .line 60
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 61
    :cond_0
    if-lez v1, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public lastElement()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllElements()V
    .locals 0

    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->clear()V

    return-void
.end method

.method public removeElement(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeElementAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 112
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public reverse()V
    .locals 0

    .prologue
    .line 122
    invoke-static {p0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    return-void
.end method

.method public search(Ljava/lang/Object;Ljava/util/Comparator;)I
    .locals 1
    .param p1, "inValue"    # Ljava/lang/Object;
    .param p2, "inComparator"    # Ljava/util/Comparator;

    .prologue
    .line 119
    invoke-static {p0, p1, p2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public shuffle()V
    .locals 0

    .prologue
    .line 121
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method public shuffle(Ljava/util/Random;)V
    .locals 0
    .param p1, "inRandom"    # Ljava/util/Random;

    .prologue
    .line 120
    invoke-static {p0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    return-void
.end method

.method public sort(Ljava/util/Comparator;)V
    .locals 0
    .param p1, "inComparator"    # Ljava/util/Comparator;

    .prologue
    .line 118
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public swapElementsAt(II)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 104
    .local v0, "t":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {p0, p2, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method toArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public truncate(I)Z
    .locals 2
    .param p1, "inSize"    # I

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v1

    .line 28
    .local v1, "size":I
    if-le v1, p1, :cond_0

    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->removeRange(II)V

    .line 30
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->trimToSize()V

    .line 31
    const/4 v0, 0x1

    .line 34
    :cond_0
    return v0
.end method
