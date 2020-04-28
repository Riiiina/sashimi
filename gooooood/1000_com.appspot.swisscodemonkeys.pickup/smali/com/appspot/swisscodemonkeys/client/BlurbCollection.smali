.class public Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
.super Ljava/lang/Object;
.source "BlurbCollection.java"


# static fields
.field public static final ALL_TIME:I = 0x0

.field public static final MINE:I = -0x1

.field public static final OLDEST:I = -0x4

.field public static final RECENT:I = -0x3

.field public static final TODAY:I = -0x2


# instance fields
.field private blurbMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->blurbMap:Ljava/util/Map;

    .line 28
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->reset()V

    .line 29
    return-void
.end method


# virtual methods
.method public addMessage(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 3
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->reset()V

    .line 33
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->blurbMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 36
    return-void

    .line 33
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 34
    .local v0, "listEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->addList(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public get(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 46
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->blurbMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    return-object p0
.end method

.method public put(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V
    .locals 4
    .param p1, "blurbs"    # Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .prologue
    .line 50
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getCategory()J

    move-result-wide v0

    const-wide/16 v2, -0x4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getCategory()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 51
    :cond_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown category: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getCategory()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->blurbMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->getCategory()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    .line 39
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->blurbMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->blurbMap:Ljava/util/Map;

    const/4 v1, -0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    const-wide/16 v3, -0x2

    invoke-virtual {v2, v3, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->blurbMap:Ljava/util/Map;

    const/4 v1, -0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    const-wide/16 v3, -0x3

    invoke-virtual {v2, v3, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->blurbMap:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v3, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->setCategory(J)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method
