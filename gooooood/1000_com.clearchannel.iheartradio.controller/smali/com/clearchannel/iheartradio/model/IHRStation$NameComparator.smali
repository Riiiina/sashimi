.class public Lcom/clearchannel/iheartradio/model/IHRStation$NameComparator;
.super Ljava/lang/Object;
.source "IHRStation.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameComparator"
.end annotation


# instance fields
.field public mStations:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .param p1, "inStations"    # Ljava/util/Map;

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRStation$NameComparator;->mStations:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6
    .param p1, "inA"    # Ljava/lang/Object;
    .param p2, "inB"    # Ljava/lang/Object;

    .prologue
    .line 301
    const/4 v4, 0x0

    .line 303
    .local v4, "result":I
    if-eqz p1, :cond_0

    if-nez p2, :cond_4

    .line 304
    :cond_0
    if-nez p1, :cond_3

    if-nez p2, :cond_2

    const/4 v5, 0x0

    move v4, v5

    .line 324
    :cond_1
    :goto_0
    return v4

    .line 304
    :cond_2
    const/4 v5, 0x1

    move v4, v5

    goto :goto_0

    :cond_3
    const/4 v5, -0x1

    move v4, v5

    goto :goto_0

    .line 305
    :cond_4
    if-eq p1, p2, :cond_5

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 306
    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 308
    :cond_6
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRStation$NameComparator;->mStations:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 309
    .local v1, "as":Lcom/clearchannel/iheartradio/model/IHRStation;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/IHRStation$NameComparator;->mStations:Ljava/util/Map;

    invoke-interface {v5, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRStation;

    .line 310
    .local v3, "bs":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-nez v1, :cond_7

    const-string v5, ""

    move-object v0, v5

    .line 311
    .local v0, "an":Ljava/lang/String;
    :goto_1
    if-nez v3, :cond_8

    const-string v5, ""

    move-object v2, v5

    .line 313
    .local v2, "bn":Ljava/lang/String;
    :goto_2
    invoke-static {v0, v2}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->stringCompareHonoringUnsigned(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 316
    if-nez v4, :cond_1

    .line 317
    if-nez v1, :cond_9

    const-string v5, ""

    move-object v0, v5

    .line 318
    :goto_3
    if-nez v3, :cond_a

    const-string v5, ""

    move-object v2, v5

    .line 320
    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 310
    .end local v0    # "an":Ljava/lang/String;
    .end local v2    # "bn":Ljava/lang/String;
    :cond_7
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_1

    .line 311
    .restart local v0    # "an":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_2

    .line 317
    .restart local v2    # "bn":Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    goto :goto_3

    .line 318
    :cond_a
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    goto :goto_4
.end method
