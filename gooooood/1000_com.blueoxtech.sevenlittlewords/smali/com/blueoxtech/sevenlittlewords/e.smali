.class final enum Lcom/blueoxtech/sevenlittlewords/e;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/blueoxtech/sevenlittlewords/e;

.field public static final enum b:Lcom/blueoxtech/sevenlittlewords/e;

.field public static final enum c:Lcom/blueoxtech/sevenlittlewords/e;

.field private static final synthetic d:[Lcom/blueoxtech/sevenlittlewords/e;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/e;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/blueoxtech/sevenlittlewords/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/e;->a:Lcom/blueoxtech/sevenlittlewords/e;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/e;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/blueoxtech/sevenlittlewords/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/e;->b:Lcom/blueoxtech/sevenlittlewords/e;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/e;

    const-string v1, "COMPLETED"

    invoke-direct {v0, v1, v4}, Lcom/blueoxtech/sevenlittlewords/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/e;->c:Lcom/blueoxtech/sevenlittlewords/e;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/blueoxtech/sevenlittlewords/e;

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/e;->a:Lcom/blueoxtech/sevenlittlewords/e;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/e;->b:Lcom/blueoxtech/sevenlittlewords/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/e;->c:Lcom/blueoxtech/sevenlittlewords/e;

    aput-object v1, v0, v4

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/e;->d:[Lcom/blueoxtech/sevenlittlewords/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blueoxtech/sevenlittlewords/e;
    .locals 1

    const-class v0, Lcom/blueoxtech/sevenlittlewords/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/blueoxtech/sevenlittlewords/e;

    return-object p0
.end method

.method public static values()[Lcom/blueoxtech/sevenlittlewords/e;
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/e;->d:[Lcom/blueoxtech/sevenlittlewords/e;

    invoke-virtual {v0}, [Lcom/blueoxtech/sevenlittlewords/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blueoxtech/sevenlittlewords/e;

    return-object v0
.end method
