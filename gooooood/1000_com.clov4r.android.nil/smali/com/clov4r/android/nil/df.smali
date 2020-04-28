.class public Lcom/clov4r/android/nil/df;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/eb;


# direct methods
.method public constructor <init>(Lcom/clov4r/android/nil/eb;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/df;->a:Lcom/clov4r/android/nil/eb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/clov4r/android/nil/bg;Lcom/clov4r/android/nil/bg;)I
    .locals 6

    iget-wide v0, p1, Lcom/clov4r/android/nil/bg;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v1, p2, Lcom/clov4r/android/nil/bg;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/clov4r/android/nil/bg;

    check-cast p2, Lcom/clov4r/android/nil/bg;

    invoke-virtual {p0, p1, p2}, Lcom/clov4r/android/nil/df;->a(Lcom/clov4r/android/nil/bg;Lcom/clov4r/android/nil/bg;)I

    move-result v0

    return v0
.end method
