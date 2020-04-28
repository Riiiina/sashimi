.class public final enum Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
.super Ljava/lang/Enum;
.source "DataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/db/DataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Sorting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

.field public static final enum DESC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

.field public static final enum FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

.field public static final enum NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const-string v1, "ASC"

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const-string v1, "DESC"

    invoke-direct {v0, v1, v3}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->DESC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const-string v1, "NAME"

    invoke-direct {v0, v1, v4}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    const-string v1, "FREQ"

    invoke-direct {v0, v1, v5}, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ASC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->DESC:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->NAME:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->FREQ:Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    aput-object v1, v0, v5

    sput-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/db/DataHelper$Sorting;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
