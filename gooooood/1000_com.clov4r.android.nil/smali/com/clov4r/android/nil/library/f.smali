.class public Lcom/clov4r/android/nil/library/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/clov4r/android/nil/library/f;->a:I

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/library/f;->b:Ljava/lang/String;

    return-void
.end method
