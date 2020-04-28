.class public final enum Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;
.super Ljava/lang/Enum;
.source "GASessionAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BACKGROUND_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field public static final enum BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field public static final enum DATA_NET_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field public static final enum FIRST_STATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field public static final enum FOREGROUND_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field public static final enum OFFLINE_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field public static final enum STATION_SELECT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field public static final enum STATUS:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

.field public static final enum WIFI_NET_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "STATION_SELECT"

    const-string v2, "select_station"

    invoke-direct {v0, v1, v4, v2}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->STATION_SELECT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 5
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "STATUS"

    const-string v2, "status"

    invoke-direct {v0, v1, v5, v2}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->STATUS:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 6
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "BACKGROUND_DURATION"

    const-string v2, "seconds_spent_in_background"

    invoke-direct {v0, v1, v6, v2}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->BACKGROUND_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 7
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "FOREGROUND_DURATION"

    const-string v2, "seconds_spent_in_foreground"

    invoke-direct {v0, v1, v7, v2}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->FOREGROUND_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 8
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "WIFI_NET_DURATION"

    const-string v2, "seconds_on_wifi_network"

    invoke-direct {v0, v1, v8, v2}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->WIFI_NET_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 9
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "DATA_NET_DURATION"

    const/4 v2, 0x5

    const-string v3, "seconds_on_carrier_data_network"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->DATA_NET_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 10
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "OFFLINE_DURATION"

    const/4 v2, 0x6

    const-string v3, "seconds_offline"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->OFFLINE_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 11
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "FIRST_STATION"

    const/4 v2, 0x7

    const-string v3, "first_station_chosen"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->FIRST_STATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 12
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    const-string v1, "BUFFER_COUNT"

    const/16 v2, 0x8

    const-string v3, "#_of_times_buffering"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    .line 3
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->STATION_SELECT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->STATUS:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->BACKGROUND_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->FOREGROUND_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->WIFI_NET_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->DATA_NET_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->OFFLINE_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->FIRST_STATION:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->action:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/GASessionAction;->action:Ljava/lang/String;

    return-object v0
.end method
