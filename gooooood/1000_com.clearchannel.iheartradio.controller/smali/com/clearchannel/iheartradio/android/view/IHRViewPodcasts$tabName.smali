.class public final enum Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;
.super Ljava/lang/Enum;
.source "IHRViewPodcasts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "tabName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

.field public static final enum favorites:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

.field public static final enum stations:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

.field public static final enum videos:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    const-string v1, "stations"

    invoke-direct {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->stations:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    const-string v1, "favorites"

    invoke-direct {v0, v1, v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->favorites:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    const-string v1, "videos"

    invoke-direct {v0, v1, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->videos:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->stations:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->favorites:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->videos:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    aput-object v1, v0, v4

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    return-object p0
.end method

.method public static values()[Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->ENUM$VALUES:[Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    array-length v1, v0

    new-array v2, v1, [Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
