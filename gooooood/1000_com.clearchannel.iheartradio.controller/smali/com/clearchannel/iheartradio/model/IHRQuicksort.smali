.class public Lcom/clearchannel/iheartradio/model/IHRQuicksort;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRQuicksort.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    return-void
.end method

.method protected static partition([Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)I
    .locals 5
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "comparator"    # Lcom/clearchannel/iheartradio/model/IHRComparator;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 14
    move v0, p2

    .line 15
    .local v0, "i":I
    move v1, p3

    .line 16
    .local v1, "j":I
    add-int v4, v0, v1

    div-int/lit8 v4, v4, 0x2

    aget-object v2, p0, v4

    .line 18
    .local v2, "pivot":Ljava/lang/Object;
    :cond_0
    :goto_0
    if-le v0, v1, :cond_2

    .line 32
    return v0

    .line 19
    :cond_1
    add-int/lit8 v0, v0, 0x1

    :cond_2
    aget-object v4, p0, v0

    invoke-virtual {p1, v4, v2}, Lcom/clearchannel/iheartradio/model/IHRComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_1

    .line 20
    :goto_1
    aget-object v4, p0, v1

    invoke-virtual {p1, v4, v2}, Lcom/clearchannel/iheartradio/model/IHRComparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-gtz v4, :cond_3

    .line 22
    if-gt v0, v1, :cond_0

    .line 23
    aget-object v3, p0, v0

    .line 24
    .local v3, "tmp":Ljava/lang/Object;
    aget-object v4, p0, v1

    aput-object v4, p0, v0

    .line 25
    aput-object v3, p0, v1

    .line 27
    add-int/lit8 v0, v0, 0x1

    .line 28
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 20
    .end local v3    # "tmp":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public static sort([Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;)V
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "comparator"    # Lcom/clearchannel/iheartradio/model/IHRComparator;

    .prologue
    .line 5
    const/4 v0, 0x0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {p0, p1, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRQuicksort;->sortInternal([Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)V

    .line 6
    return-void
.end method

.method protected static sortInternal([Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)V
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "comparator"    # Lcom/clearchannel/iheartradio/model/IHRComparator;
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 38
    invoke-static {p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/model/IHRQuicksort;->partition([Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)I

    move-result v0

    .line 40
    .local v0, "i":I
    const/4 v2, 0x1

    sub-int v1, v0, v2

    .local v1, "j":I
    if-ge p2, v1, :cond_0

    invoke-static {p0, p1, p2, v1}, Lcom/clearchannel/iheartradio/model/IHRQuicksort;->sortInternal([Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)V

    .line 41
    :cond_0
    if-ge v0, p3, :cond_1

    invoke-static {p0, p1, v0, p3}, Lcom/clearchannel/iheartradio/model/IHRQuicksort;->sortInternal([Ljava/lang/Object;Lcom/clearchannel/iheartradio/model/IHRComparator;II)V

    .line 42
    :cond_1
    return-void
.end method
