.class final enum Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;
.super Ljava/lang/Enum;
.source "AppsGeyserServerClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

.field public static final enum AFTERINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

.field public static final enum APPMODE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

.field public static final enum LOCATION:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

.field public static final enum REGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

.field public static final enum UNINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

.field public static final enum UNREGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

.field public static final enum USAGE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 55
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "AFTERINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->AFTERINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "USAGE"

    invoke-direct {v0, v1, v4}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "LOCATION"

    invoke-direct {v0, v1, v5}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->LOCATION:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v6}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->UNINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "REGISTER_ID"

    invoke-direct {v0, v1, v7}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->REGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "UNREGISTER_ID"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->UNREGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    const-string v1, "APPMODE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->APPMODE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->AFTERINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->USAGE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->LOCATION:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->UNINSTALL:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->REGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->UNREGISTER_ID:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->APPMODE:Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

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
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 55
    const-class v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0    # "name":Ljava/lang/String;
    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->$VALUES:[Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    invoke-virtual {v0}, [Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsgeyser/wWindowsHotmail/Server/AppsGeyserServerClient$RequestType;

    return-object v0
.end method
