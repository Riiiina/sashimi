.class Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode$1;
.super Ljava/lang/Object;
.source "Ratings.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 4791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;
    .locals 1
    .param p1, "number"    # I

    .prologue
    .line 4793
    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;->valueOf(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode$1;->findValueByNumber(I)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig$ImageMode;

    move-result-object v0

    return-object v0
.end method
