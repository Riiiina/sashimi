.class public final enum Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;
.super Ljava/lang/Enum;
.source "EngineOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/engine/EngineOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScreenOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

.field public static final enum LANDSCAPE:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

.field public static final enum PORTRAIT:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v2}, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->LANDSCAPE:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    new-instance v0, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->PORTRAIT:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    sget-object v1, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->LANDSCAPE:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->PORTRAIT:Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    aput-object v1, v0, v3

    sput-object v0, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->ENUM$VALUES:[Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    return-object p0
.end method

.method public static values()[Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;->ENUM$VALUES:[Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    array-length v1, v0

    new-array v2, v1, [Lcom/andoop/android/engine/EngineOptions$ScreenOrientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
