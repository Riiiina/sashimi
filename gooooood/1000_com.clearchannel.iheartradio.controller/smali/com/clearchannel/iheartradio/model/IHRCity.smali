.class public Lcom/clearchannel/iheartradio/model/IHRCity;
.super Ljava/util/ArrayList;
.source "IHRCity.java"


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
.field public static final kName:I = 0x0

.field public static final kStateAbbrevation:I = 0x2

.field public static final kStationList:I = 0x3

.field public static final kTrafficURL:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRCity;)V
    .locals 0
    .param p1, "inCity"    # Lcom/clearchannel/iheartradio/model/IHRCity;

    .prologue
    .line 26
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
    .line 27
    .local p1, "inCity":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
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
    .local p0, "inCity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "inCity":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
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

.method public static parseLine(Ljava/util/List;Ljava/lang/Object;Z)Lcom/clearchannel/iheartradio/model/IHRCity;
    .locals 8
    .param p1, "inStations"    # Ljava/lang/Object;
    .param p2, "inAllowEmpty"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Lcom/clearchannel/iheartradio/model/IHRCity;"
        }
    .end annotation

    .prologue
    .local p0, "inLine":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 53
    const/4 v3, 0x0

    .line 55
    .local v3, "result":Lcom/clearchannel/iheartradio/model/IHRCity;
    if-nez p0, :cond_1

    move v1, v6

    .line 57
    .local v1, "count":I
    :goto_0
    if-le v1, v7, :cond_0

    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 58
    if-nez p1, :cond_2

    .line 59
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRCity;

    .end local v3    # "result":Lcom/clearchannel/iheartradio/model/IHRCity;
    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/model/IHRCity;-><init>(Ljava/util/Collection;)V

    .line 79
    .restart local v3    # "result":Lcom/clearchannel/iheartradio/model/IHRCity;
    :cond_0
    :goto_1
    return-object v3

    .line 55
    .end local v1    # "count":I
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move v1, v5

    goto :goto_0

    .line 61
    .restart local v1    # "count":I
    :cond_2
    new-instance v3, Lcom/clearchannel/iheartradio/model/IHRCity;

    .end local v3    # "result":Lcom/clearchannel/iheartradio/model/IHRCity;
    invoke-direct {v3}, Lcom/clearchannel/iheartradio/model/IHRCity;-><init>()V

    .line 62
    .restart local v3    # "result":Lcom/clearchannel/iheartradio/model/IHRCity;
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/clearchannel/iheartradio/model/IHRCity;->add(Ljava/lang/Object;)Z

    .line 63
    const/4 v5, 0x1

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/clearchannel/iheartradio/model/IHRCity;->add(Ljava/lang/Object;)Z

    .line 64
    const/4 v5, 0x2

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/clearchannel/iheartradio/model/IHRCity;->add(Ljava/lang/Object;)Z

    .line 66
    const/4 v2, 0x3

    .local v2, "index":I
    :goto_2
    if-lt v2, v1, :cond_3

    .line 74
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRCity;->size()I

    move-result v5

    if-ne v7, v5, :cond_7

    if-nez p2, :cond_7

    const/4 v3, 0x0

    goto :goto_1

    .line 67
    :cond_3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    .local v4, "string":Ljava/lang/String;
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_4

    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 69
    :cond_4
    instance-of v5, p1, Ljava/util/Collection;

    if-eqz v5, :cond_6

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 70
    :cond_5
    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/model/IHRCity;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 75
    .end local v4    # "string":Ljava/lang/String;
    :cond_7
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static parseLines(Ljava/util/List;ILjava/lang/Object;)Ljava/util/List;
    .locals 10
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
    .line 83
    .local p0, "inLines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/clearchannel/iheartradio/model/IHRCity;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 86
    .local v0, "count":I
    const/4 v1, 0x0

    .line 87
    .local v1, "display_national_stations_in_city_list":I
    const/4 v2, 0x0

    .line 88
    .local v2, "display_national_stations_in_each_city":I
    const/4 v4, 0x0

    .line 89
    .local v4, "national_index":I
    const/4 v3, 0x0

    .line 94
    .local v3, "national":Lcom/clearchannel/iheartradio/model/IHRCity;
    if-le v0, p1, :cond_1

    .line 95
    const/4 v5, 0x1

    if-le p1, v5, :cond_0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v1    # "display_national_stations_in_city_list":I
    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 96
    .restart local v1    # "display_national_stations_in_city_list":I
    :cond_0
    const/4 v5, 0x2

    if-le p1, v5, :cond_1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .end local v2    # "display_national_stations_in_each_city":I
    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 99
    .restart local v2    # "display_national_stations_in_each_city":I
    :cond_1
    move p1, p1

    .local p1, "index":I
    move v5, v4

    .end local v4    # "national_index":I
    .local v5, "national_index":I
    move-object v4, v3

    .end local v3    # "national":Lcom/clearchannel/iheartradio/model/IHRCity;
    .local v4, "national":Lcom/clearchannel/iheartradio/model/IHRCity;
    move v3, p1

    .end local p1    # "index":I
    .local v3, "index":I
    :goto_0
    if-lt v3, v0, :cond_3

    .line 109
    if-eqz v4, :cond_8

    .line 110
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 112
    .end local v0    # "count":I
    .local p1, "count":I
    packed-switch v2, :pswitch_data_0

    move p0, v3

    .line 137
    .end local v2    # "display_national_stations_in_each_city":I
    .end local v3    # "index":I
    .end local p2    # "inStations":Ljava/lang/Object;
    .local p0, "index":I
    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    move v9, p1

    .end local p1    # "count":I
    .local v9, "count":I
    move p1, p0

    .end local p0    # "index":I
    .local p1, "index":I
    move p0, v9

    .line 150
    .end local v9    # "count":I
    .local p0, "count":I
    :goto_3
    return-object v6

    .line 100
    .end local p1    # "index":I
    .restart local v0    # "count":I
    .restart local v2    # "display_national_stations_in_each_city":I
    .restart local v3    # "index":I
    .local p0, "inLines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p2    # "inStations":Ljava/lang/Object;
    :cond_3
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 101
    .local p1, "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-lez v2, :cond_5

    const/4 v7, 0x1

    :goto_4
    invoke-static {p1, p2, v7}, Lcom/clearchannel/iheartradio/model/IHRCity;->parseLine(Ljava/util/List;Ljava/lang/Object;Z)Lcom/clearchannel/iheartradio/model/IHRCity;

    move-result-object p1

    .line 103
    .local p1, "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    if-eqz p1, :cond_4

    .line 104
    if-nez v4, :cond_6

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "national"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object p1, p1

    .end local v4    # "national":Lcom/clearchannel/iheartradio/model/IHRCity;
    .local p1, "national":Lcom/clearchannel/iheartradio/model/IHRCity;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .end local v5    # "national_index":I
    .local v4, "national_index":I
    move v5, v4

    .end local v4    # "national_index":I
    .restart local v5    # "national_index":I
    move-object v4, p1

    .line 99
    .end local p1    # "national":Lcom/clearchannel/iheartradio/model/IHRCity;
    .local v4, "national":Lcom/clearchannel/iheartradio/model/IHRCity;
    :cond_4
    :goto_5
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "index":I
    .local p1, "index":I
    move v3, p1

    .end local p1    # "index":I
    .restart local v3    # "index":I
    goto :goto_0

    .line 101
    .local p1, "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    const/4 v7, 0x0

    goto :goto_4

    .line 105
    .local p1, "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    :cond_6
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 114
    .end local v0    # "count":I
    .local p1, "count":I
    :pswitch_0
    const/4 p0, 0x0

    .end local v2    # "display_national_stations_in_each_city":I
    .end local v3    # "index":I
    .end local p2    # "inStations":Ljava/lang/Object;
    .local p0, "index":I
    :goto_6
    if-ge p0, p1, :cond_2

    .line 115
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRCity;

    const/4 v0, 0x3

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRCity;->copyStationList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/clearchannel/iheartradio/model/IHRCity;->addAll(ILjava/util/Collection;)Z

    .line 114
    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    .line 119
    .restart local v2    # "display_national_stations_in_each_city":I
    .restart local v3    # "index":I
    .local p0, "inLines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p2    # "inStations":Ljava/lang/Object;
    :pswitch_1
    const/4 p0, 0x0

    .end local v3    # "index":I
    .local p0, "index":I
    move p2, p0

    .end local v2    # "display_national_stations_in_each_city":I
    .end local p0    # "index":I
    .local p2, "index":I
    :goto_7
    if-lt p2, p1, :cond_7

    move p0, p2

    .line 129
    .end local p2    # "index":I
    .restart local p0    # "index":I
    goto :goto_1

    .line 120
    .end local p0    # "index":I
    .restart local p2    # "index":I
    :cond_7
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/model/IHRCity;

    .line 121
    .local p0, "city":Lcom/clearchannel/iheartradio/model/IHRCity;
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRCity;->copyStationList()Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCity;->copyStationList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 124
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 126
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCity;->size()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/model/IHRCity;->removeRange(II)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCity;->addAll(Ljava/util/Collection;)Z

    .line 119
    add-int/lit8 p0, p2, 0x1

    .end local p2    # "index":I
    .local p0, "index":I
    move p2, p0

    .end local p0    # "index":I
    .restart local p2    # "index":I
    goto :goto_7

    .line 131
    .end local v0    # "line":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "display_national_stations_in_each_city":I
    .restart local v3    # "index":I
    .local p0, "inLines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "inStations":Ljava/lang/Object;
    :pswitch_2
    const/4 p0, 0x0

    .end local v3    # "index":I
    .end local p2    # "inStations":Ljava/lang/Object;
    .local p0, "index":I
    :goto_8
    if-ge p0, p1, :cond_2

    .line 132
    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/clearchannel/iheartradio/model/IHRCity;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRCity;->copyStationList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/clearchannel/iheartradio/model/IHRCity;->addAll(Ljava/util/Collection;)Z

    .line 131
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    .line 139
    .end local v2    # "display_national_stations_in_each_city":I
    :pswitch_3
    const/4 p2, 0x0

    invoke-virtual {v6, p2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v9, p1

    .end local p1    # "count":I
    .restart local v9    # "count":I
    move p1, p0

    .end local p0    # "index":I
    .local p1, "index":I
    move p0, v9

    .line 140
    .end local v9    # "count":I
    .local p0, "count":I
    goto/16 :goto_3

    .line 142
    .local p0, "index":I
    .local p1, "count":I
    :pswitch_4
    invoke-virtual {v6, v5, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v9, p1

    .end local p1    # "count":I
    .restart local v9    # "count":I
    move p1, p0

    .end local p0    # "index":I
    .local p1, "index":I
    move p0, v9

    .line 143
    .end local v9    # "count":I
    .local p0, "count":I
    goto/16 :goto_3

    .line 145
    .local p0, "index":I
    .local p1, "count":I
    :pswitch_5
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .end local p1    # "count":I
    .local v0, "count":I
    .restart local v2    # "display_national_stations_in_each_city":I
    .restart local v3    # "index":I
    .local p0, "inLines":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local p2    # "inStations":Ljava/lang/Object;
    :cond_8
    move p0, v0

    .end local v0    # "count":I
    .local p0, "count":I
    move p1, v3

    .end local v3    # "index":I
    .local p1, "index":I
    goto/16 :goto_3

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 137
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static parseList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "inCities"    # Ljava/util/List;

    .prologue
    .line 42
    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 43
    .local v2, "result":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    if-nez p0, :cond_0

    const/4 v3, 0x0

    move v0, v3

    .line 45
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 49
    return-object v2

    .line 43
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 46
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_1
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRCity;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v4, v3}, Lcom/clearchannel/iheartradio/model/IHRCity;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 45
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
    .line 35
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCity;->size()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRCity;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCallLetters()Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCity;->copyStationList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCity;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRCity;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCity;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRCity;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStation(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 33
    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCity;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRCity;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStationCount()I
    .locals 2

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCity;->size()I

    move-result v0

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    return v0
.end method

.method public getTrafficURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCity;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/model/IHRCity;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public isValid()Z
    .locals 2

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCity;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/model/IHRCity;->getName()Ljava/lang/String;

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
