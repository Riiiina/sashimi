.class public Lcom/clov4r/android/nil/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static b:I

.field public static c:I


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/clov4r/android/nil/g;->b:I

    const/4 v0, 0x1

    sput v0, Lcom/clov4r/android/nil/g;->c:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clov4r/android/nil/g;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/clov4r/android/nil/dg;Lcom/clov4r/android/nil/dg;)I
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/clov4r/android/nil/dg;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p2, Lcom/clov4r/android/nil/dg;->b:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move v0, v4

    goto :goto_0

    :cond_4
    iget v2, p1, Lcom/clov4r/android/nil/dg;->d:I

    iget v3, p2, Lcom/clov4r/android/nil/dg;->d:I

    if-eq v2, v3, :cond_5

    iget v0, p1, Lcom/clov4r/android/nil/dg;->d:I

    iget v1, p2, Lcom/clov4r/android/nil/dg;->d:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_5
    sget v2, Lcom/clov4r/android/nil/g;->c:I

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v4

    goto :goto_0

    :pswitch_0
    iget-object v2, p1, Lcom/clov4r/android/nil/dg;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/clov4r/android/nil/dg;->b:Ljava/lang/String;

    iget-object v3, p2, Lcom/clov4r/android/nil/dg;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v4

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/clov4r/android/nil/dg;->b:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v0, p1, Lcom/clov4r/android/nil/dg;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/clov4r/android/nil/dg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_7
    :pswitch_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v0, v4

    goto :goto_0

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_9
    :pswitch_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sub-long v0, v2, v0

    long-to-int v0, v0

    goto/16 :goto_0

    :pswitch_4
    if-eqz p1, :cond_a

    if-nez p2, :cond_b

    :cond_a
    move v0, v4

    goto/16 :goto_0

    :cond_b
    iget v0, p1, Lcom/clov4r/android/nil/dg;->d:I

    iget v1, p2, Lcom/clov4r/android/nil/dg;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public a(Lcom/clov4r/android/nil/library/g;Lcom/clov4r/android/nil/library/g;)I
    .locals 9

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    :try_start_0
    sget v0, Lcom/clov4r/android/nil/g;->b:I

    packed-switch v0, :pswitch_data_0

    :cond_3
    :goto_1
    move v0, v6

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    iget-object v1, p2, Lcom/clov4r/android/nil/library/g;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_5
    :pswitch_1
    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v6

    goto :goto_0

    :cond_6
    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    iget-object v1, p2, Lcom/clov4r/android/nil/library/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_7
    :pswitch_2
    iget-wide v0, p1, Lcom/clov4r/android/nil/library/g;->d:J

    iget-wide v2, p2, Lcom/clov4r/android/nil/library/g;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->f:Ljava/lang/String;

    iget-object v1, p2, Lcom/clov4r/android/nil/library/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v6

    goto :goto_0

    :cond_8
    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->f:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->f:Ljava/lang/String;

    iget-object v1, p2, Lcom/clov4r/android/nil/library/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_9
    :pswitch_4
    iget-wide v0, p1, Lcom/clov4r/android/nil/library/g;->e:J

    iget-wide v2, p2, Lcom/clov4r/android/nil/library/g;->e:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :pswitch_5
    iget-wide v0, p1, Lcom/clov4r/android/nil/library/g;->g:J

    iget-wide v2, p2, Lcom/clov4r/android/nil/library/g;->g:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p1, Lcom/clov4r/android/nil/library/g;->i:Ljava/lang/String;

    iget-object v1, p2, Lcom/clov4r/android/nil/library/g;->i:Ljava/lang/String;

    if-nez v0, :cond_a

    if-eqz v1, :cond_a

    move v0, v7

    goto/16 :goto_0

    :cond_a
    if-eqz v0, :cond_b

    if-nez v1, :cond_b

    move v0, v8

    goto/16 :goto_0

    :cond_b
    if-nez v0, :cond_c

    if-nez v1, :cond_c

    move v0, v6

    goto/16 :goto_0

    :cond_c
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x0

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "x"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int v4, v2, v0

    mul-int v5, v3, v1

    if-le v4, v5, :cond_d

    move v0, v8

    goto/16 :goto_0

    :cond_d
    mul-int v4, v2, v0

    mul-int v5, v3, v1

    if-ge v4, v5, :cond_e

    move v0, v7

    goto/16 :goto_0

    :cond_e
    mul-int/2addr v0, v2

    mul-int/2addr v1, v3

    if-ne v0, v1, :cond_3

    move v0, v6

    goto/16 :goto_0

    :cond_f
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    move v0, v8

    goto/16 :goto_0

    :cond_10
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v7

    goto/16 :goto_0

    :cond_11
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "x"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v6

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    const/4 v5, 0x0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    move v1, v5

    goto :goto_0

    :cond_2
    :try_start_0
    instance-of v1, p1, Lcom/clov4r/android/nil/library/g;

    if-eqz v1, :cond_3

    instance-of v1, p2, Lcom/clov4r/android/nil/library/g;

    if-eqz v1, :cond_3

    check-cast p1, Lcom/clov4r/android/nil/library/g;

    check-cast p2, Lcom/clov4r/android/nil/library/g;

    invoke-virtual {p0, p1, p2}, Lcom/clov4r/android/nil/g;->a(Lcom/clov4r/android/nil/library/g;Lcom/clov4r/android/nil/library/g;)I

    move-result v1

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/clov4r/android/nil/cp;

    if-eqz v1, :cond_5

    instance-of v1, p2, Lcom/clov4r/android/nil/cp;

    if-eqz v1, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/clov4r/android/nil/cp;

    move-object v1, v0

    move-object v0, p2

    check-cast v0, Lcom/clov4r/android/nil/cp;

    move-object v2, v0

    iget-object v3, v1, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    iget-object v4, v2, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v5

    goto :goto_0

    :cond_4
    iget-object v3, v1, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v1, v1, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    iget-object v2, v2, Lcom/clov4r/android/nil/cp;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_5
    instance-of v1, p1, Lcom/clov4r/android/nil/dg;

    if-eqz v1, :cond_6

    instance-of v1, p2, Lcom/clov4r/android/nil/dg;

    if-eqz v1, :cond_6

    check-cast p1, Lcom/clov4r/android/nil/dg;

    check-cast p2, Lcom/clov4r/android/nil/dg;

    invoke-virtual {p0, p1, p2}, Lcom/clov4r/android/nil/g;->a(Lcom/clov4r/android/nil/dg;Lcom/clov4r/android/nil/dg;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_6
    move v1, v5

    goto :goto_0
.end method
