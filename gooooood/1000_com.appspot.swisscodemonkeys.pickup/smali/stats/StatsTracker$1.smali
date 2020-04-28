.class Lstats/StatsTracker$1;
.super Ljava/util/LinkedHashMap;
.source "StatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lstats/StatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lstats/StatsTracker;


# direct methods
.method constructor <init>(Lstats/StatsTracker;IF)V
    .locals 0
    .param p2, "$anonymous0"    # I
    .param p3, "$anonymous1"    # F

    .prologue
    .line 1
    iput-object p1, p0, Lstats/StatsTracker$1;->this$0:Lstats/StatsTracker;

    .line 99
    invoke-direct {p0, p2, p3}, Ljava/util/LinkedHashMap;-><init>(IF)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "eldest":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lstats/StatsTracker$1;->size()I

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
