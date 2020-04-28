.class public final enum Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/reader/ARFileBrowserUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FILE_OPEN_TABS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

.field public static final enum PDF_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

.field public static final enum RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    const-string v1, "RECENT_FILES"

    invoke-direct {v0, v1, v2}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    new-instance v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    const-string v1, "PDF_FILES"

    invoke-direct {v0, v1, v3}, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->PDF_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->PDF_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    aput-object v1, v0, v3

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->$VALUES:[Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

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

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;
    .locals 1

    const-class v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    return-object p0
.end method

.method public static values()[Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;
    .locals 1

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->$VALUES:[Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    invoke-virtual {v0}, [Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    return-object v0
.end method
