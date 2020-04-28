.class public final enum Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
.super Ljava/lang/Enum;
.source "Ratings.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Gender"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

.field public static final enum FEMALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

.field public static final enum MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;",
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

    .line 2705
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    .line 2706
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->FEMALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    aput-object v1, v0, v2

    sget-object v1, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->FEMALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    aput-object v1, v0, v3

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    .line 2726
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender$1;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender$1;-><init>()V

    .line 2725
    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2703
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "index"    # I
    .param p4, "value"    # I

    .prologue
    .line 2734
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2735
    iput p3, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->index:I

    .line 2736
    iput p4, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->value:I

    .line 2737
    return-void
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2722
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2713
    packed-switch p0, :pswitch_data_0

    .line 2716
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2714
    :pswitch_0
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    goto :goto_0

    .line 2715
    :pswitch_1
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->FEMALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    goto :goto_0

    .line 2713
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    return-object p0
.end method

.method public static values()[Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->ENUM$VALUES:[Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    array-length v1, v0

    new-array v2, v1, [Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 2710
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->value:I

    return v0
.end method
