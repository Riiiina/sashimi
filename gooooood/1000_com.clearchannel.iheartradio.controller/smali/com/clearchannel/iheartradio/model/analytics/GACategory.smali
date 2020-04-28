.class public final enum Lcom/clearchannel/iheartradio/model/analytics/GACategory;
.super Ljava/lang/Enum;
.source "GACategory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/model/analytics/GACategory;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APPLICATION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum FAVORITE:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum MODE:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum NETWORK:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum PLAYER:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum PREMIUM:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum SESSION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum STATION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum STREAM:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum VERSION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

.field public static final enum VIDEO:Lcom/clearchannel/iheartradio/model/analytics/GACategory;


# instance fields
.field private final category:Ljava/lang/String;


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
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "VIDEO"

    const-string v2, "video"

    invoke-direct {v0, v1, v4, v2}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->VIDEO:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 5
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "PLAYER"

    const-string v2, "player"

    invoke-direct {v0, v1, v5, v2}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->PLAYER:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 6
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "STREAM"

    const-string v2, "stream"

    invoke-direct {v0, v1, v6, v2}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->STREAM:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 7
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "FAVORITE"

    const-string v2, "favorite"

    invoke-direct {v0, v1, v7, v2}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->FAVORITE:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 8
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "PREMIUM"

    const-string v2, "premium"

    invoke-direct {v0, v1, v8, v2}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->PREMIUM:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 9
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "APPLICATION"

    const/4 v2, 0x5

    const-string v3, "application"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->APPLICATION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 10
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "SESSION"

    const/4 v2, 0x6

    const-string v3, "session"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->SESSION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 11
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "MODE"

    const/4 v2, 0x7

    const-string v3, "mode"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->MODE:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 12
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "STATION"

    const/16 v2, 0x8

    const-string v3, "station"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->STATION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 13
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "NETWORK"

    const/16 v2, 0x9

    const-string v3, "network"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->NETWORK:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 14
    new-instance v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    const-string v1, "VERSION"

    const/16 v2, 0xa

    const-string v3, "version"

    invoke-direct {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/model/analytics/GACategory;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->VERSION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    .line 3
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->VIDEO:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->PLAYER:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v1, v0, v5

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->STREAM:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v1, v0, v6

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->FAVORITE:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v1, v0, v7

    sget-object v1, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->PREMIUM:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->APPLICATION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->SESSION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->MODE:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->STATION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->NETWORK:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->VERSION:Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "category"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->category:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/analytics/GACategory;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/model/analytics/GACategory;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/model/analytics/GACategory;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public categoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/analytics/GACategory;->category:Ljava/lang/String;

    return-object v0
.end method
