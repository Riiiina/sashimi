.class final Lcom/google/gson/bc;
.super Lcom/google/gson/bb;


# instance fields
.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/gson/bb;-><init>(Ljava/lang/reflect/Type;)V

    iget-object v0, p0, Lcom/google/gson/bc;->b:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/google/gson/bc;->c:Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/gson/bc;->a:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/google/gson/bc;->b:Ljava/lang/Class;

    instance-of v2, v0, Ljava/lang/reflect/GenericArrayType;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/gson/bc;->d:Ljava/lang/reflect/Type;

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final e()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/bc;->d:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final f()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/bc;->c:Ljava/lang/Class;

    return-object v0
.end method
