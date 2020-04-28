.class public final Lcom/blueoxtech/sevenlittlewords/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private synthetic a:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/u;->a:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;II)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, 0x1

    invoke-static {v1}, Lcom/blueoxtech/sevenlittlewords/u;->a(C)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/blueoxtech/sevenlittlewords/u;->a(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    if-ge v1, p1, :cond_0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/blueoxtech/sevenlittlewords/u;->a(C)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private static a(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 11

    const/4 v10, 0x0

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    move v0, v10

    :goto_0
    return v0

    :cond_1
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v10

    move v3, v10

    :cond_2
    if-ge v3, v0, :cond_5

    if-ge v2, v1, :cond_5

    invoke-static {p1, v0, v3}, Lcom/blueoxtech/sevenlittlewords/u;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {p2, v1, v2}, Lcom/blueoxtech/sevenlittlewords/u;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v2, v6

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/blueoxtech/sevenlittlewords/u;->a(C)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/blueoxtech/sevenlittlewords/u;->a(C)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v7, v6, v7

    if-nez v7, :cond_7

    move v8, v7

    move v7, v10

    :goto_1
    if-ge v7, v6, :cond_6

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    sub-int/2addr v8, v9

    if-eqz v8, :cond_3

    move v0, v8

    goto :goto_0

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    :goto_2
    if-eqz v4, :cond_2

    move v0, v4

    goto :goto_0

    :cond_5
    sub-int/2addr v0, v1

    goto :goto_0

    :cond_6
    move v4, v8

    goto :goto_2

    :cond_7
    move v4, v7

    goto :goto_2
.end method
