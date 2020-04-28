.class public final enum Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;
.super Ljava/lang/Enum;
.source "GAApplicationAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

.field public static final enum VERSION:Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    const-string v1, "VERSION"

    const-string v2, "version"

    invoke-direct {v0, v1, v3, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->VERSION:Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    .line 5
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    const-string v1, "DURATION"

    const-string v2, "duration"

    invoke-direct {v0, v1, v4, v2}, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->VERSION:Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->DURATION:Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 10
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->action:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/GAApplicationAction;->action:Ljava/lang/String;

    return-object v0
.end method
