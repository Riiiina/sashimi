.class public final enum Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;
.super Ljava/lang/Enum;
.source "GAVideoAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

.field public static final enum PLAYDATA:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

.field public static final enum PLAYWIFI:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

.field public static final enum RESUME:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

.field public static final enum STALL:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

.field public static final enum START:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

.field public static final enum STOP:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;


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
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v1, "PLAYWIFI"

    const-string v2, "play(wifi)"

    invoke-direct {v0, v1, v4, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->PLAYWIFI:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    .line 5
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v1, "PLAYDATA"

    const-string v2, "play(data)"

    invoke-direct {v0, v1, v5, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->PLAYDATA:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    .line 6
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v1, "START"

    const-string v2, "movie_prepared(playback_started)"

    invoke-direct {v0, v1, v6, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->START:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    .line 7
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v1, "RESUME"

    const-string v2, "resumed"

    invoke-direct {v0, v1, v7, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->RESUME:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    .line 8
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v1, "STALL"

    const-string v2, "stalled"

    invoke-direct {v0, v1, v8, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->STALL:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    .line 9
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    const-string v1, "STOP"

    const/4 v2, 0x5

    const-string v3, "stopped"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->PLAYWIFI:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->PLAYDATA:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->START:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->RESUME:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->STALL:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->action:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/GAVideoAction;->action:Ljava/lang/String;

    return-object v0
.end method
