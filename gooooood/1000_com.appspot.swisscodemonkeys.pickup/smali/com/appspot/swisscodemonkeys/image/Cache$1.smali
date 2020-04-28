.class Lcom/appspot/swisscodemonkeys/image/Cache$1;
.super Ljava/util/LinkedHashMap;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/Cache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<TK;",
        "Ljava/lang/ref/SoftReference",
        "<TT;>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/image/Cache;

.field private final synthetic val$cacheSize:I


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/Cache;IFZI)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # Z

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/Cache$1;->this$0:Lcom/appspot/swisscodemonkeys/image/Cache;

    iput p5, p0, Lcom/appspot/swisscodemonkeys/image/Cache$1;->val$cacheSize:I

    .line 22
    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<TK;",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;>;)Z"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljava/lang/ref/SoftReference<TT;>;>;"
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/image/Cache$1;->size()I

    move-result v0

    iget v1, p0, Lcom/appspot/swisscodemonkeys/image/Cache$1;->val$cacheSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
