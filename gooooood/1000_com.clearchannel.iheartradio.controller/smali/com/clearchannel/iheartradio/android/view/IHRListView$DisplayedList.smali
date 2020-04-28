.class public final enum Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;
.super Ljava/lang/Enum;
.source "IHRListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisplayedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum LOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum MAGICMENU:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum PLAYER:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum SEARCH:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum SUBFORMAT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum SUBLOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

.field public static final enum VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 103
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->LOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "VIDEOS"

    invoke-direct {v0, v1, v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "GENRES"

    invoke-direct {v0, v1, v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "SEARCH"

    invoke-direct {v0, v1, v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SEARCH:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "SUBFORMAT"

    invoke-direct {v0, v1, v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBFORMAT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "SUBLOCATION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBLOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "STATIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "FAVORITESSONGS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "FAVORITESSTATION"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "RECENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "PLAYER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->PLAYER:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    const-string v1, "MAGICMENU"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->MAGICMENU:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    .line 102
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->LOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v1, v0, v4

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->GENRES:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v1, v0, v5

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SEARCH:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v1, v0, v6

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBFORMAT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBLOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->PLAYER:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->MAGICMENU:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
