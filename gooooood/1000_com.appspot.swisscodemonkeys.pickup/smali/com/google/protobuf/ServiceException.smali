.class public final Lcom/google/protobuf/ServiceException;
.super Ljava/lang/Exception;
.source "ServiceException.java"


# static fields
.field private static final serialVersionUID:J = -0x10ebb0a269317a50L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method
