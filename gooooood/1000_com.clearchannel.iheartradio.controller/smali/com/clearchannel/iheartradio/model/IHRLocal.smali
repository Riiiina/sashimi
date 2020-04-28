.class public Lcom/clearchannel/iheartradio/model/IHRLocal;
.super Ljava/util/ArrayList;
.source "IHRLocal.java"


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
.field public static final kDistance:I = 0x1

.field public static final kName:I = 0x0

.field public static final kStationList:I = 0x2

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRLocal;)V
    .locals 0
    .param p1, "inLocal"    # Lcom/clearchannel/iheartradio/model/IHRLocal;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "inName"    # Ljava/lang/String;
    .param p2, "inDistance"    # Ljava/lang/String;
    .param p3, "inStations"    # Ljava/util/Collection;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRLocal;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/model/IHRLocal;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p3}, Lcom/clearchannel/iheartradio/model/IHRLocal;->addAll(Ljava/util/Collection;)Z

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
    .line 18
    .local p1, "inLocal":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-void
.end method

.method public static isValid(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "inLocal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inLocal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
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
    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRLocal;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRLocal;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallLetters()Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRLocal;->copyStationList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRLocal;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRLocal;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRLocal;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRLocal;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStation(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 23
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRLocal;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRLocal;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStationCount()I
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRLocal;->size()I

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRLocal;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRLocal;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
