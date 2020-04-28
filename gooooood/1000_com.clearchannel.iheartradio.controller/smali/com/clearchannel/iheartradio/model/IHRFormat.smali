.class public Lcom/clearchannel/iheartradio/model/IHRFormat;
.super Ljava/util/ArrayList;
.source "IHRFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final kAll:Ljava/lang/String; = "All"

.field public static final kName:I = 0x0

.field public static final kStationList:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRFormat;)V
    .locals 0
    .param p1, "inFormat"    # Lcom/clearchannel/iheartradio/model/IHRFormat;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "inFormat":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "inFormat"    # [Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static isValid(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "inFormat":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inFormat":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static parseLine(Ljava/util/List;Ljava/lang/Object;)Lcom/clearchannel/iheartradio/model/IHRFormat;
    .locals 8
    .param p1, "inStations"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/clearchannel/iheartradio/model/IHRFormat;"
        }
    .end annotation

    .prologue
    .local p0, "inLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 46
    const/4 v3, 0x0

    .line 48
    .local v3, "result":Lcom/clearchannel/iheartradio/model/IHRFormat;
    if-nez p0, :cond_1

    move v1, v6

    .line 50
    .local v1, "count":I
    :goto_0
    if-le v1, v7, :cond_0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 51
    if-nez p1, :cond_2

    .line 52
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRFormat;

    .end local v3    # "result":Lcom/clearchannel/iheartradio/model/IHRFormat;
    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/model/IHRFormat;-><init>(Ljava/util/Collection;)V

    .line 70
    .restart local v3    # "result":Lcom/clearchannel/iheartradio/model/IHRFormat;
    :cond_0
    :goto_1
    return-object v3

    .line 48
    .end local v1    # "count":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    goto :goto_0

    .line 54
    .restart local v1    # "count":I
    :cond_2
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRFormat;

    .end local v3    # "result":Lcom/clearchannel/iheartradio/model/IHRFormat;
    invoke-direct {v3}, Lcom/clearchannel/iheartradio/model/IHRFormat;-><init>()V

    .line 55
    .restart local v3    # "result":Lcom/clearchannel/iheartradio/model/IHRFormat;
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/clearchannel/iheartradio/model/IHRFormat;->add(Ljava/lang/Object;)Z

    .line 57
    const/4 v2, 0x1

    .local v2, "index":I
    :goto_2
    if-lt v2, v1, :cond_3

    .line 66
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRFormat;->size()I

    move-result v5

    if-ne v7, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 58
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 60
    .local v4, "string":Ljava/lang/String;
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 61
    :cond_4
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 62
    :cond_5
    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/model/IHRFormat;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static parseLines(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 5
    .param p1, "inStart"    # I
    .param p2, "inStations"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "inLines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .local v4, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/clearchannel/iheartradio/model/IHRFormat;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 106
    .local v0, "count":I
    move v2, p1

    .local v2, "index":I
    :goto_0
    if-lt v2, v0, :cond_0

    .line 115
    return-object v4

    .line 107
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 108
    .local v3, "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3, p2}, Lcom/clearchannel/iheartradio/model/IHRFormat;->parseLine(Ljava/util/List;Ljava/lang/Object;)Lcom/clearchannel/iheartradio/model/IHRFormat;

    move-result-object v1

    .line 110
    .local v1, "format":Lcom/clearchannel/iheartradio/model/IHRFormat;
    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static parseList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "inFormats"    # Ljava/util/List;

    .prologue
    .line 35
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 36
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez p0, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 38
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 42
    return-object v2

    .line 36
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 39
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_1
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRFormat;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v4, v3}, Lcom/clearchannel/iheartradio/model/IHRFormat;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public copyStationList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFormat;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRFormat;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallLetters()Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFormat;->copyStationList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRFormat;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRFormat;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStation(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 26
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRFormat;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRFormat;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStationCount()I
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFormat;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFormat;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRFormat;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
