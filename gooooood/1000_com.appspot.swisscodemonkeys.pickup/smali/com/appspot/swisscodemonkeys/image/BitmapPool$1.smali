.class Lcom/appspot/swisscodemonkeys/image/BitmapPool$1;
.super Ljava/lang/Thread;
.source "BitmapPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/BitmapPool;->growHeap(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$mb:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$1;->val$mb:I

    .line 159
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 163
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v3, p0, Lcom/appspot/swisscodemonkeys/image/BitmapPool$1;->val$mb:I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v0, v3, :cond_0

    .line 173
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 174
    const/4 v2, 0x0

    .line 175
    return-void

    .line 166
    :cond_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    const/16 v3, 0x100

    if-lt v1, v3, :cond_1

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 167
    :cond_1
    const/16 v3, 0x1000

    :try_start_1
    new-array v3, v3, [B

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    .end local v1    # "j":I
    :catch_0
    move-exception v3

    goto :goto_1
.end method
