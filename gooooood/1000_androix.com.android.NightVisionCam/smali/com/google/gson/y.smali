.class final Lcom/google/gson/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/gson/z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/y$a;,
        Lcom/google/gson/y$b;
    }
.end annotation


# static fields
.field private static l:[I

.field private static m:[I


# instance fields
.field public a:Lcom/google/gson/aa;

.field b:Lcom/google/gson/ax;

.field public c:Lcom/google/gson/az;

.field public d:Lcom/google/gson/az;

.field private f:I

.field private g:Lcom/google/gson/az;

.field private h:Lcom/google/gson/az;

.field private i:I

.field private j:I

.field private final k:[I

.field private final n:[Lcom/google/gson/y$a;

.field private o:Z

.field private p:I

.field private final q:Lcom/google/gson/y$b;

.field private r:Ljava/util/List;

.field private s:[I

.field private t:I

.field private u:[I

.field private v:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x12

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/gson/y;->l:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/gson/y;->m:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4000000
        -0x77fcf840
        -0x73fcf83f
        0x10000000
        0x31800
        0x31800
        0x10000000
        -0x77fcf840
        -0x77fcf840
        0x30740
        0x0
        0x20
        0x40
        0x0
        0x300
        0x0
        0x1800
        0x30000
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x2
        0x2
        0x0
        0x0
        0x0
        0x0
        0x3
        0x2
        0x2
        0x4
        0x0
        0x2
        0x2
        0x2
        0x2
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5

    const/16 v4, 0x12

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/google/gson/y;->k:[I

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/gson/y$a;

    iput-object v0, p0, Lcom/google/gson/y;->n:[Lcom/google/gson/y$a;

    iput-boolean v2, p0, Lcom/google/gson/y;->o:Z

    iput v2, p0, Lcom/google/gson/y;->p:I

    new-instance v0, Lcom/google/gson/y$b;

    invoke-direct {v0}, Lcom/google/gson/y$b;-><init>()V

    iput-object v0, p0, Lcom/google/gson/y;->q:Lcom/google/gson/y$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/y;->r:Ljava/util/List;

    iput v3, p0, Lcom/google/gson/y;->t:I

    const/16 v0, 0x64

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/y;->u:[I

    new-instance v0, Lcom/google/gson/ax;

    invoke-direct {v0, p1}, Lcom/google/gson/ax;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/gson/y;->b:Lcom/google/gson/ax;

    new-instance v0, Lcom/google/gson/aa;

    iget-object v1, p0, Lcom/google/gson/y;->b:Lcom/google/gson/ax;

    invoke-direct {v0, v1}, Lcom/google/gson/aa;-><init>(Lcom/google/gson/ax;)V

    iput-object v0, p0, Lcom/google/gson/y;->a:Lcom/google/gson/aa;

    new-instance v0, Lcom/google/gson/az;

    invoke-direct {v0}, Lcom/google/gson/az;-><init>()V

    iput-object v0, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iput v3, p0, Lcom/google/gson/y;->f:I

    iput v2, p0, Lcom/google/gson/y;->j:I

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/google/gson/y;->k:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/google/gson/y;->n:[Lcom/google/gson/y$a;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/y;->n:[Lcom/google/gson/y$a;

    new-instance v2, Lcom/google/gson/y$a;

    invoke-direct {v2}, Lcom/google/gson/y$a;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(I)Lcom/google/gson/az;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/16 v7, 0x23

    const/4 v3, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iget-object v1, v0, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iget-object v1, v1, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    iput-object v1, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    :goto_0
    iput v3, p0, Lcom/google/gson/y;->f:I

    iget-object v1, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iget v1, v1, Lcom/google/gson/az;->a:I

    if-ne v1, p1, :cond_4

    iget v0, p0, Lcom/google/gson/y;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/y;->j:I

    iget v0, p0, Lcom/google/gson/y;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/gson/y;->p:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_3

    iput v5, p0, Lcom/google/gson/y;->p:I

    move v0, v5

    :goto_1
    iget-object v1, p0, Lcom/google/gson/y;->n:[Lcom/google/gson/y$a;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/gson/y;->n:[Lcom/google/gson/y$a;

    aget-object v1, v1, v0

    :goto_2
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/google/gson/y$a;->a:I

    iget v3, p0, Lcom/google/gson/y;->j:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/gson/y$a;->b:Lcom/google/gson/az;

    :cond_0
    iget-object v1, v1, Lcom/google/gson/y$a;->d:Lcom/google/gson/y$a;

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iget-object v2, p0, Lcom/google/gson/y;->a:Lcom/google/gson/aa;

    invoke-virtual {v2}, Lcom/google/gson/aa;->a()Lcom/google/gson/az;

    move-result-object v2

    iput-object v2, v1, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    iput-object v2, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    return-object v0

    :cond_4
    iput-object v0, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iput p1, p0, Lcom/google/gson/y;->t:I

    iget-object v0, p0, Lcom/google/gson/y;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-array v0, v7, [Z

    iget v1, p0, Lcom/google/gson/y;->t:I

    if-ltz v1, :cond_5

    iget v1, p0, Lcom/google/gson/y;->t:I

    aput-boolean v6, v0, v1

    iput v3, p0, Lcom/google/gson/y;->t:I

    :cond_5
    move v1, v5

    :goto_3
    const/16 v2, 0x12

    if-ge v1, v2, :cond_9

    iget-object v2, p0, Lcom/google/gson/y;->k:[I

    aget v2, v2, v1

    iget v3, p0, Lcom/google/gson/y;->j:I

    if-ne v2, v3, :cond_8

    move v2, v5

    :goto_4
    const/16 v3, 0x20

    if-ge v2, v3, :cond_8

    sget-object v3, Lcom/google/gson/y;->l:[I

    aget v3, v3, v1

    shl-int v4, v6, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_6

    aput-boolean v6, v0, v2

    :cond_6
    sget-object v3, Lcom/google/gson/y;->m:[I

    aget v3, v3, v1

    shl-int v4, v6, v2

    and-int/2addr v3, v4

    if-eqz v3, :cond_7

    add-int/lit8 v3, v2, 0x20

    aput-boolean v6, v0, v3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    move v1, v5

    :goto_5
    if-ge v1, v7, :cond_b

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_a

    new-array v2, v6, [I

    iput-object v2, p0, Lcom/google/gson/y;->s:[I

    iget-object v2, p0, Lcom/google/gson/y;->s:[I

    aput v1, v2, v5

    iget-object v2, p0, Lcom/google/gson/y;->r:Ljava/util/List;

    iget-object v3, p0, Lcom/google/gson/y;->s:[I

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    iput v5, p0, Lcom/google/gson/y;->v:I

    iput-boolean v6, p0, Lcom/google/gson/y;->o:Z

    move v0, v5

    :goto_6
    if-gtz v0, :cond_e

    :try_start_0
    iget-object v1, p0, Lcom/google/gson/y;->n:[Lcom/google/gson/y$a;

    aget-object v1, v1, v0

    :cond_c
    iget v2, v1, Lcom/google/gson/y$a;->a:I

    iget v3, p0, Lcom/google/gson/y;->j:I

    if-le v2, v3, :cond_d

    iget v2, v1, Lcom/google/gson/y$a;->c:I

    iput v2, p0, Lcom/google/gson/y;->i:I

    iget-object v2, v1, Lcom/google/gson/y$a;->b:Lcom/google/gson/az;

    iput-object v2, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iput-object v2, p0, Lcom/google/gson/y;->h:Lcom/google/gson/az;

    packed-switch v0, :pswitch_data_0

    :cond_d
    :goto_7
    iget-object v1, v1, Lcom/google/gson/y$a;->d:Lcom/google/gson/y$a;

    if-nez v1, :cond_c

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :pswitch_0
    invoke-direct {p0}, Lcom/google/gson/y;->k()Z
    :try_end_0
    .catch Lcom/google/gson/y$b; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v1

    goto :goto_8

    :cond_e
    iput-boolean v5, p0, Lcom/google/gson/y;->o:Z

    invoke-direct {p0, v5, v5}, Lcom/google/gson/y;->a(II)V

    iget-object v0, p0, Lcom/google/gson/y;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [[I

    move v2, v5

    :goto_9
    iget-object v0, p0, Lcom/google/gson/y;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    iget-object v0, p0, Lcom/google/gson/y;->r:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_f
    new-instance v0, Lcom/google/gson/as;

    iget-object v2, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    sget-object v3, Lcom/google/gson/y;->e:[Ljava/lang/String;

    invoke-direct {v0, v2, v1, v3}, Lcom/google/gson/as;-><init>(Lcom/google/gson/az;[[I[Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(II)V
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/gson/y;->v:I

    add-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/google/gson/y;->u:[I

    iget v1, p0, Lcom/google/gson/y;->v:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/gson/y;->v:I

    aput p1, v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/google/gson/y;->v:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/gson/y;->v:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/gson/y;->s:[I

    move v0, v5

    :goto_1
    iget v1, p0, Lcom/google/gson/y;->v:I

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/google/gson/y;->s:[I

    iget-object v2, p0, Lcom/google/gson/y;->u:[I

    aget v2, v2, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/gson/y;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v2, v0

    iget-object v3, p0, Lcom/google/gson/y;->s:[I

    array-length v3, v3

    if-ne v2, v3, :cond_4

    move v2, v5

    :goto_2
    iget-object v3, p0, Lcom/google/gson/y;->s:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    aget v3, v0, v2

    iget-object v4, p0, Lcom/google/gson/y;->s:[I

    aget v4, v4, v2

    if-ne v3, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/gson/y;->r:Ljava/util/List;

    iget-object v1, p0, Lcom/google/gson/y;->s:[I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/gson/y;->u:[I

    iput p2, p0, Lcom/google/gson/y;->v:I

    const/4 v1, 0x1

    sub-int v1, p2, v1

    aput p1, v0, v1

    goto :goto_0
.end method

.method private final b()Lcom/google/gson/JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/4 v3, -0x1

    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    const/16 v1, 0x1b

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    iget v1, p0, Lcom/google/gson/y;->f:I

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-object v1, p0, Lcom/google/gson/y;->k:[I

    const/4 v2, 0x4

    iget v3, p0, Lcom/google/gson/y;->j:I

    aput v3, v1, v2

    :goto_1
    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    return-object v0

    :cond_0
    iget v1, p0, Lcom/google/gson/y;->f:I

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    :pswitch_2
    iget v1, p0, Lcom/google/gson/y;->f:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_1

    :pswitch_3
    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_1
    iget v1, p0, Lcom/google/gson/y;->f:I

    goto :goto_2

    :pswitch_4
    iget v1, p0, Lcom/google/gson/y;->f:I

    if-ne v1, v3, :cond_2

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v1

    :goto_3
    packed-switch v1, :pswitch_data_2

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/16 v1, 0x10

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_2
    iget v1, p0, Lcom/google/gson/y;->f:I

    goto :goto_3

    :pswitch_5
    const/16 v1, 0xc

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move-result-object v1

    :goto_4
    new-instance v2, Lcom/google/gson/JsonPrimitive;

    iget-object v1, v1, Lcom/google/gson/az;->f:Ljava/lang/String;

    invoke-direct {v2, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_5
    const/16 v2, 0x1e

    invoke-direct {p0, v2}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    invoke-direct {p0}, Lcom/google/gson/y;->e()Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    iget v1, p0, Lcom/google/gson/y;->f:I

    if-ne v1, v3, :cond_3

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v1

    :goto_6
    packed-switch v1, :pswitch_data_3

    iget-object v1, p0, Lcom/google/gson/y;->k:[I

    const/4 v2, 0x3

    iget v3, p0, Lcom/google/gson/y;->j:I

    aput v3, v1, v2

    goto :goto_1

    :pswitch_6
    const/16 v1, 0xb

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move-result-object v1

    goto :goto_4

    :pswitch_7
    invoke-direct {p0}, Lcom/google/gson/y;->i()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    goto :goto_5

    :cond_3
    iget v1, p0, Lcom/google/gson/y;->f:I

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_7
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xb
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch
.end method

.method private b(I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iget-object v1, p0, Lcom/google/gson/y;->h:Lcom/google/gson/az;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/gson/y;->i:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/google/gson/y;->i:I

    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iget-object v0, v0, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iget-object v1, p0, Lcom/google/gson/y;->a:Lcom/google/gson/aa;

    invoke-virtual {v1}, Lcom/google/gson/aa;->a()Lcom/google/gson/az;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    iput-object v1, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iput-object v1, p0, Lcom/google/gson/y;->h:Lcom/google/gson/az;

    :goto_0
    iget-boolean v0, p0, Lcom/google/gson/y;->o:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    move v1, v3

    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    if-eq v0, v2, :cond_2

    add-int/lit8 v1, v1, 0x1

    iget-object v0, v0, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iget-object v0, v0, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    iput-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iput-object v0, p0, Lcom/google/gson/y;->h:Lcom/google/gson/az;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iget-object v0, v0, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    iput-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/google/gson/y;->a(II)V

    :cond_3
    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iget v0, v0, Lcom/google/gson/az;->a:I

    if-eq v0, p1, :cond_4

    move v0, v4

    :goto_2
    return v0

    :cond_4
    iget v0, p0, Lcom/google/gson/y;->i:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iget-object v1, p0, Lcom/google/gson/y;->h:Lcom/google/gson/az;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/gson/y;->q:Lcom/google/gson/y$b;

    throw v0

    :cond_5
    move v0, v3

    goto :goto_2
.end method

.method private final c()Lcom/google/gson/JsonNull;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    invoke-static {}, Lcom/google/gson/JsonNull;->b()Lcom/google/gson/JsonNull;

    move-result-object v0

    return-object v0
.end method

.method private final d()Lcom/google/gson/JsonArray;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/16 v4, 0x20

    const/4 v3, -0x1

    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    iget v1, p0, Lcom/google/gson/y;->f:I

    if-ne v1, v3, :cond_0

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/4 v1, 0x7

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_0
    iget v1, p0, Lcom/google/gson/y;->f:I

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v4}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    :goto_1
    return-object v0

    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/y;->e()Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :goto_2
    iget v1, p0, Lcom/google/gson/y;->f:I

    if-ne v1, v3, :cond_1

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v1

    :goto_3
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lcom/google/gson/y;->k:[I

    const/4 v2, 0x6

    iget v3, p0, Lcom/google/gson/y;->j:I

    aput v3, v1, v2

    invoke-direct {p0, v4}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/google/gson/y;->f:I

    goto :goto_3

    :pswitch_0
    const/16 v1, 0x1c

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    invoke-direct {p0}, Lcom/google/gson/y;->e()Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x1b -> :sswitch_1
        0x1f -> :sswitch_1
        0x20 -> :sswitch_0
        0x21 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch
.end method

.method private final e()Lcom/google/gson/JsonElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/4 v3, -0x1

    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/16 v1, 0x8

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_0

    :sswitch_0
    invoke-direct {p0}, Lcom/google/gson/y;->i()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_1
    invoke-direct {p0}, Lcom/google/gson/y;->g()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/y;->b()Lcom/google/gson/JsonObject;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    invoke-direct {p0}, Lcom/google/gson/y;->d()Lcom/google/gson/JsonArray;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    invoke-direct {p0}, Lcom/google/gson/y;->f()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/y;->c()Lcom/google/gson/JsonNull;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0x7 -> :sswitch_5
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_4
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1b -> :sswitch_2
        0x1f -> :sswitch_3
        0x21 -> :sswitch_1
    .end sparse-switch
.end method

.method private final f()Lcom/google/gson/JsonPrimitive;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/az;->f:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    return-object v1
.end method

.method private final g()Lcom/google/gson/JsonPrimitive;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/4 v5, 0x0

    const/16 v2, 0x21

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-direct {p0}, Lcom/google/gson/y;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/16 v1, 0xe

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v4}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/JsonPrimitive;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    :goto_1
    return-object v0

    :sswitch_1
    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v4, :cond_1

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    move v0, v3

    :goto_3
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    if-eqz v0, :cond_2

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_4
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object v0, v1

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, v2}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move v0, v1

    goto :goto_3

    :cond_2
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4

    :cond_3
    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v4, :cond_4

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_5
    sparse-switch v0, :sswitch_data_1

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v4}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_4
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_5

    :sswitch_2
    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v4, :cond_8

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_6
    packed-switch v0, :pswitch_data_1

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/16 v1, 0xf

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    move v0, v3

    :goto_7
    invoke-direct {p0}, Lcom/google/gson/y;->h()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_8
    iget v1, p0, Lcom/google/gson/y;->f:I

    if-ne v1, v4, :cond_a

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v1

    :goto_9
    packed-switch v1, :pswitch_data_2

    iget-object v1, p0, Lcom/google/gson/y;->k:[I

    const/16 v2, 0xa

    iget v3, p0, Lcom/google/gson/y;->j:I

    aput v3, v1, v2

    move-object v1, v5

    :goto_a
    iget v2, p0, Lcom/google/gson/y;->f:I

    if-ne v2, v4, :cond_b

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v2

    :goto_b
    packed-switch v2, :pswitch_data_3

    iget-object v2, p0, Lcom/google/gson/y;->k:[I

    const/16 v3, 0xb

    iget v4, p0, Lcom/google/gson/y;->j:I

    aput v4, v2, v3

    move-object v2, v5

    :goto_c
    if-nez v2, :cond_5

    if-eqz v1, :cond_c

    :cond_5
    if-nez v1, :cond_6

    const-string v1, ""

    :cond_6
    if-nez v2, :cond_7

    const-string v2, ""

    :cond_7
    new-instance v3, Ljava/math/BigDecimal;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    :goto_d
    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    move-object v0, v1

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_6

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move v0, v1

    goto :goto_7

    :cond_9
    move-object v0, v1

    goto :goto_8

    :cond_a
    iget v1, p0, Lcom/google/gson/y;->f:I

    goto :goto_9

    :pswitch_2
    const/16 v1, 0x22

    invoke-direct {p0, v1}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    invoke-direct {p0}, Lcom/google/gson/y;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_b
    iget v2, p0, Lcom/google/gson/y;->f:I

    goto :goto_b

    :pswitch_3
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move-result-object v2

    iget-object v2, v2, Lcom/google/gson/az;->f:Ljava/lang/String;

    goto :goto_c

    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0x9 -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_2
        0x21 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x22
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch
.end method

.method private final h()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move-result-object v0

    iget-object v0, v0, Lcom/google/gson/az;->f:Ljava/lang/String;

    return-object v0
.end method

.method private final i()Lcom/google/gson/JsonPrimitive;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/16 v7, 0x5c

    const/16 v4, 0x11

    const/16 v6, 0x10

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    iget v1, p0, Lcom/google/gson/y;->j:I

    aput v1, v0, v4

    invoke-direct {p0, v2}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v6}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move-result-object v0

    :goto_1
    iget-object v0, v0, Lcom/google/gson/az;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    if-ne v4, v7, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v3, v3, 0x1

    const/16 v5, 0x75

    if-ne v4, v5, :cond_1

    add-int/lit8 v4, v3, 0x4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x4

    goto :goto_2

    :pswitch_1
    invoke-direct {p0, v4}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    move-result-object v0

    goto :goto_1

    :cond_1
    sparse-switch v4, :sswitch_data_0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected character: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/16 v4, 0xa

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :sswitch_1
    const/16 v4, 0x8

    goto :goto_3

    :sswitch_2
    const/16 v4, 0xc

    goto :goto_3

    :sswitch_3
    const/16 v4, 0x9

    goto :goto_3

    :sswitch_4
    const/16 v4, 0xd

    goto :goto_3

    :sswitch_5
    const/16 v4, 0x22

    goto :goto_3

    :sswitch_6
    const/16 v4, 0x27

    goto :goto_3

    :sswitch_7
    move v4, v7

    goto :goto_3

    :sswitch_8
    const/16 v4, 0x2f

    goto :goto_3

    :cond_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/gson/JsonPrimitive;

    invoke-direct {v1, v0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_5
        0x27 -> :sswitch_6
        0x2f -> :sswitch_8
        0x5c -> :sswitch_7
        0x62 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_0
        0x72 -> :sswitch_4
        0x74 -> :sswitch_3
    .end sparse-switch
.end method

.method private j()Z
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/gson/y;->i:I

    iget-object v0, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iput-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iput-object v0, p0, Lcom/google/gson/y;->h:Lcom/google/gson/az;

    :try_start_0
    invoke-direct {p0}, Lcom/google/gson/y;->k()Z
    :try_end_0
    .catch Lcom/google/gson/y$b; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0}, Lcom/google/gson/y;->m()V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/gson/y;->m()V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/google/gson/y;->m()V

    throw v0
.end method

.method private k()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/gson/y;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_0
    if-eqz v1, :cond_4

    iput-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    iget-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    const/16 v1, 0x21

    invoke-direct {p0, v1}, Lcom/google/gson/y;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/google/gson/y;->g:Lcom/google/gson/az;

    :cond_0
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/google/gson/y;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    if-eqz v0, :cond_4

    move v0, v3

    :goto_3
    if-eqz v0, :cond_5

    move v0, v3

    :goto_4
    return v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v2

    goto :goto_4
.end method

.method private l()I
    .locals 2

    iget-object v0, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iget-object v0, v0, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    iput-object v0, p0, Lcom/google/gson/y;->d:Lcom/google/gson/az;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iget-object v1, p0, Lcom/google/gson/y;->a:Lcom/google/gson/aa;

    invoke-virtual {v1}, Lcom/google/gson/aa;->a()Lcom/google/gson/az;

    move-result-object v1

    iput-object v1, v0, Lcom/google/gson/az;->g:Lcom/google/gson/az;

    iget v0, v1, Lcom/google/gson/az;->a:I

    iput v0, p0, Lcom/google/gson/y;->f:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/y;->d:Lcom/google/gson/az;

    iget v0, v0, Lcom/google/gson/az;->a:I

    iput v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_0
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lcom/google/gson/y;->n:[Lcom/google/gson/y$a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    iget v1, v0, Lcom/google/gson/y$a;->a:I

    iget v2, p0, Lcom/google/gson/y;->j:I

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/google/gson/y$a;->d:Lcom/google/gson/y$a;

    if-nez v1, :cond_1

    new-instance v1, Lcom/google/gson/y$a;

    invoke-direct {v1}, Lcom/google/gson/y$a;-><init>()V

    iput-object v1, v0, Lcom/google/gson/y$a;->d:Lcom/google/gson/y$a;

    move-object v0, v1

    :cond_0
    iget v1, p0, Lcom/google/gson/y;->j:I

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/gson/y;->i:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/gson/y$a;->a:I

    iget-object v1, p0, Lcom/google/gson/y;->c:Lcom/google/gson/az;

    iput-object v1, v0, Lcom/google/gson/y$a;->b:Lcom/google/gson/az;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/gson/y$a;->c:I

    return-void

    :cond_1
    iget-object v0, v0, Lcom/google/gson/y$a;->d:Lcom/google/gson/y$a;

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/gson/JsonElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/as;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, v2}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/JsonParseException;

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :sswitch_1
    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v3, :cond_1

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    iget v1, p0, Lcom/google/gson/y;->j:I

    aput v1, v0, v2

    :goto_2
    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v3, :cond_2

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_3
    sparse-switch v0, :sswitch_data_1

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/4 v1, 0x1

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_3

    :sswitch_2
    invoke-direct {p0}, Lcom/google/gson/y;->b()Lcom/google/gson/JsonObject;

    move-result-object v0

    :goto_4
    return-object v0

    :sswitch_3
    invoke-direct {p0}, Lcom/google/gson/y;->d()Lcom/google/gson/JsonArray;

    move-result-object v0

    goto :goto_4

    :sswitch_4
    iget v0, p0, Lcom/google/gson/y;->f:I

    if-ne v0, v3, :cond_3

    invoke-direct {p0}, Lcom/google/gson/y;->l()I

    move-result v0

    :goto_5
    sparse-switch v0, :sswitch_data_2

    iget-object v0, p0, Lcom/google/gson/y;->k:[I

    const/16 v1, 0x9

    iget v2, p0, Lcom/google/gson/y;->j:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lcom/google/gson/y;->a(I)Lcom/google/gson/az;

    new-instance v0, Lcom/google/gson/as;

    invoke-direct {v0}, Lcom/google/gson/as;-><init>()V

    throw v0

    :cond_3
    iget v0, p0, Lcom/google/gson/y;->f:I

    goto :goto_5

    :sswitch_5
    invoke-direct {p0}, Lcom/google/gson/y;->i()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    goto :goto_4

    :sswitch_6
    invoke-direct {p0}, Lcom/google/gson/y;->g()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    goto :goto_4

    :sswitch_7
    invoke-direct {p0}, Lcom/google/gson/y;->f()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    goto :goto_4

    :sswitch_8
    invoke-direct {p0}, Lcom/google/gson/y;->c()Lcom/google/gson/JsonNull;

    move-result-object v0

    goto :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_1
        0x8 -> :sswitch_1
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0x10 -> :sswitch_1
        0x11 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x1f -> :sswitch_1
        0x21 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_4
        0x7 -> :sswitch_8
        0x8 -> :sswitch_4
        0x9 -> :sswitch_4
        0xa -> :sswitch_4
        0x10 -> :sswitch_4
        0x11 -> :sswitch_4
        0x1b -> :sswitch_2
        0x1f -> :sswitch_3
        0x21 -> :sswitch_4
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0x10 -> :sswitch_5
        0x11 -> :sswitch_5
        0x21 -> :sswitch_6
    .end sparse-switch
.end method
