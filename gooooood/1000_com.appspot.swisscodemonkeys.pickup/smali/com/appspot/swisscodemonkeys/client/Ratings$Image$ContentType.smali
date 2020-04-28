.class public final enum Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;
.super Ljava/lang/Enum;
.source "Ratings.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

.field public static final enum JPEG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

.field public static final enum PNG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    const-string v1, "JPEG"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->JPEG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    .line 31
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    const-string v1, "PNG"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->PNG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->JPEG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->PNG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    .line 51
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType$1;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType$1;-><init>()V

    .line 50
    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput p3, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->index:I

    .line 61
    iput p4, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->value:I

    .line 62
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 38
    packed-switch p0, :pswitch_data_0

    .line 41
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->JPEG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    goto :goto_0

    .line 40
    :pswitch_1
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->PNG:Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    goto :goto_0

    .line 38
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    return-object p0
.end method

.method public static values()[Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    array-length v1, v0

    new-array v2, v1, [Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$Image$ContentType;->value:I

    return v0
.end method
