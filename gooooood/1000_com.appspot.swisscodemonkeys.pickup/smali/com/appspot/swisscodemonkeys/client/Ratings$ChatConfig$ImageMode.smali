.class public final enum Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
.super Ljava/lang/Enum;
.source "Ratings.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

.field public static final enum FETCH:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

.field public static final enum IF_CACHED:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

.field public static final enum PROFILE_ONLY:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final index:I

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4768
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    const-string v1, "PROFILE_ONLY"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->PROFILE_ONLY:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    .line 4769
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    const-string v1, "IF_CACHED"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->IF_CACHED:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    .line 4770
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    const-string v1, "FETCH"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->FETCH:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->PROFILE_ONLY:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->IF_CACHED:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->FETCH:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    .line 4791
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode$1;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode$1;-><init>()V

    .line 4790
    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 4766
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 4799
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4800
    iput p3, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->index:I

    .line 4801
    iput p4, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->value:I

    .line 4802
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4787
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 4777
    packed-switch p0, :pswitch_data_0

    .line 4781
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 4778
    :pswitch_0
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->PROFILE_ONLY:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    goto :goto_0

    .line 4779
    :pswitch_1
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->IF_CACHED:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    goto :goto_0

    .line 4780
    :pswitch_2
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->FETCH:Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    goto :goto_0

    .line 4777
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    return-object p0
.end method

.method public static values()[Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 4774
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->value:I

    return v0
.end method
