.class public Lcom/clearchannel/iheartradio/model/IHRComparator$IHRStringPrefixComparator;
.super Lcom/clearchannel/iheartradio/model/IHRComparator;
.source "IHRComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "IHRStringPrefixComparator"
.end annotation


# instance fields
.field protected mPrefixLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "prefixLength"    # I

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRComparator;-><init>()V

    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRComparator$IHRStringPrefixComparator;->mPrefixLength:I

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 10
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 29
    .local v3, "l":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 31
    .local v6, "r":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 32
    .local v4, "n":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    .line 34
    .local v5, "o":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, p0, Lcom/clearchannel/iheartradio/model/IHRComparator$IHRStringPrefixComparator;->mPrefixLength:I

    if-lt v2, v7, :cond_0

    move v7, v9

    .line 50
    :goto_1
    return v7

    .line 37
    :cond_0
    if-le v2, v4, :cond_2

    if-le v2, v5, :cond_1

    move v7, v9

    goto :goto_1

    :cond_1
    move v7, v8

    goto :goto_1

    .line 39
    :cond_2
    if-le v2, v5, :cond_3

    move v7, v8

    goto :goto_1

    .line 43
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 44
    .local v0, "a":C
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 46
    .local v1, "b":C
    if-ge v0, v1, :cond_4

    move v7, v8

    goto :goto_1

    .line 47
    :cond_4
    if-le v0, v1, :cond_5

    const/4 v7, 0x1

    goto :goto_1

    .line 34
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
