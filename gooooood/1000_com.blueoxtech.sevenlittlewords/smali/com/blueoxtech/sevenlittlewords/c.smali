.class final enum Lcom/blueoxtech/sevenlittlewords/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/blueoxtech/sevenlittlewords/c;

.field public static final enum b:Lcom/blueoxtech/sevenlittlewords/c;

.field public static final enum c:Lcom/blueoxtech/sevenlittlewords/c;

.field public static final enum d:Lcom/blueoxtech/sevenlittlewords/c;

.field private static final synthetic e:[Lcom/blueoxtech/sevenlittlewords/c;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/c;

    const-string v1, "FREE"

    invoke-direct {v0, v1, v2}, Lcom/blueoxtech/sevenlittlewords/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/c;->a:Lcom/blueoxtech/sevenlittlewords/c;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/c;

    const-string v1, "OWNED"

    invoke-direct {v0, v1, v3}, Lcom/blueoxtech/sevenlittlewords/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/c;->b:Lcom/blueoxtech/sevenlittlewords/c;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/c;

    const-string v1, "NOT_OWNED"

    invoke-direct {v0, v1, v4}, Lcom/blueoxtech/sevenlittlewords/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/c;->c:Lcom/blueoxtech/sevenlittlewords/c;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/c;

    const-string v1, "COMING_SOON"

    invoke-direct {v0, v1, v5}, Lcom/blueoxtech/sevenlittlewords/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/c;->d:Lcom/blueoxtech/sevenlittlewords/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/blueoxtech/sevenlittlewords/c;

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/c;->a:Lcom/blueoxtech/sevenlittlewords/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/c;->b:Lcom/blueoxtech/sevenlittlewords/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/c;->c:Lcom/blueoxtech/sevenlittlewords/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/c;->d:Lcom/blueoxtech/sevenlittlewords/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/blueoxtech/sevenlittlewords/c;->e:[Lcom/blueoxtech/sevenlittlewords/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/blueoxtech/sevenlittlewords/c;
    .locals 1

    const-class v0, Lcom/blueoxtech/sevenlittlewords/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/blueoxtech/sevenlittlewords/c;

    return-object p0
.end method

.method public static values()[Lcom/blueoxtech/sevenlittlewords/c;
    .locals 1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/c;->e:[Lcom/blueoxtech/sevenlittlewords/c;

    invoke-virtual {v0}, [Lcom/blueoxtech/sevenlittlewords/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/blueoxtech/sevenlittlewords/c;

    return-object v0
.end method
