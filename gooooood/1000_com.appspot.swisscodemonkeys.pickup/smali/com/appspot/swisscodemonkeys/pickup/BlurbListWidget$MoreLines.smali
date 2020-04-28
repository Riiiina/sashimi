.class public final enum Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;
.super Ljava/lang/Enum;
.source "BlurbListWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MoreLines"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

.field public static final enum MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

.field public static final enum MORE_LAST_TIME_ERROR:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

.field public static final enum NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    const-string v1, "NO_MORE"

    invoke-direct {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    const-string v1, "MORE"

    invoke-direct {v0, v1, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    const-string v1, "MORE_LAST_TIME_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE_LAST_TIME_ERROR:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    .line 44
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE_LAST_TIME_ERROR:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    return-object p0
.end method

.method public static values()[Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    array-length v1, v0

    new-array v2, v1, [Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
