.class public Lcom/clearchannel/iheartradio/model/IHRBinarySearch;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRBinarySearch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    return-void
.end method

.method public static search([Ljava/lang/Object;Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "comparator"    # Lcom/clearchannel/iheartradio/model/IHRComparator;

    .prologue
    .line 5
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, p1, p2, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRBinarySearch;->searchInternal([Ljava/lang/Object;Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)I

    move-result v0

    return v0
.end method

.method protected static searchInternal([Ljava/lang/Object;Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)I
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "comparator"    # Lcom/clearchannel/iheartradio/model/IHRComparator;
    .param p3, "low"    # I
    .param p4, "high"    # I

    .prologue
    .line 13
    if-ge p4, p3, :cond_0

    const/4 v2, -0x1

    .line 20
    :goto_0
    return v2

    .line 15
    :cond_0
    sub-int v2, p4, p3

    div-int/lit8 v2, v2, 0x2

    add-int v1, p3, v2

    .line 16
    .local v1, "middle":I
    aget-object v2, p0, v1

    invoke-virtual {p2, v2, p1}, Lcom/clearchannel/iheartradio/model/IHRComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 18
    .local v0, "compare":I
    if-lez v0, :cond_1

    const/4 v2, 0x1

    sub-int v2, v1, v2

    invoke-static {p0, p1, p2, p3, v2}, Lcom/clearchannel/iheartradio/model/IHRBinarySearch;->searchInternal([Ljava/lang/Object;Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)I

    move-result v2

    goto :goto_0

    .line 19
    :cond_1
    if-gez v0, :cond_2

    add-int/lit8 v2, v1, 0x1

    invoke-static {p0, p1, p2, v2, p4}, Lcom/clearchannel/iheartradio/model/IHRBinarySearch;->searchInternal([Ljava/lang/Object;Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 20
    goto :goto_0
.end method
