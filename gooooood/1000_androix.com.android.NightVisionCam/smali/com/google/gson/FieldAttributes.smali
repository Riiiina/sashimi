.class public final Lcom/google/gson/FieldAttributes;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/gson/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/b",
            "<",
            "Lcom/google/gson/ap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/reflect/Field;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final e:Z

.field private final f:I

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/reflect/Type;

.field private i:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/gson/ah;

    invoke-static {}, Lcom/google/gson/FieldAttributes;->c()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/gson/ah;-><init>(I)V

    sput-object v0, Lcom/google/gson/FieldAttributes;->a:Lcom/google/gson/b;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 1
    .param p2, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "parentClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/gson/at;->a(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/gson/FieldAttributes;->b:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->g:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->d:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/gson/FieldAttributes;->e:Z

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    iput v0, p0, Lcom/google/gson/FieldAttributes;->f:I

    iput-object p2, p0, Lcom/google/gson/FieldAttributes;->c:Ljava/lang/reflect/Field;

    return-void
.end method

.method private static c()I
    .locals 3

    const/16 v2, 0x7d0

    :try_start_0
    const-string v0, "com.google.gson.annotation_cache_size_hint"

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/gson/FieldAttributes;->e:Z

    return v0
.end method

.method final b()Ljava/lang/reflect/Field;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->c:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public final getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, "annotation":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Lcom/google/gson/FieldAttributes;->getAnnotations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0    # "this":Lcom/google/gson/FieldAttributes;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/annotation/Annotation;

    invoke-interface {p0}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v1

    if-ne v1, p1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAnnotations()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->i:Ljava/util/Collection;

    if-nez v0, :cond_0

    new-instance v1, Lcom/google/gson/ap;

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->b:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/gson/FieldAttributes;->g:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/google/gson/ap;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lcom/google/gson/FieldAttributes;->a:Lcom/google/gson/b;

    invoke-interface {v0, v1}, Lcom/google/gson/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->i:Ljava/util/Collection;

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->i:Ljava/util/Collection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->i:Ljava/util/Collection;

    sget-object v0, Lcom/google/gson/FieldAttributes;->a:Lcom/google/gson/b;

    iget-object v2, p0, Lcom/google/gson/FieldAttributes;->i:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Lcom/google/gson/b;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->i:Ljava/util/Collection;

    return-object v0
.end method

.method public final getDeclaredClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->d:Ljava/lang/Class;

    return-object v0
.end method

.method public final getDeclaredType()Ljava/lang/reflect/Type;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->h:Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/FieldAttributes;->h:Ljava/lang/reflect/Type;

    :cond_0
    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->h:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/gson/FieldAttributes;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final hasModifier(I)Z
    .locals 1
    .param p1, "modifier"    # I

    .prologue
    iget v0, p0, Lcom/google/gson/FieldAttributes;->f:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
