.class public final Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "Ratings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UserProfile"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;,
        Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
    }
.end annotation


# static fields
.field public static final ABOUT_FIELD_NUMBER:I = 0x2

.field public static final AGE_FIELD_NUMBER:I = 0xa

.field public static final COMMENTS_FIELD_NUMBER:I = 0x5

.field public static final GENDER_FIELD_NUMBER:I = 0x3

.field public static final HAS_PICTURE_FIELD_NUMBER:I = 0x8

.field public static final IMAGE_FIELD_NUMBER:I = 0x4

.field public static final IMAGE_URL_FIELD_NUMBER:I = 0x6

.field public static final IS_FULL_FIELD_NUMBER:I = 0x9

.field public static final NICKNAME_FIELD_NUMBER:I = 0x1

.field public static final USER_ID_FIELD_NUMBER:I = 0x7

.field private static final defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;


# instance fields
.field private about_:Ljava/lang/String;

.field private age_:I

.field private comments_:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

.field private gender_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

.field private hasAbout:Z

.field private hasAge:Z

.field private hasComments:Z

.field private hasGender:Z

.field private hasHasPicture:Z

.field private hasImage:Z

.field private hasImageUrl:Z

.field private hasIsFull:Z

.field private hasNickname:Z

.field private hasPicture_:Z

.field private hasUserId:Z

.field private imageUrl_:Ljava/lang/String;

.field private image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

.field private isFull_:Z

.field private memoizedSerializedSize:I

.field private nickname_:Ljava/lang/String;

.field private userId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3390
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;-><init>(Z)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 3391
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings;->internalForceInit()V

    .line 3392
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->initFields()V

    .line 2686
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2689
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2745
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->nickname_:Ljava/lang/String;

    .line 2752
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->about_:Ljava/lang/String;

    .line 2780
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->imageUrl_:Ljava/lang/String;

    .line 2787
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->userId_:I

    .line 2794
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasPicture_:Z

    .line 2801
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->isFull_:Z

    .line 2808
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->age_:I

    .line 2859
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->memoizedSerializedSize:I

    .line 2690
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->initFields()V

    .line 2691
    return-void
.end method

