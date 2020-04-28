.class public final enum Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/reader/AdobeReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ACTIVITY_ENUM"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

.field public static final enum AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

.field public static final enum AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

.field public static final enum AR_PORTFOLIO_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

.field public static final enum NO_ACTIVITY:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    const-string v1, "AR_FILE_OPEN"

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    new-instance v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    const-string v1, "AR_DOCUMENT_VIEWING"

    invoke-direct {v0, v1, v3}, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    new-instance v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    const-string v1, "AR_PORTFOLIO_VIEWING"

    invoke-direct {v0, v1, v4}, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_PORTFOLIO_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    new-instance v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    const-string v1, "NO_ACTIVITY"

    invoke-direct {v0, v1, v5}, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->NO_ACTIVITY:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    sget-object v1, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_FILE_OPEN:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_DOCUMENT_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->AR_PORTFOLIO_VIEWING:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->NO_ACTIVITY:Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->$VALUES:[Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;
    .locals 1

    const-class v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    return-object p0
.end method

.method public static values()[Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;
    .locals 1

    sget-object v0, Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->$VALUES:[Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    invoke-virtual {v0}, [Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/reader/AdobeReader$ACTIVITY_ENUM;

    return-object v0
.end method
