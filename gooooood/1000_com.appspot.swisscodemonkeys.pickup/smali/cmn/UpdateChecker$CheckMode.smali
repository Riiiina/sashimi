.class final enum Lcmn/UpdateChecker$CheckMode;
.super Ljava/lang/Enum;
.source "UpdateChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmn/UpdateChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CheckMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcmn/UpdateChecker$CheckMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

.field private static final synthetic ENUM$VALUES:[Lcmn/UpdateChecker$CheckMode;

.field public static final enum SILENT_CHECK_FROM_APP:Lcmn/UpdateChecker$CheckMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    new-instance v0, Lcmn/UpdateChecker$CheckMode;

    const-string v1, "CHECK_FROM_USER"

    invoke-direct {v0, v1, v2}, Lcmn/UpdateChecker$CheckMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcmn/UpdateChecker$CheckMode;->CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

    .line 98
    new-instance v0, Lcmn/UpdateChecker$CheckMode;

    const-string v1, "SILENT_CHECK_FROM_APP"

    invoke-direct {v0, v1, v3}, Lcmn/UpdateChecker$CheckMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcmn/UpdateChecker$CheckMode;->SILENT_CHECK_FROM_APP:Lcmn/UpdateChecker$CheckMode;

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Lcmn/UpdateChecker$CheckMode;

    sget-object v1, Lcmn/UpdateChecker$CheckMode;->CHECK_FROM_USER:Lcmn/UpdateChecker$CheckMode;

    aput-object v1, v0, v2

    sget-object v1, Lcmn/UpdateChecker$CheckMode;->SILENT_CHECK_FROM_APP:Lcmn/UpdateChecker$CheckMode;

    aput-object v1, v0, v3

    sput-object v0, Lcmn/UpdateChecker$CheckMode;->ENUM$VALUES:[Lcmn/UpdateChecker$CheckMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcmn/UpdateChecker$CheckMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcmn/UpdateChecker$CheckMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcmn/UpdateChecker$CheckMode;

    return-object p0
.end method

.method public static values()[Lcmn/UpdateChecker$CheckMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcmn/UpdateChecker$CheckMode;->ENUM$VALUES:[Lcmn/UpdateChecker$CheckMode;

    array-length v1, v0

    new-array v2, v1, [Lcmn/UpdateChecker$CheckMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
