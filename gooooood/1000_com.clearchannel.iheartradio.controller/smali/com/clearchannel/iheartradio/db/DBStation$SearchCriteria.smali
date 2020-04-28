.class public final enum Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;
.super Ljava/lang/Enum;
.source "DBStation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/db/DBStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchCriteria"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CALLLETTERS:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

.field public static final enum FREQUENCY:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

.field public static final enum GENRE:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

.field public static final enum LOCATION:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

.field public static final enum NAME:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->NAME:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->LOCATION:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    const-string v1, "GENRE"

    invoke-direct {v0, v1, v4}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->GENRE:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    const-string v1, "FREQUENCY"

    invoke-direct {v0, v1, v5}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->FREQUENCY:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    new-instance v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    const-string v1, "CALLLETTERS"

    invoke-direct {v0, v1, v6}, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->CALLLETTERS:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->NAME:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    aput-object v1, v0, v2

    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->LOCATION:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->GENRE:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->FREQUENCY:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    aput-object v1, v0, v5

    sget-object v1, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->CALLLETTERS:Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    aput-object v1, v0, v6

    sput-object v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/db/DBStation$SearchCriteria;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
