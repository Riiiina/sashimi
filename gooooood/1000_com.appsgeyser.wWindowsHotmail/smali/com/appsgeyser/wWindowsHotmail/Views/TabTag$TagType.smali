.class public final enum Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
.super Ljava/lang/Enum;
.source "TabTag.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TagType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

.field public static final enum ICON:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

.field public static final enum ICON_LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

.field public static final enum LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    const-string v1, "ICON_LABEL"

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ICON_LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    const-string v1, "LABEL"

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ICON:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ICON_LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ICON:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    invoke-virtual {v0}, [Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    return-object v0
.end method
