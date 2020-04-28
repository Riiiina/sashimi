.class public final enum Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;
.super Ljava/lang/Enum;
.source "MainNavigationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ApplicationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

.field public static final enum COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

.field public static final enum CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

.field public static final enum UNKNOWN:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    const-string v1, "COMMON"

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->UNKNOWN:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

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
    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 68
    const-class v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v0}, [Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    return-object v0
.end method
