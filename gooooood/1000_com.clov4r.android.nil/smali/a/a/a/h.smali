.class La/a/a/h;
.super Ljava/lang/Object;


# static fields
.field private static a:[C

.field private static b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0x40

    const/4 v4, 0x0

    new-array v0, v5, [C

    sput-object v0, La/a/a/h;->a:[C

    const/16 v0, 0x41

    move v1, v4

    :goto_0
    const/16 v2, 0x5a

    if-gt v0, v2, :cond_0

    sget-object v2, La/a/a/h;->a:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v3

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v2, 0x7a

    if-gt v0, v2, :cond_1

    sget-object v2, La/a/a/h;->a:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v3

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v2, 0x39

    if-gt v0, v2, :cond_2

    sget-object v2, La/a/a/h;->a:[C

    add-int/lit8 v3, v1, 0x1

    aput-char v0, v2, v1

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    move v1, v3

    goto :goto_2

    :cond_2
    sget-object v0, La/a/a/h;->a:[C

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x2b

    aput-char v3, v0, v1

    sget-object v0, La/a/a/h;->a:[C

    add-int/lit8 v1, v2, 0x1

    const/16 v1, 0x2f

    aput-char v1, v0, v2

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, La/a/a/h;->b:[B

    move v0, v4

    :goto_3
    sget-object v1, La/a/a/h;->b:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, La/a/a/h;->b:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_4
    if-ge v0, v5, :cond_4

    sget-object v1, La/a/a/h;->b:[B

    sget-object v2, La/a/a/h;->a:[C

    aget-char v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, La/a/a/h;->a([C)[B

    move-result-object v0

    return-object v0
.end method

.method static a([C)[B
    .locals 12

    const/16 v11, 0x41

    const/4 v3, 0x0

    const/16 v10, 0x7f

    array-length v0, p0

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    const/4 v1, 0x1

    sub-int v1, v0, v1

    aget-char v1, p0, v1

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v0, 0x3

    div-int/lit8 v1, v1, 0x4

    new-array v2, v1, [B

    move v4, v3

    :goto_1
    if-ge v4, v0, :cond_9

    add-int/lit8 v5, v4, 0x1

    aget-char v4, p0, v4

    add-int/lit8 v6, v5, 0x1

    aget-char v5, p0, v5

    if-ge v6, v0, :cond_3

    add-int/lit8 v7, v6, 0x1

    aget-char v6, p0, v6

    :goto_2
    if-ge v7, v0, :cond_4

    add-int/lit8 v8, v7, 0x1

    aget-char v7, p0, v7

    :goto_3
    if-gt v4, v10, :cond_2

    if-gt v5, v10, :cond_2

    if-gt v6, v10, :cond_2

    if-le v7, v10, :cond_5

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v7, v6

    move v6, v11

    goto :goto_2

    :cond_4
    move v8, v7

    move v7, v11

    goto :goto_3

    :cond_5
    sget-object v9, La/a/a/h;->b:[B

    aget-byte v4, v9, v4

    sget-object v9, La/a/a/h;->b:[B

    aget-byte v5, v9, v5

    sget-object v9, La/a/a/h;->b:[B

    aget-byte v6, v9, v6

    sget-object v9, La/a/a/h;->b:[B

    aget-byte v7, v9, v7

    if-ltz v4, :cond_6

    if-ltz v5, :cond_6

    if-ltz v6, :cond_6

    if-gez v7, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v9, v5, 0x4

    or-int/2addr v4, v9

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v9, v6, 0x2

    or-int/2addr v5, v9

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v7

    add-int/lit8 v7, v3, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    if-ge v7, v1, :cond_a

    add-int/lit8 v3, v7, 0x1

    int-to-byte v4, v5

    aput-byte v4, v2, v7

    :goto_4
    if-ge v3, v1, :cond_8

    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, v6

    aput-byte v5, v2, v3

    move v3, v4

    :cond_8
    move v4, v8

    goto :goto_1

    :cond_9
    return-object v2

    :cond_a
    move v3, v7

    goto :goto_4
.end method

.method static a([B)[C
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, La/a/a/h;->a([BI)[C

    move-result-object v0

    return-object v0
.end method

.method static a([BI)[C
    .locals 12

    const/16 v11, 0x3d

    const/4 v10, 0x0

    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v1, p1, 0x2

    div-int/lit8 v1, v1, 0x3

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [C

    move v2, v10

    move v3, v10

    :goto_0
    if-ge v3, p1, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    if-ge v4, p1, :cond_0

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    :goto_1
    if-ge v5, p1, :cond_1

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    :goto_2
    ushr-int/lit8 v7, v3, 0x2

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x4

    ushr-int/lit8 v8, v4, 0x4

    or-int/2addr v3, v8

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x2

    ushr-int/lit8 v8, v5, 0x6

    or-int/2addr v4, v8

    and-int/lit8 v5, v5, 0x3f

    add-int/lit8 v8, v2, 0x1

    sget-object v9, La/a/a/h;->a:[C

    aget-char v7, v9, v7

    aput-char v7, v1, v2

    add-int/lit8 v2, v8, 0x1

    sget-object v7, La/a/a/h;->a:[C

    aget-char v3, v7, v3

    aput-char v3, v1, v8

    if-ge v2, v0, :cond_2

    sget-object v3, La/a/a/h;->a:[C

    aget-char v3, v3, v4

    :goto_3
    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v0, :cond_3

    sget-object v3, La/a/a/h;->a:[C

    aget-char v3, v3, v5

    :goto_4
    aput-char v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0

    :cond_0
    move v5, v4

    move v4, v10

    goto :goto_1

    :cond_1
    move v6, v5

    move v5, v10

    goto :goto_2

    :cond_2
    move v3, v11

    goto :goto_3

    :cond_3
    move v3, v11

    goto :goto_4

    :cond_4
    return-object v1
.end method