.method synthetic constructor <init>(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 0

    .prologue
    .line 2689
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;-><init>()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 2
    .param p1, "noInit"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2692
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2745
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->nickname_:Ljava/lang/String;

    .line 2752
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->about_:Ljava/lang/String;

    .line 2780
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->imageUrl_:Ljava/lang/String;

    .line 2787
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->userId_:I

    .line 2794
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasPicture_:Z

    .line 2801
    iput-boolean v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->isFull_:Z

    .line 2808
    iput v1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->age_:I

    .line 2859
    const/4 v0, -0x1

    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->memoizedSerializedSize:I

    .line 2692
    return-void
.end method

.method static synthetic access$10(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2765
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImage:Z

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)V
    .locals 0

    .prologue
    .line 2766
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-void
.end method

.method static synthetic access$12(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 2766
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-object v0
.end method

.method static synthetic access$13(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2772
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasComments:Z

    return-void
.end method

.method static synthetic access$14(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V
    .locals 0

    .prologue
    .line 2773
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->comments_:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    return-void
.end method

.method static synthetic access$15(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1

    .prologue
    .line 2773
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->comments_:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    return-object v0
.end method

.method static synthetic access$16(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2779
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImageUrl:Z

    return-void
.end method

.method static synthetic access$17(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2780
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->imageUrl_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$18(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2786
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasUserId:Z

    return-void
.end method

.method static synthetic access$19(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;I)V
    .locals 0

    .prologue
    .line 2787
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->userId_:I

    return-void
.end method

.method static synthetic access$20(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2793
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasHasPicture:Z

    return-void
.end method

.method static synthetic access$21(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2794
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasPicture_:Z

    return-void
.end method

.method static synthetic access$22(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2800
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasIsFull:Z

    return-void
.end method

.method static synthetic access$23(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2801
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->isFull_:Z

    return-void
.end method

.method static synthetic access$24(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2807
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAge:Z

    return-void
.end method

.method static synthetic access$25(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;I)V
    .locals 0

    .prologue
    .line 2808
    iput p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->age_:I

    return-void
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2744
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasNickname:Z

    return-void
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2745
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->nickname_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2751
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAbout:Z

    return-void
.end method

.method static synthetic access$7(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 2752
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->about_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$8(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Z)V
    .locals 0

    .prologue
    .line 2758
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasGender:Z

    return-void
.end method

.method static synthetic access$9(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)V
    .locals 0

    .prologue
    .line 2759
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->gender_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    return-void
.end method

.method public static getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 2696
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-object v0
.end method

.method private initFields()V
    .locals 1

    .prologue
    .line 2813
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->gender_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    .line 2814
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .line 2815
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->comments_:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 2816
    return-void
.end method

.method public static newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 1

    .prologue
    .line 2976
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$12()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 1
    .param p0, "prototype"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 2979
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2945
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    .line 2946
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2947
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    .line 2949
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2956
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    .line 2957
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2958
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    .line 2960
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2912
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .param p0, "data"    # Lcom/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2918
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":Lcom/google/protobuf/ByteString;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 2919
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    .line 2918
    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2966
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Lcom/google/protobuf/CodedInputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2972
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    .line 2973
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    .line 2972
    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2934
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Ljava/io/InputStream;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2940
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "input":Ljava/io/InputStream;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 2941
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    .line 2940
    return-object v0
.end method

.method public static parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2923
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 2929
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->mergeFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;

    move-result-object p0

    .end local p0    # "data":[B
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    .line 2930
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;->access$11(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    .line 2929
    return-object v0
.end method


# virtual methods
.method public getAbout()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2754
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->about_:Ljava/lang/String;

    return-object v0
.end method

.method public getAge()I
    .locals 1

    .prologue
    .line 2810
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->age_:I

    return v0
.end method

.method public getComments()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 1

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->comments_:Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 2700
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->defaultInstance:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    return-object v0
.end method

.method public getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->gender_:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    return-object v0
.end method

.method public getHasPicture()Z
    .locals 1

    .prologue
    .line 2796
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasPicture_:Z

    return v0
.end method

.method public getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;
    .locals 1

    .prologue
    .line 2768
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->image_:Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2782
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->imageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsFull()Z
    .locals 1

    .prologue
    .line 2803
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->isFull_:Z

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2747
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->nickname_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2861
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->memoizedSerializedSize:I

    .line 2862
    .local v0, "size":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2906
    .end local v0    # "size":I
    .local v1, "size":I
    :goto_0
    return v1

    .line 2864
    .end local v1    # "size":I
    .restart local v0    # "size":I
    :cond_0
    const/4 v0, 0x0

    .line 2865
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasNickname()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2867
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2869
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAbout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2871
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAbout()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2873
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasGender()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2875
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->getNumber()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2877
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2879
    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2881
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasComments()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2883
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getComments()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2885
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImageUrl()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2887
    const/4 v2, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2889
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasUserId()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2891
    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getUserId()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2893
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasHasPicture()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2895
    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getHasPicture()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2897
    :cond_8
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasIsFull()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2899
    const/16 v2, 0x9

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getIsFull()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v2

    add-int/2addr v0, v2

    .line 2901
    :cond_9
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAge()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2903
    const/16 v2, 0xa

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAge()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2905
    :cond_a
    iput v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->memoizedSerializedSize:I

    move v1, v0

    .line 2906
    .end local v0    # "size":I
    .restart local v1    # "size":I
    goto/16 :goto_0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 2789
    iget v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->userId_:I

    return v0
.end method

.method public hasAbout()Z
    .locals 1

    .prologue
    .line 2753
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAbout:Z

    return v0
.end method

.method public hasAge()Z
    .locals 1

    .prologue
    .line 2809
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAge:Z

    return v0
.end method

.method public hasComments()Z
    .locals 1

    .prologue
    .line 2774
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasComments:Z

    return v0
.end method

.method public hasGender()Z
    .locals 1

    .prologue
    .line 2760
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasGender:Z

    return v0
.end method

.method public hasHasPicture()Z
    .locals 1

    .prologue
    .line 2795
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasHasPicture:Z

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 2767
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImage:Z

    return v0
.end method

.method public hasImageUrl()Z
    .locals 1

    .prologue
    .line 2781
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImageUrl:Z

    return v0
.end method

.method public hasIsFull()Z
    .locals 1

    .prologue
    .line 2802
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasIsFull:Z

    return v0
.end method

.method public hasNickname()Z
    .locals 1

    .prologue
    .line 2746
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasNickname:Z

    return v0
.end method

.method public hasUserId()Z
    .locals 1

    .prologue
    .line 2788
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasUserId:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .prologue
    .line 2818
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasComments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2819
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getComments()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2821
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 1

    .prologue
    .line 2977
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilderForType()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;
    .locals 1

    .prologue
    .line 2981
    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->toBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Builder;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/CodedOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2826
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getSerializedSize()I

    .line 2827
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasNickname()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2828
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2830
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAbout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2831
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAbout()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2833
    :cond_1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasGender()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2834
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->getNumber()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2836
    :cond_2
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2837
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImage()Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2839
    :cond_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasComments()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2840
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getComments()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    .line 2842
    :cond_4
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImageUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2843
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 2845
    :cond_5
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasUserId()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2846
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2848
    :cond_6
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasHasPicture()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2849
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getHasPicture()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2851
    :cond_7
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasIsFull()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2852
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getIsFull()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 2854
    :cond_8
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAge()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2855
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAge()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2857
    :cond_9
    return-void
.end method
