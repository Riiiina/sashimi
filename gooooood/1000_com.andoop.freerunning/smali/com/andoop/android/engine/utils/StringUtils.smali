.class public Lcom/andoop/android/engine/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final EMPTY_CHAR:C = ' '

.field private static final NUMBERS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/andoop/android/engine/utils/StringUtils;->NUMBERS:[C

    .line 3
    return-void

    .line 5
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final intToChars(I[C)V
    .locals 9
    .param p0, "pInt"    # I
    .param p1, "pChars"    # [C

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 9
    array-length v2, p1

    .line 10
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "p":I
    move v4, v3

    .line 11
    .end local v3    # "p":I
    .local v4, "p":I
    :goto_0
    if-lez p0, :cond_0

    if-lt v4, v2, :cond_2

    .line 15
    :cond_0
    move v1, v4

    .local v1, "i":I
    :goto_1
    if-lt v1, v2, :cond_3

    .line 18
    const/4 v1, 0x0

    :goto_2
    div-int/lit8 v5, v4, 0x2

    if-lt v1, v5, :cond_4

    .line 23
    if-nez p0, :cond_1

    if-nez v4, :cond_1

    .line 24
    sget-object v5, Lcom/andoop/android/engine/utils/StringUtils;->NUMBERS:[C

    aget-char v5, v5, v7

    aput-char v5, p1, v7

    .line 26
    :cond_1
    return-void

    .line 12
    .end local v1    # "i":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "p":I
    .restart local v3    # "p":I
    sget-object v5, Lcom/andoop/android/engine/utils/StringUtils;->NUMBERS:[C

    rem-int/lit8 v6, p0, 0xa

    aget-char v5, v5, v6

    aput-char v5, p1, v4

    .line 13
    div-int/lit8 p0, p0, 0xa

    move v4, v3

    .end local v3    # "p":I
    .restart local v4    # "p":I
    goto :goto_0

    .line 16
    .restart local v1    # "i":I
    :cond_3
    const/16 v5, 0x20

    aput-char v5, p1, v1

    .line 15
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_4
    aget-char v0, p1, v1

    .line 20
    .local v0, "c":C
    sub-int v5, v4, v8

    sub-int/2addr v5, v1

    aget-char v5, p1, v5

    aput-char v5, p1, v1

    .line 21
    sub-int v5, v4, v8

    sub-int/2addr v5, v1

    aput-char v0, p1, v5

    .line 18
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
