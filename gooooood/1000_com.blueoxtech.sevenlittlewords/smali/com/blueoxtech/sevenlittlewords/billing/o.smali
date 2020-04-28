.class public final enum Lcom/blueoxtech/sevenlittlewords/billing/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/blueoxtech/sevenlittlewords/billing/o;

.field private static enum b:Lcom/blueoxtech/sevenlittlewords/billing/o;

.field private static enum c:Lcom/blueoxtech/sevenlittlewords/billing/o;

.field private static final synthetic d:[Lcom/blueoxtech/sevenlittlewords/billing/o;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/o;

    const-string v1, "PURCHASED"

    invoke-direct {v0, v1, v2}, Lcom/blueoxtech/sevenlittlewords/billing/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/o;->a:Lcom/blueoxtech/sevenlittlewords/billing/o;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/o;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1, v3}, Lcom/blueoxtech/sevenlittlewords/billing/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/o;->b:Lcom/blueoxtech/sevenlittlewords/billing/o;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/o;

    const-string v1, "REFUNDED"

    invoke-direct {v0, v1, v4}, Lcom/blueoxtech/sevenlittlewords/billing/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/o;->c:Lcom/blueoxtech/sevenlittlewords/billing/o;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/blueoxtech/sevenlittlewords/billing/o;

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/billing/o;->a:Lcom/blueoxtech/sevenlittlewords/billing/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/billing/o;->b:Lcom/blueoxtech/sevenlittlewords/billing/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/billing/o;->c:Lcom/blueoxtech/sevenlittlewords/billing/o;

    aput-object v1, v0, v4

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/billing/o;->d:[Lcom/blueoxtech/sevenlittlewords/billing/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(I)Lcom/blueoxtech/sevenlittlewords/billing/o;
    .locals 2

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/o;->values()[Lcom/blueoxtech/sevenlittlewords/billing/o;

    move-result-object v0

    if-ltz p0, :cond_0

    array-length v1, v0

    if-lt p0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/o;->b:Lcom/blueoxtech/sevenlittlewords/billing/o;

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blueoxtech/sevenlittlewords/billing/o;
    .locals 1

    const-class v0, Lcom/blueoxtech/sevenlittlewords/billing/o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/blueoxtech/sevenlittlewords/billing/o;

    return-object p0
.end method

.method public static values()[Lcom/blueoxtech/sevenlittlewords/billing/o;
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/billing/o;->d:[Lcom/blueoxtech/sevenlittlewords/billing/o;

    invoke-virtual {v0}, [Lcom/blueoxtech/sevenlittlewords/billing/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blueoxtech/sevenlittlewords/billing/o;

    return-object v0
.end method
