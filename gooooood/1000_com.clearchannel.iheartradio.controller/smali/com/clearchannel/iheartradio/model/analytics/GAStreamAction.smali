.class public final enum Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;
.super Ljava/lang/Enum;
.source "GAStreamAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

.field public static final enum BUFFER_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

.field public static final enum PLAY_DELAY:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

.field public static final enum THROUGHPUT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v1, "THROUGHPUT"

    const-string v2, "average_throughput"

    invoke-direct {v0, v1, v3, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->THROUGHPUT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    .line 5
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v1, "BUFFER_COUNT"

    const-string v2, "re-buffer_count"

    invoke-direct {v0, v1, v4, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    .line 6
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v1, "BUFFER_DURATION"

    const-string v2, "re-buffer_duration"

    invoke-direct {v0, v1, v5, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    .line 7
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    const-string v1, "PLAY_DELAY"

    const-string v2, "select_to_play_time"

    invoke-direct {v0, v1, v6, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->PLAY_DELAY:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->THROUGHPUT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_COUNT:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->BUFFER_DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->PLAY_DELAY:Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    aput-object v1, v0, v6

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->action:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/GAStreamAction;->action:Ljava/lang/String;

    return-object v0
.end method
