.class public final enum Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BannerPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

.field public static final enum BOTTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

.field public static final enum HIDE:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

.field public static final enum TOP:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->TOP:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->BOTTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    const-string v1, "HIDE"

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->HIDE:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->TOP:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->BOTTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->HIDE:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 69
    const-class v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    invoke-virtual {v0}, [Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    return-object v0
.end method
