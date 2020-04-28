.class public final enum Lcom/admob/android/ads/ap;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/admob/android/ads/ap;

.field public static final enum b:Lcom/admob/android/ads/ap;

.field private static final synthetic c:[Lcom/admob/android/ads/ap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/admob/android/ads/ap;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2}, Lcom/admob/android/ads/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/ap;->a:Lcom/admob/android/ads/ap;

    new-instance v0, Lcom/admob/android/ads/ap;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/admob/android/ads/ap;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/admob/android/ads/ap;->b:Lcom/admob/android/ads/ap;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/admob/android/ads/ap;

    sget-object v1, Lcom/admob/android/ads/ap;->a:Lcom/admob/android/ads/ap;

    aput-object v1, v0, v2

    sget-object v1, Lcom/admob/android/ads/ap;->b:Lcom/admob/android/ads/ap;

    aput-object v1, v0, v3

    sput-object v0, Lcom/admob/android/ads/ap;->c:[Lcom/admob/android/ads/ap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/admob/android/ads/ap;
    .locals 1

    const-class v0, Lcom/admob/android/ads/ap;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ap;

    return-object p0
.end method

.method public static values()[Lcom/admob/android/ads/ap;
    .locals 1

    sget-object v0, Lcom/admob/android/ads/ap;->c:[Lcom/admob/android/ads/ap;

    invoke-virtual {v0}, [Lcom/admob/android/ads/ap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/admob/android/ads/ap;

    return-object v0
.end method
