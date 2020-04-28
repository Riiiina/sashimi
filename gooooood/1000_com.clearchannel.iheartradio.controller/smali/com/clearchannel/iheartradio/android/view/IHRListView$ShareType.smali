.class public final enum Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;
.super Ljava/lang/Enum;
.source "IHRListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

.field public static final enum STATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

.field public static final enum VIDEO:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->VIDEO:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    const-string v1, "STATION"

    invoke-direct {v0, v1, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->STATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->VIDEO:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->STATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
