.class public Lcom/clov4r/android/nil/library/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field public e:J

.field public f:Ljava/lang/String;

.field public g:J

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:I

.field public q:I

.field public r:Z

.field public s:Ljava/util/ArrayList;

.field public t:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/clov4r/android/nil/library/g;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/library/g;->l:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/clov4r/android/nil/library/g;->o:Z

    iput v1, p0, Lcom/clov4r/android/nil/library/g;->p:I

    iput v1, p0, Lcom/clov4r/android/nil/library/g;->q:I

    iput-boolean v1, p0, Lcom/clov4r/android/nil/library/g;->r:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/library/g;->s:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/library/g;->t:Ljava/util/ArrayList;

    return-void
.end method
