.class public final enum Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;
.super Ljava/lang/Enum;
.source "IAACPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/media/player/IAACPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

.field public static final enum HIGH_128:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

.field public static final enum LOW_32:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

.field public static final enum MED_64:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;


# instance fields
.field public final downloadBytesPerSec:I

.field public final minHeaderBytes:I

.field public final minStepBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    const-string v1, "HIGH_128"

    const/16 v2, 0x80

    invoke-direct {v0, v1, v3, v2}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->HIGH_128:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .line 12
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    const-string v1, "MED_64"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v4, v2}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->MED_64:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .line 13
    new-instance v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    const-string v1, "LOW_32"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v5, v2}, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->LOW_32:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    sget-object v1, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->HIGH_128:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->MED_64:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->LOW_32:Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    aput-object v1, v0, v5

    sput-object v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "kbits"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    mul-int/lit16 v0, p3, 0x3e8

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->downloadBytesPerSec:I

    .line 22
    iget v0, p0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->downloadBytesPerSec:I

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->minHeaderBytes:I

    .line 23
    iget v0, p0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->downloadBytesPerSec:I

    mul-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->minStepBytes:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/media/player/IAACPlayer$Quality;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
