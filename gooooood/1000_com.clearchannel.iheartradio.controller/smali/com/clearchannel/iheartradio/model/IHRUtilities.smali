.class public Lcom/clearchannel/iheartradio/model/IHRUtilities;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRUtilities.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v4, "sbMd5Hash":Ljava/lang/StringBuilder;
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 84
    .local v3, "m":Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 86
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 88
    .local v0, "data":[B
    array-length v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    .line 97
    .end local v0    # "data":[B
    .end local v3    # "m":Ljava/security/MessageDigest;
    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 88
    .restart local v0    # "data":[B
    .restart local v3    # "m":Ljava/security/MessageDigest;
    :cond_0
    :try_start_1
    aget-byte v2, v0, v6

    .line 89
    .local v2, "element":B
    shr-int/lit8 v7, v2, 0x4

    and-int/lit8 v7, v7, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    and-int/lit8 v7, v2, 0xf

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Character;->forDigit(II)C

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "data":[B
    .end local v2    # "element":B
    .end local v3    # "m":Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static copyBuffer([BII)[B
    .locals 2
    .param p0, "buffer"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 20
    new-array v0, p2, [B

    .line 22
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    return-object v0
.end method

.method public static description(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p0, "inValue"    # Ljava/lang/Object;

    .prologue
    .line 372
    const-string v0, ""

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->description(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static description(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7
    .param p0, "inValue"    # Ljava/lang/Object;
    .param p1, "inPrefix"    # Ljava/lang/String;
    .param p2, "inSuffix"    # Ljava/lang/String;
    .param p3, "inSkipFirst"    # Z

    .prologue
    .line 335
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .local v3, "result":Ljava/lang/StringBuilder;
    if-nez p0, :cond_1

    .line 338
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "inValue":Ljava/lang/Object;
    if-eqz p3, :cond_0

    const-string p1, ""

    .end local p1    # "inPrefix":Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "<null>"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .end local p3    # "inSkipFirst":Z
    :goto_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 339
    .restart local p0    # "inValue":Ljava/lang/Object;
    .restart local p1    # "inPrefix":Ljava/lang/String;
    .restart local p3    # "inSkipFirst":Z
    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_4

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    const-string p3, ""

    .end local p3    # "inSkipFirst":Z
    :goto_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "(\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    check-cast p0, Ljava/util/Collection;

    .end local p0    # "inValue":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_3

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "inPrefix":Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .restart local p0    # "inValue":Ljava/lang/Object;
    .restart local p1    # "inPrefix":Ljava/lang/String;
    .restart local p3    # "inSkipFirst":Z
    :cond_2
    move-object p3, p1

    .line 340
    goto :goto_1

    .line 341
    .end local p0    # "inValue":Ljava/lang/Object;
    .end local p3    # "inSkipFirst":Z
    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 342
    .local p0, "value":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, " ,\n"

    const/4 v4, 0x0

    invoke-static {p0, v1, v2, v4}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->description(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 345
    .local p0, "inValue":Ljava/lang/Object;
    .restart local p3    # "inSkipFirst":Z
    :cond_4
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_7

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    const-string p3, ""

    .end local p3    # "inSkipFirst":Z
    :goto_3
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "{\n"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object p3, v0

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_6

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "inValue":Ljava/lang/Object;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "inPrefix":Ljava/lang/String;
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .restart local p0    # "inValue":Ljava/lang/Object;
    .restart local p1    # "inPrefix":Ljava/lang/String;
    .restart local p3    # "inSkipFirst":Z
    :cond_5
    move-object p3, p1

    .line 346
    goto :goto_3

    .line 347
    .end local p3    # "inSkipFirst":Z
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 348
    .local p3, "key":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const/4 v6, 0x0

    invoke-static {p3, v4, v5, v6}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->description(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .end local p3    # "key":Ljava/lang/Object;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\t"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, " ,\n"

    const/4 v6, 0x1

    invoke-static {p3, v1, v5, v6}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->description(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    .line 351
    .local p3, "inSkipFirst":Z
    :cond_7
    instance-of v1, p0, [B

    if-eqz v1, :cond_c

    .line 352
    check-cast p0, [B

    .line 354
    .local p0, "bytes":[B
    if-eqz p3, :cond_8

    const-string v1, "[\n"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_8
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p0

    if-lt v1, v2, :cond_9

    .line 362
    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "bytes":[B
    if-eqz p3, :cond_b

    const-string p1, "]"

    .end local p1    # "inPrefix":Ljava/lang/String;
    :goto_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string p0, "\n"

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 356
    .restart local p0    # "bytes":[B
    .restart local p1    # "inPrefix":Ljava/lang/String;
    :cond_9
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string v2, ":"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    const/16 v4, 0x10

    if-lt v2, v4, :cond_a

    .line 360
    const-string v2, "\n"

    .end local v2    # "j":I
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v1, v1, 0x10

    goto :goto_5

    .line 359
    .restart local v2    # "j":I
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 362
    .end local v2    # "j":I
    .end local p0    # "bytes":[B
    :cond_b
    const-string p1, ""

    goto :goto_6

    .line 365
    .end local v1    # "i":I
    .local p0, "inValue":Ljava/lang/Object;
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    if-eqz p3, :cond_d

    const-string p1, ""

    .end local p1    # "inPrefix":Ljava/lang/String;
    :cond_d
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public static hexify(BZ)Ljava/lang/String;
    .locals 1
    .param p0, "inByte"    # B
    .param p1, "inCase"    # Z

    .prologue
    .line 28
    and-int/lit16 v0, p0, 0xff

    invoke-static {v0, p1}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->hexify(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexify(IZ)Ljava/lang/String;
    .locals 1
    .param p0, "inInteger"    # I
    .param p1, "inCase"    # Z

    .prologue
    .line 29
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isUsingWiFi()Z
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/net/ConnectivityManager;->isNetworkTypeValid(I)Z

    move-result v0

    return v0
.end method

.method public static osType(Ljava/lang/String;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v0, v1, 0x18

    .line 35
    .local v0, "result":I
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 36
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 37
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 39
    return v0
.end method

.method public static randomUUID()[B
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x18

    const/16 v10, 0x10

    const/16 v9, 0x8

    const-wide/16 v7, 0xff

    .line 105
    new-array v2, v10, [B

    .line 106
    .local v2, "result":[B
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    .line 108
    .local v3, "uuid":Ljava/util/UUID;
    invoke-virtual {v3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v0

    .line 110
    .local v0, "n":J
    const/4 v4, 0x0

    const/16 v5, 0x38

    shr-long v5, v0, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 111
    const/4 v4, 0x1

    const/16 v5, 0x30

    shr-long v5, v0, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 112
    const/4 v4, 0x2

    const/16 v5, 0x28

    shr-long v5, v0, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 113
    const/4 v4, 0x3

    shr-long v5, v0, v12

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 114
    const/4 v4, 0x4

    shr-long v5, v0, v11

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 115
    const/4 v4, 0x5

    shr-long v5, v0, v10

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 116
    const/4 v4, 0x6

    shr-long v5, v0, v9

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 117
    const/4 v4, 0x7

    and-long v5, v0, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 119
    invoke-virtual {v3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    .line 121
    const/16 v4, 0x38

    shr-long v4, v0, v4

    and-long/2addr v4, v7

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v9

    .line 122
    const/16 v4, 0x9

    const/16 v5, 0x30

    shr-long v5, v0, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 123
    const/16 v4, 0xa

    const/16 v5, 0x28

    shr-long v5, v0, v5

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 124
    const/16 v4, 0xb

    shr-long v5, v0, v12

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 125
    const/16 v4, 0xc

    shr-long v5, v0, v11

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 126
    const/16 v4, 0xd

    shr-long v5, v0, v10

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 127
    const/16 v4, 0xe

    shr-long v5, v0, v9

    and-long/2addr v5, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 128
    const/16 v4, 0xf

    and-long v5, v0, v7

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 130
    return-object v2
.end method

.method public static readInputStream(Ljava/io/InputStream;[BII)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 138
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 139
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v3, p2, p3

    array-length v4, p1

    if-le v3, v4, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 140
    :cond_2
    if-nez p3, :cond_3

    const/4 v3, 0x0

    .line 148
    :goto_0
    return v3

    .line 142
    :cond_3
    add-int/lit8 v2, p2, 0x1

    .end local p2    # "offset":I
    .local v2, "offset":I
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .local v0, "n":I
    if-gez v0, :cond_4

    const/4 v3, -0x1

    move p2, v2

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    goto :goto_0

    .line 144
    .end local p2    # "offset":I
    .restart local v2    # "offset":I
    :cond_4
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_5

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    .local v1, "o":I
    if-lez v1, :cond_5

    .line 145
    if-le v1, p3, :cond_6

    move v3, p3

    :goto_1
    invoke-virtual {p0, p1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    add-int/2addr v0, v3

    .end local v1    # "o":I
    :cond_5
    move p2, v2

    .end local v2    # "offset":I
    .restart local p2    # "offset":I
    move v3, v0

    .line 148
    goto :goto_0

    .end local p2    # "offset":I
    .restart local v1    # "o":I
    .restart local v2    # "offset":I
    :cond_6
    move v3, v1

    .line 145
    goto :goto_1
.end method

.method public static resolveMediaVault(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "inURL"    # Ljava/lang/String;
    .param p1, "inUniqueDeviceID"    # Ljava/lang/String;
    .param p2, "inMediaVault"    # Ljava/lang/String;
    .param p3, "inSite"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v0, 0x0

    .line 163
    .local v0, "code":I
    if-nez p2, :cond_2

    .line 164
    move-object p1, p0

    .local p1, "url":Ljava/lang/String;
    move-object v0, p1

    .line 201
    .end local p1    # "url":Ljava/lang/String;
    .end local p2    # "inMediaVault":Ljava/lang/String;
    .local v0, "url":Ljava/lang/String;
    :goto_0
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;

    .line 203
    .local p2, "resolver":Ljava/net/HttpURLConnection;
    sget p1, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 204
    sget p1, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->TIMEOUT:I

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 210
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->shared()Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/clearchannel/iheartradio/model/IHRPremiumCredentials;->credentials(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 212
    .local p3, "string":Ljava/lang/String;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    .line 213
    const-string p1, "Authorization"

    invoke-virtual {p2, p1, p3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 218
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 220
    .local p1, "code":I
    const/16 v1, 0x191

    if-eq v1, p1, :cond_a

    .line 222
    const/16 v1, 0x12d

    if-eq v1, p1, :cond_1

    const/16 v1, 0x12e

    if-ne v1, p1, :cond_8

    .line 223
    :cond_1
    const-string p1, "Location"

    .end local p1    # "code":I
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local v0    # "url":Ljava/lang/String;
    .local p1, "url":Ljava/lang/String;
    move-object v6, p1

    .end local p1    # "url":Ljava/lang/String;
    .local v6, "url":Ljava/lang/String;
    move-object p1, p3

    .end local p3    # "string":Ljava/lang/String;
    .local p1, "string":Ljava/lang/String;
    move-object p3, v6

    .line 236
    .end local v6    # "url":Ljava/lang/String;
    .local p3, "url":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 239
    return-object p0

    .line 166
    .local v0, "code":I
    .local p1, "inUniqueDeviceID":Ljava/lang/String;
    .local p2, "inMediaVault":Ljava/lang/String;
    .local p3, "inSite":Ljava/lang/String;
    :cond_2
    const-string v0, "NOTICE IS HEREBY GIVEN THAT THIS TEXT AND THE ALGORITHMS USED HEREIN ARE COPYRIGHT 2009 CLEAR CHANNEL BROADCASTING, INCORPORATED AND ARE INTENDED SOLELY FOR USE IN PRODUCTS DEVELOPED AND/OR AUTHORIZED BY CLEAR CHANNEL BROADCASTING, INCORPORATED. ALL OTHER USE IS EXPRESSLY FORBIDDEN. YOUR USE OF THIS TEXT AND/OR ANY ALGORITHM CONTAINED HEREIN IN ANY NON-AUTHORIZED CAPACITY CONSTITUTES ADMITTANCE OF THEFT OF CLEAR CHANNEL BROADCASTING, INCORPORATED\'S INTELLECTUAL PROPERTY. VIOLATORS WILL BE PROSECUTED TO THE FULL EXTENT OF THE LAW."

    .line 167
    .local v0, "kLegalese":Ljava/lang/String;
    const-string v0, "UTF-8"

    .line 168
    .local v0, "encoding":Ljava/lang/String;
    if-nez p1, :cond_5

    const-string p1, "NO DEVICE ID SPECIFIED"

    .end local p1    # "inUniqueDeviceID":Ljava/lang/String;
    move-object v3, p1

    .line 169
    .local v3, "unique":Ljava/lang/String;
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 171
    .local v1, "time":J
    move-object p2, p2

    .line 173
    .local p2, "url":Ljava/lang/String;
    if-nez p3, :cond_6

    .line 174
    const-string p1, "site="

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    .line 175
    .local p1, "length":I
    if-lez p1, :cond_3

    add-int/lit8 p1, p1, 0x5

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .end local p1    # "length":I
    move-result-object p3

    .line 177
    :cond_3
    if-eqz p3, :cond_4

    .line 178
    const/16 p1, 0x26

    invoke-virtual {p3, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    .line 179
    .restart local p1    # "length":I
    if-lez p1, :cond_4

    const/4 v4, 0x0

    invoke-virtual {p3, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    .line 185
    .end local p1    # "length":I
    :cond_4
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "NOTICE IS HEREBY GIVEN THAT THIS TEXT AND THE ALGORITHMS USED HEREIN ARE COPYRIGHT 2009 CLEAR CHANNEL BROADCASTING, INCORPORATED AND ARE INTENDED SOLELY FOR USE IN PRODUCTS DEVELOPED AND/OR AUTHORIZED BY CLEAR CHANNEL BROADCASTING, INCORPORATED. ALL OTHER USE IS EXPRESSLY FORBIDDEN. YOUR USE OF THIS TEXT AND/OR ANY ALGORITHM CONTAINED HEREIN IN ANY NON-AUTHORIZED CAPACITY CONSTITUTES ADMITTANCE OF THEFT OF CLEAR CHANNEL BROADCASTING, INCORPORATED\'S INTELLECTUAL PROPERTY. VIOLATORS WILL BE PROSECUTED TO THE FULL EXTENT OF THE LAW. "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 186
    .local p1, "string":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 187
    .local p1, "buffer":[B
    const/4 v4, 0x0

    array-length v5, p1

    invoke-static {p1, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->SHA1String([BII)Ljava/lang/String;

    move-result-object p1

    .line 189
    .local p1, "string":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "url":Ljava/lang/String;
    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    const-string p2, "&client_id="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v3, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "unique":Ljava/lang/String;
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 191
    const-string v3, "&request_id="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "string":Ljava/lang/String;
    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 192
    const-string p2, "&timestamp="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 193
    const-string p2, "&decode_url="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 194
    const-string p2, "&url="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "url":Ljava/lang/String;
    move-object v0, p1

    .end local p1    # "url":Ljava/lang/String;
    .local v0, "url":Ljava/lang/String;
    goto/16 :goto_0

    .end local v1    # "time":J
    .local v0, "encoding":Ljava/lang/String;
    .local p1, "inUniqueDeviceID":Ljava/lang/String;
    .local p2, "inMediaVault":Ljava/lang/String;
    :cond_5
    move-object v3, p1

    .line 168
    goto/16 :goto_2

    .line 181
    .end local p1    # "inUniqueDeviceID":Ljava/lang/String;
    .restart local v1    # "time":J
    .restart local v3    # "unique":Ljava/lang/String;
    .local p2, "url":Ljava/lang/String;
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "site="

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_4

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "?"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    .end local p2    # "url":Ljava/lang/String;
    if-gez p2, :cond_7

    const-string p2, "?"

    :goto_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "site="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, "url":Ljava/lang/String;
    move-object p2, p1

    .end local p1    # "url":Ljava/lang/String;
    .restart local p2    # "url":Ljava/lang/String;
    goto/16 :goto_3

    .end local p2    # "url":Ljava/lang/String;
    :cond_7
    const-string p2, "&"

    goto :goto_4

    .line 224
    .end local v1    # "time":J
    .end local v3    # "unique":Ljava/lang/String;
    .local v0, "url":Ljava/lang/String;
    .local p1, "code":I
    .local p2, "resolver":Ljava/net/HttpURLConnection;
    .local p3, "string":Ljava/lang/String;
    :cond_8
    const/16 v1, 0xc8

    if-ne v1, p1, :cond_a

    .line 225
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result p1

    .line 226
    .local p1, "length":I
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p3

    .line 227
    .local p3, "stream":Ljava/io/InputStream;
    :goto_5
    invoke-virtual {p3}, Ljava/io/InputStream;->available()I

    move-result v1

    if-lt v1, p1, :cond_9

    .line 228
    new-array p1, p1, [B

    .line 229
    .local p1, "buffer":[B
    invoke-virtual {p3, p1}, Ljava/io/InputStream;->read([B)I

    .line 230
    invoke-virtual {p3}, Ljava/io/InputStream;->close()V

    .line 231
    new-instance p3, Ljava/lang/String;

    .end local p3    # "stream":Ljava/io/InputStream;
    invoke-direct {p3, p1}, Ljava/lang/String;-><init>([B)V

    .line 233
    .local p3, "string":Ljava/lang/String;
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    move-object p1, p3

    .end local p3    # "string":Ljava/lang/String;
    .local p1, "string":Ljava/lang/String;
    move-object p3, v0

    .end local v0    # "url":Ljava/lang/String;
    .local p3, "url":Ljava/lang/String;
    goto/16 :goto_1

    .line 227
    .restart local v0    # "url":Ljava/lang/String;
    .local p1, "length":I
    .local p3, "stream":Ljava/io/InputStream;
    :cond_9
    const-wide/16 v1, 0x64

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_5

    .end local p1    # "length":I
    .local p3, "string":Ljava/lang/String;
    :cond_a
    move-object p1, p3

    .end local p3    # "string":Ljava/lang/String;
    .local p1, "string":Ljava/lang/String;
    move-object p3, v0

    .end local v0    # "url":Ljava/lang/String;
    .local p3, "url":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public static stringByReplacingString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "search"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;
    .param p3, "replaceAll"    # Z

    .prologue
    .line 249
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 271
    :goto_0
    return-object v5

    .line 250
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    move-object v5, p0

    goto :goto_0

    .line 251
    :cond_2
    if-nez p2, :cond_3

    const-string p2, ""

    .line 253
    :cond_3
    const-string v4, ""

    .line 256
    .local v4, "string":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 257
    .local v2, "n":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 259
    .local v3, "o":I
    const/4 v0, 0x0

    .local v0, "i":I
    :cond_4
    if-lt v0, v2, :cond_7

    .line 269
    :cond_5
    :goto_1
    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_6
    move-object v5, v4

    .line 271
    goto :goto_0

    .line 260
    :cond_7
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .local v1, "j":I
    if-ltz v1, :cond_5

    .line 262
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 263
    invoke-virtual {v4, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    add-int v5, v1, v3

    add-int/2addr v0, v5

    .line 266
    if-nez p3, :cond_4

    goto :goto_1
.end method

.method public static stringCompareHonoringUnsigned(Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .param p0, "inA"    # Ljava/lang/String;
    .param p1, "inB"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x39

    const/16 v10, 0x30

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 310
    const/4 v0, 0x0

    .local v0, "ai":I
    const/4 v3, 0x0

    .line 313
    .local v3, "bi":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 314
    .local v2, "an":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 315
    .local v5, "bn":I
    if-ge v2, v5, :cond_2

    move v7, v2

    .line 317
    .local v7, "n":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-lt v6, v7, :cond_3

    .line 331
    :cond_0
    :goto_2
    if-le v0, v3, :cond_5

    move v8, v9

    :cond_1
    :goto_3
    return v8

    .end local v6    # "i":I
    .end local v7    # "n":I
    :cond_2
    move v7, v5

    .line 315
    goto :goto_0

    .line 318
    .restart local v6    # "i":I
    .restart local v7    # "n":I
    :cond_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 319
    .local v1, "al":C
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 321
    .local v4, "bl":C
    if-lt v1, v10, :cond_4

    if-gt v1, v11, :cond_4

    if-lt v4, v10, :cond_4

    if-gt v4, v11, :cond_4

    .line 322
    invoke-static {p0, v6}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->stringToUnsigned(Ljava/lang/String;I)I

    move-result v0

    .line 323
    invoke-static {p1, v6}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->stringToUnsigned(Ljava/lang/String;I)I

    move-result v3

    .line 325
    goto :goto_2

    .line 326
    :cond_4
    if-ne v1, v4, :cond_0

    .line 317
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 331
    .end local v1    # "al":C
    .end local v4    # "bl":C
    :cond_5
    if-lt v0, v3, :cond_1

    if-ge v6, v7, :cond_6

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v8

    goto :goto_3

    :cond_6
    if-le v2, v5, :cond_7

    move v8, v9

    goto :goto_3

    :cond_7
    if-lt v2, v5, :cond_1

    const/4 v8, 0x0

    goto :goto_3
.end method

.method public static stringToInteger(Ljava/lang/String;I)I
    .locals 4
    .param p0, "inString"    # Ljava/lang/String;
    .param p1, "inStart"    # I

    .prologue
    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, "result":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 294
    .local v0, "letter":C
    const/4 v1, 0x0

    .line 296
    .local v1, "negate":Z
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_1

    .line 297
    add-int/lit8 p1, p1, 0x1

    .line 298
    const/4 v1, 0x1

    .line 303
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/model/IHRUtilities;->stringToUnsigned(Ljava/lang/String;I)I

    move-result v2

    .line 305
    if-eqz v1, :cond_2

    neg-int v3, v2

    :goto_1
    return v3

    .line 299
    :cond_1
    const/16 v3, 0x2b

    if-ne v0, v3, :cond_0

    .line 300
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    move v3, v2

    .line 305
    goto :goto_1
.end method

.method public static stringToUnsigned(Ljava/lang/String;I)I
    .locals 7
    .param p0, "inString"    # Ljava/lang/String;
    .param p1, "inStart"    # I

    .prologue
    const/16 v6, 0x30

    .line 276
    const/4 v3, 0x0

    .line 277
    .local v3, "result":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 280
    .local v0, "count":I
    move v1, p1

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_1

    .line 288
    :cond_0
    return v3

    .line 281
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 283
    .local v2, "letter":C
    if-lt v2, v6, :cond_0

    const/16 v4, 0x39

    if-gt v2, v4, :cond_0

    .line 284
    mul-int/lit8 v4, v3, 0xa

    sub-int v5, v2, v6

    add-int v3, v4, v5

    .line 280
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
