.class public final enum Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;
.super Ljava/lang/Enum;
.source "GAPlayerAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

.field public static final enum PLAY:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

.field public static final enum STATUS:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

.field public static final enum STOP:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    const-string v1, "PLAY"

    const-string v2, "play"

    invoke-direct {v0, v1, v3, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->PLAY:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    .line 5
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    const-string v1, "STATUS"

    const-string v2, "status"

    invoke-direct {v0, v1, v4, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STATUS:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    .line 6
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    const-string v1, "STOP"

    const-string v2, "stop"

    invoke-direct {v0, v1, v5, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->PLAY:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STATUS:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->STOP:Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->action:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/GAPlayerAction;->action:Ljava/lang/String;

    return-object v0
.end method
