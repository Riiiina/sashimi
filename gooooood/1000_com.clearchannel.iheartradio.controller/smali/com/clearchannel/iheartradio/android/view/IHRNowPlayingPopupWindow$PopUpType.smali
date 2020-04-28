.class public final enum Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;
.super Ljava/lang/Enum;
.source "IHRNowPlayingPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PopUpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

.field public static final enum player:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

.field public static final enum stations:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    const-string v1, "stations"

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->stations:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    const-string v1, "player"

    invoke-direct {v0, v1, v3}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->player:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->stations:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->player:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
