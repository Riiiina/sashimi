.class public final enum Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;
.super Ljava/lang/Enum;
.source "TabContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/wWindowsHotmail/Views/TabContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

.field public static final enum NO_CONTENT_MESSSAGE:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

.field public static final enum WEB:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    const-string v1, "WEB"

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->WEB:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    const-string v1, "NO_CONTENT_MESSSAGE"

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->NO_CONTENT_MESSSAGE:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->WEB:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->NO_CONTENT_MESSSAGE:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    invoke-virtual {v0}, [Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    return-object v0
.end method
