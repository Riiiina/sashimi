.class public Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
.super Ljava/util/HashMap;
.source "IHRHashtable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final kBundleKeyClass:Ljava/lang/String; = "\t class \t"

.field protected static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # Ljava/lang/Object;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "inKey1"    # Ljava/lang/String;
    .param p2, "inValue1"    # Ljava/lang/Object;
    .param p3, "inKey2"    # Ljava/lang/String;
    .param p4, "inValue2"    # Ljava/lang/Object;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p3, p4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "inKeys"    # [Ljava/lang/String;
    .param p2, "inValues"    # [Ljava/lang/Object;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 24
    if-nez p1, :cond_0

    const/4 v2, 0x0

    move v0, v2

    .line 26
    .local v0, "count":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 29
    return-void

    .line 24
    .end local v0    # "count":I
    .end local v1    # "index":I
    :cond_0
    array-length v2, p1

    move v0, v2

    goto :goto_0

    .line 27
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    :cond_1
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {p0, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static assignToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p0, "ioBundle"    # Landroid/os/Bundle;
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 286
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 335
    .end local p2    # "inValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 288
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1
    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 289
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_2
    instance-of v6, p2, Ljava/lang/Byte;

    if-eqz v6, :cond_3

    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_0

    .line 290
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_3
    instance-of v6, p2, Ljava/lang/Short;

    if-eqz v6, :cond_4

    check-cast p2, Ljava/lang/Short;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_0

    .line 291
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_4
    instance-of v6, p2, Ljava/lang/Character;

    if-eqz v6, :cond_5

    check-cast p2, Ljava/lang/Character;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_0

    .line 292
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_5
    instance-of v6, p2, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 293
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_6
    instance-of v6, p2, Ljava/lang/Long;

    if-eqz v6, :cond_7

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, p1, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 294
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_7
    instance-of v6, p2, Ljava/lang/Float;

    if-eqz v6, :cond_8

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 295
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_8
    instance-of v6, p2, Ljava/lang/Double;

    if-eqz v6, :cond_9

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0, p1, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 296
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_9
    instance-of v6, p2, Ljava/lang/CharSequence;

    if-eqz v6, :cond_a

    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_a
    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_b

    check-cast p2, Ljava/lang/String;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_b
    instance-of v6, p2, [Z

    if-eqz v6, :cond_c

    check-cast p2, [Z

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto/16 :goto_0

    .line 300
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_c
    instance-of v6, p2, [B

    if-eqz v6, :cond_d

    check-cast p2, [B

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 301
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_d
    instance-of v6, p2, [S

    if-eqz v6, :cond_e

    check-cast p2, [S

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putShortArray(Ljava/lang/String;[S)V

    goto/16 :goto_0

    .line 302
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_e
    instance-of v6, p2, [C

    if-eqz v6, :cond_f

    check-cast p2, [C

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putCharArray(Ljava/lang/String;[C)V

    goto/16 :goto_0

    .line 303
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_f
    instance-of v6, p2, [I

    if-eqz v6, :cond_10

    check-cast p2, [I

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto/16 :goto_0

    .line 304
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_10
    instance-of v6, p2, [J

    if-eqz v6, :cond_11

    check-cast p2, [J

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto/16 :goto_0

    .line 305
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_11
    instance-of v6, p2, [F

    if-eqz v6, :cond_12

    check-cast p2, [F

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    goto/16 :goto_0

    .line 306
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_12
    instance-of v6, p2, [D

    if-eqz v6, :cond_13

    check-cast p2, [D

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto/16 :goto_0

    .line 307
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_13
    instance-of v6, p2, [Ljava/lang/String;

    if-eqz v6, :cond_14

    check-cast p2, [Ljava/lang/String;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 309
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_14
    instance-of v6, p2, Ljava/util/ArrayList;

    if-eqz v6, :cond_1e

    .line 310
    const/4 v5, 0x1

    .line 311
    .local v5, "isStrings":Z
    const/4 v3, 0x1

    .line 312
    .local v3, "isIntegers":Z
    const/4 v4, 0x1

    .line 313
    .local v4, "isParcelables":Z
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 315
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v1, :cond_16

    .line 322
    :cond_15
    if-eqz v5, :cond_1b

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 316
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_16
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_17

    const/4 v5, 0x0

    .line 317
    :cond_17
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-nez v6, :cond_18

    const/4 v3, 0x0

    .line 318
    :cond_18
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/os/Parcelable;

    if-nez v6, :cond_19

    const/4 v4, 0x0

    .line 319
    :cond_19
    if-nez v5, :cond_1a

    if-nez v3, :cond_1a

    if-eqz v4, :cond_15

    .line 315
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 323
    :cond_1b
    if-eqz v3, :cond_1c

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 324
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1c
    if-eqz v4, :cond_1d

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 325
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1d
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-static {p2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->makeBundle(Ljava/util/List;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 328
    .end local v1    # "count":I
    .end local v2    # "index":I
    .end local v3    # "isIntegers":Z
    .end local v4    # "isParcelables":Z
    .end local v5    # "isStrings":Z
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1e
    instance-of v6, p2, Ljava/util/Map;

    if-eqz v6, :cond_1f

    check-cast p2, Ljava/util/Map;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-static {p2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->makeBundle(Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 329
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1f
    instance-of v6, p2, Ljava/util/List;

    if-eqz v6, :cond_20

    check-cast p2, Ljava/util/List;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-static {p2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->makeBundle(Ljava/util/List;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 331
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_20
    instance-of v6, p2, Landroid/os/Bundle;

    if-eqz v6, :cond_21

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 332
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_21
    instance-of v6, p2, Landroid/os/Parcelable;

    if-eqz v6, :cond_22

    check-cast p2, Landroid/os/Parcelable;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 333
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_22
    instance-of v6, p2, [Landroid/os/Parcelable;

    if-eqz v6, :cond_23

    check-cast p2, [Landroid/os/Parcelable;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto/16 :goto_0

    .line 334
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_23
    instance-of v6, p2, Ljava/io/Serializable;

    if-eqz v6, :cond_0

    check-cast p2, Ljava/io/Serializable;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto/16 :goto_0
.end method

.method public static assignToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p0, "ioIntent"    # Landroid/content/Intent;
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 234
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 283
    .end local p2    # "inValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 236
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1
    instance-of v6, p2, Ljava/lang/Boolean;

    if-eqz v6, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 237
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_2
    instance-of v6, p2, Ljava/lang/Byte;

    if-eqz v6, :cond_3

    check-cast p2, Ljava/lang/Byte;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    goto :goto_0

    .line 238
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_3
    instance-of v6, p2, Ljava/lang/Short;

    if-eqz v6, :cond_4

    check-cast p2, Ljava/lang/Short;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;S)Landroid/content/Intent;

    goto :goto_0

    .line 239
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_4
    instance-of v6, p2, Ljava/lang/Character;

    if-eqz v6, :cond_5

    check-cast p2, Ljava/lang/Character;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    goto :goto_0

    .line 240
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_5
    instance-of v6, p2, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 241
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_6
    instance-of v6, p2, Ljava/lang/Long;

    if-eqz v6, :cond_7

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p0, p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 242
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_7
    instance-of v6, p2, Ljava/lang/Float;

    if-eqz v6, :cond_8

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_0

    .line 243
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_8
    instance-of v6, p2, Ljava/lang/Double;

    if-eqz v6, :cond_9

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p0, p1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto :goto_0

    .line 244
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_9
    instance-of v6, p2, Ljava/lang/CharSequence;

    if-eqz v6, :cond_a

    check-cast p2, Ljava/lang/CharSequence;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    goto :goto_0

    .line 245
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_a
    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_b

    check-cast p2, Ljava/lang/String;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 247
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_b
    instance-of v6, p2, [Z

    if-eqz v6, :cond_c

    check-cast p2, [Z

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Z)Landroid/content/Intent;

    goto/16 :goto_0

    .line 248
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_c
    instance-of v6, p2, [B

    if-eqz v6, :cond_d

    check-cast p2, [B

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    goto/16 :goto_0

    .line 249
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_d
    instance-of v6, p2, [S

    if-eqz v6, :cond_e

    check-cast p2, [S

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[S)Landroid/content/Intent;

    goto/16 :goto_0

    .line 250
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_e
    instance-of v6, p2, [C

    if-eqz v6, :cond_f

    check-cast p2, [C

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[C)Landroid/content/Intent;

    goto/16 :goto_0

    .line 251
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_f
    instance-of v6, p2, [I

    if-eqz v6, :cond_10

    check-cast p2, [I

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 252
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_10
    instance-of v6, p2, [J

    if-eqz v6, :cond_11

    check-cast p2, [J

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto/16 :goto_0

    .line 253
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_11
    instance-of v6, p2, [F

    if-eqz v6, :cond_12

    check-cast p2, [F

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    goto/16 :goto_0

    .line 254
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_12
    instance-of v6, p2, [D

    if-eqz v6, :cond_13

    check-cast p2, [D

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    goto/16 :goto_0

    .line 255
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_13
    instance-of v6, p2, [Ljava/lang/String;

    if-eqz v6, :cond_14

    check-cast p2, [Ljava/lang/String;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 257
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_14
    instance-of v6, p2, Ljava/util/ArrayList;

    if-eqz v6, :cond_1e

    .line 258
    const/4 v5, 0x1

    .line 259
    .local v5, "isStrings":Z
    const/4 v3, 0x1

    .line 260
    .local v3, "isIntegers":Z
    const/4 v4, 0x1

    .line 261
    .local v4, "isParcelables":Z
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 263
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v1, :cond_16

    .line 270
    :cond_15
    if-eqz v5, :cond_1b

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 264
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_16
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-nez v6, :cond_17

    const/4 v5, 0x0

    .line 265
    :cond_17
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-nez v6, :cond_18

    const/4 v3, 0x0

    .line 266
    :cond_18
    move-object v0, p2

    check-cast v0, Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/os/Parcelable;

    if-nez v6, :cond_19

    const/4 v4, 0x0

    .line 267
    :cond_19
    if-nez v5, :cond_1a

    if-nez v3, :cond_1a

    if-eqz v4, :cond_15

    .line 263
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 271
    :cond_1b
    if-eqz v3, :cond_1c

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 272
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1c
    if-eqz v4, :cond_1d

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 273
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1d
    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-static {p2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->makeBundle(Ljava/util/List;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 276
    .end local v1    # "count":I
    .end local v2    # "index":I
    .end local v3    # "isIntegers":Z
    .end local v4    # "isParcelables":Z
    .end local v5    # "isStrings":Z
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1e
    instance-of v6, p2, Ljava/util/Map;

    if-eqz v6, :cond_1f

    check-cast p2, Ljava/util/Map;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-static {p2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->makeBundle(Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 277
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_1f
    instance-of v6, p2, Ljava/util/List;

    if-eqz v6, :cond_20

    check-cast p2, Ljava/util/List;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-static {p2, v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->makeBundle(Ljava/util/List;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 279
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_20
    instance-of v6, p2, Landroid/os/Bundle;

    if-eqz v6, :cond_21

    check-cast p2, Landroid/os/Bundle;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 280
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_21
    instance-of v6, p2, Landroid/os/Parcelable;

    if-eqz v6, :cond_22

    check-cast p2, Landroid/os/Parcelable;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 281
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_22
    instance-of v6, p2, [Landroid/os/Parcelable;

    if-eqz v6, :cond_23

    check-cast p2, [Landroid/os/Parcelable;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 282
    .restart local p2    # "inValue":Ljava/lang/Object;
    :cond_23
    instance-of v6, p2, Ljava/io/Serializable;

    if-eqz v6, :cond_0

    check-cast p2, Ljava/io/Serializable;

    .end local p2    # "inValue":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method public static makeBundle(Ljava/util/List;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p0, "inList"    # Ljava/util/List;
    .param p1, "ioBundle"    # Landroid/os/Bundle;

    .prologue
    .line 338
    if-nez p1, :cond_0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    .line 339
    .local v2, "result":Landroid/os/Bundle;
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 341
    .local v0, "count":I
    const-string v3, "\t class \t"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_1
    if-lt v1, v0, :cond_1

    .line 347
    return-object v2

    .end local v0    # "count":I
    .end local v1    # "index":I
    .end local v2    # "result":Landroid/os/Bundle;
    :cond_0
    move-object v2, p1

    .line 338
    goto :goto_0

    .line 344
    .restart local v0    # "count":I
    .restart local v1    # "index":I
    .restart local v2    # "result":Landroid/os/Bundle;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->assignToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static makeBundle(Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p0, "inMap"    # Ljava/util/Map;
    .param p1, "ioBundle"    # Landroid/os/Bundle;

    .prologue
    .line 351
    if-nez p1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object v1, v2

    .line 353
    .local v1, "result":Landroid/os/Bundle;
    :goto_0
    const-string v2, "\t class \t"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 359
    return-object v1

    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    move-object v1, p1

    .line 351
    goto :goto_0

    .line 355
    .restart local v1    # "result":Landroid/os/Bundle;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, "key":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->assignToBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static scanBundle(Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 9
    .param p0, "inBundle"    # Landroid/os/Bundle;

    .prologue
    .line 363
    const/4 v5, 0x0

    .line 364
    .local v5, "result":Ljava/lang/Object;
    if-nez p0, :cond_0

    const/4 v7, 0x0

    move-object v6, v7

    .line 366
    .local v6, "value":Ljava/lang/Object;
    :goto_0
    instance-of v7, v6, Ljava/lang/String;

    if-nez v7, :cond_1

    .line 367
    move-object v5, p0

    .local v5, "result":Landroid/os/Bundle;
    move-object v7, v5

    .line 399
    .end local v5    # "result":Landroid/os/Bundle;
    :goto_1
    return-object v7

    .line 364
    .end local v6    # "value":Ljava/lang/Object;
    .local v5, "result":Ljava/lang/Object;
    :cond_0
    const-string v7, "\t class \t"

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    move-object v6, v7

    goto :goto_0

    .line 370
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_0
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 373
    .end local v5    # "result":Ljava/lang/Object;
    :goto_2
    instance-of v7, v5, Ljava/util/List;

    if-eqz v7, :cond_3

    .line 374
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v1, v0

    .line 375
    .local v1, "array":Ljava/util/List;
    const/4 v2, 0x0

    .line 378
    .local v2, "index":I
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 380
    if-nez v6, :cond_5

    .line 386
    .end local v1    # "array":Ljava/util/List;
    .end local v2    # "index":I
    :cond_3
    :goto_3
    instance-of v7, v5, Ljava/util/Map;

    if-eqz v7, :cond_4

    .line 387
    move-object v0, v5

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 389
    .local v4, "map":Ljava/util/Map;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_7

    .end local v4    # "map":Ljava/util/Map;
    :cond_4
    move-object v7, v5

    goto :goto_1

    .line 381
    .restart local v1    # "array":Ljava/util/List;
    .restart local v2    # "index":I
    :cond_5
    instance-of v7, v6, Landroid/os/Bundle;

    if-eqz v7, :cond_6

    move-object v0, v6

    check-cast v0, Landroid/os/Bundle;

    move-object v7, v0

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->scanBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :goto_5
    add-int/lit8 v2, v2, 0x1

    if-gtz v2, :cond_2

    goto :goto_3

    .line 382
    :cond_6
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 389
    .end local v1    # "array":Ljava/util/List;
    .end local v2    # "index":I
    .restart local v4    # "map":Ljava/util/Map;
    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 390
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 392
    if-nez v6, :cond_8

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 393
    :cond_8
    instance-of v7, v6, Landroid/os/Bundle;

    if-eqz v7, :cond_9

    move-object v0, v6

    check-cast v0, Landroid/os/Bundle;

    move-object v7, v0

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->scanBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 394
    :cond_9
    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 371
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "map":Ljava/util/Map;
    .restart local v5    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v7

    goto :goto_2
.end method


# virtual methods
.method public assign(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    .line 403
    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 413
    :cond_0
    return-void

    .line 404
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 407
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 408
    :cond_2
    instance-of v3, v1, Landroid/os/Bundle;

    if-eqz v3, :cond_3

    check-cast v1, Landroid/os/Bundle;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->scanBundle(Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 410
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public booleanValue(Ljava/lang/String;Z)Z
    .locals 9
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 39
    move v1, p2

    .line 40
    .local v1, "result":Z
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 42
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    move v1, p2

    .line 49
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return v1

    .line 43
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 44
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v8

    :goto_1
    goto :goto_0

    :cond_2
    move v1, v7

    goto :goto_1

    .line 45
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    move v1, v8

    :goto_2
    goto :goto_0

    :cond_4
    move v1, v7

    goto :goto_2

    .line 46
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v8

    :goto_3
    goto :goto_0

    :cond_6
    move v1, v7

    goto :goto_3

    .line 47
    :cond_7
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v1, v7

    :goto_4
    goto :goto_0

    :cond_8
    move v1, v8

    goto :goto_4
.end method

.method public bundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "in"    # Landroid/os/Bundle;

    .prologue
    .line 416
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->makeBundle(Ljava/util/Map;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public doubleValue(Ljava/lang/String;D)D
    .locals 4
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # D

    .prologue
    .line 80
    move-wide v0, p2

    .line 81
    .local v0, "result":D
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 83
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1

    move-wide v0, p2

    .line 91
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-wide v0

    .line 84
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    int-to-double v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 85
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    :try_start_0
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 86
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 87
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_6

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 88
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/lang/Float;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 89
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Double;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public flatten(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inDelimiter"    # Ljava/lang/String;

    .prologue
    .line 110
    const-string v1, ""

    .line 112
    .local v1, "result":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string p1, "\t"

    .line 114
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    return-object v1

    .line 114
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    .local v0, "key":Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "value":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public flatten([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inKeys"    # [Ljava/lang/String;
    .param p2, "inDelimiter"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v2, ""

    .line 152
    .local v2, "result":Ljava/lang/String;
    array-length v0, p1

    .line 154
    .local v0, "count":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string p2, "\t"

    .line 156
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-lt v1, v0, :cond_2

    .line 162
    return-object v2

    .line 157
    :cond_2
    aget-object v4, p1, v1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 159
    .local v3, "string":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v3, :cond_3

    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v5, v3

    .line 159
    goto :goto_1
.end method

.method public flattenDDS([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inKeys"    # [Ljava/lang/String;
    .param p2, "inDelimiter"    # Ljava/lang/String;

    .prologue
    .line 188
    const-string v1, ""

    .line 190
    .local v1, "result":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string p2, "\t"

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 203
    return-object v1

    .line 193
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 198
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 200
    .local v2, "value":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->flatten([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public integerValue(Ljava/lang/String;I)I
    .locals 4
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # I

    .prologue
    .line 53
    move v0, p2

    .line 54
    .local v0, "result":I
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "value":Ljava/lang/Object;
    if-nez v1, :cond_1

    move v0, p2

    .line 64
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 57
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_3

    check-cast v1, Ljava/lang/Boolean;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1

    .line 58
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    :try_start_0
    check-cast v1, Ljava/lang/String;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 59
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_5

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 60
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Long;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v0, v2

    goto :goto_0

    .line 61
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Float;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Float;->intValue()I

    move-result v0

    goto :goto_0

    .line 62
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Double;

    .end local v1    # "value":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Double;->intValue()I

    move-result v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public intent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "in"    # Landroid/content/Intent;

    .prologue
    .line 420
    if-nez p1, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v1, v2

    .line 422
    .local v1, "result":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 426
    return-object v1

    .end local v1    # "result":Landroid/content/Intent;
    :cond_0
    move-object v1, p1

    .line 420
    goto :goto_0

    .line 422
    .restart local v1    # "result":Landroid/content/Intent;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->assignToIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public longValue(Ljava/lang/String;J)J
    .locals 4
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # J

    .prologue
    .line 95
    move-wide v0, p2

    .line 96
    .local v0, "result":J
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_1

    move-wide v0, p2

    .line 106
    .end local v2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-wide v0

    .line 99
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    int-to-long v0, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 100
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    :try_start_0
    check-cast v2, Ljava/lang/String;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    goto :goto_0

    .line 101
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_5

    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v0, v3

    goto :goto_0

    .line 102
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_6

    check-cast v2, Ljava/lang/Long;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 103
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v3, v2, Ljava/lang/Float;

    if-eqz v3, :cond_7

    check-cast v2, Ljava/lang/Float;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Float;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 104
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_0

    check-cast v2, Ljava/lang/Double;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Double;->longValue()J

    move-result-wide v0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public putFrom(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 2
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inSource"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 32
    if-nez p2, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 34
    .local v0, "value":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :goto_1
    return-void

    .line 32
    .end local v0    # "value":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 35
    .restart local v0    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public restore(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "inDelimiter"    # Ljava/lang/String;
    .param p2, "inFlattened"    # Ljava/lang/String;
    .param p3, "inStart"    # I

    .prologue
    .line 125
    const/4 v0, -0x1

    .local v0, "found":I
    move v2, p3

    .line 128
    .local v2, "start":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string p1, "\t"

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 132
    if-ge v0, v2, :cond_3

    .line 146
    :cond_2
    return v0

    .line 134
    :cond_3
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v0, v4

    .line 137
    invoke-virtual {p2, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 139
    if-ge v0, v2, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 140
    .local v3, "value":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    if-lt v0, v2, :cond_2

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v0, v4

    .line 130
    goto :goto_0

    .line 139
    .end local v3    # "value":Ljava/lang/String;
    :cond_4
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    goto :goto_1
.end method

.method public restore([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 6
    .param p1, "inKeys"    # [Ljava/lang/String;
    .param p2, "inDelimiter"    # Ljava/lang/String;
    .param p3, "inFlattened"    # Ljava/lang/String;
    .param p4, "inStart"    # I

    .prologue
    .line 167
    array-length v0, p1

    .line 168
    .local v0, "count":I
    const/4 v1, -0x1

    .local v1, "found":I
    move v3, p4

    .line 170
    .local v3, "start":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string p2, "\t"

    .line 172
    :cond_1
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-lt v2, v0, :cond_3

    .line 183
    :cond_2
    return v1

    .line 173
    :cond_3
    invoke-virtual {p3, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 175
    if-gez v1, :cond_4

    aget-object v4, p1, v2

    invoke-virtual {p3, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_4
    if-lt v1, v3, :cond_2

    .line 178
    aget-object v4, p1, v2

    invoke-virtual {p3, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v3, v1, v4

    .line 172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public restoreDDS([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 5
    .param p1, "inKeys"    # [Ljava/lang/String;
    .param p2, "inDelimiter"    # Ljava/lang/String;
    .param p3, "inFlattened"    # Ljava/lang/String;
    .param p4, "inStart"    # I

    .prologue
    .line 208
    const/4 v0, -0x1

    .local v0, "found":I
    move v2, p4

    .line 212
    .local v2, "start":I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const-string p2, "\t"

    .line 215
    :cond_1
    :goto_0
    invoke-virtual {p3, p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 216
    if-gez v0, :cond_3

    .line 227
    :cond_2
    return v0

    .line 218
    :cond_3
    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, "key":Ljava/lang/String;
    new-instance v3, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    .line 220
    .local v3, "value":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->restore([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 221
    invoke-virtual {p0, v1, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    if-ltz v0, :cond_2

    .line 224
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int v2, v0, v4

    .line 214
    goto :goto_0
.end method

.method public stringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inMissing"    # Ljava/lang/String;

    .prologue
    .line 68
    move-object v1, p2

    .line 69
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    .local v2, "value":Ljava/lang/Object;
    if-nez v2, :cond_0

    move-object v1, p2

    .line 76
    .end local v2    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 72
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast v2, Ljava/lang/Boolean;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "1"

    move-object v1, v3

    :goto_1
    goto :goto_0

    :cond_1
    const-string v3, "0"

    move-object v1, v3

    goto :goto_1

    .line 73
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_3

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    .line 74
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
