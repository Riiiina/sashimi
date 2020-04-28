.class public Landroix/com/android/NightVisionCam/NVCPreviewGetter;
.super Ljava/lang/Object;
.source "NVCPreviewGetter.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addLastFrameAndCalcYUV420([I[BII)V
    .locals 19
    .param p1, "rgb"    # [I
    .param p2, "yuv420sp"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 215
    mul-int v4, p3, p4

    .line 217
    .local v4, "frameSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    const/4 v15, 0x0

    .local v15, "yp":I
    :goto_0
    move v0, v7

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    .line 254
    return-void

    .line 218
    :cond_0
    shr-int/lit8 v16, v7, 0x1

    mul-int v16, v16, p3

    add-int v10, v4, v16

    .local v10, "uvp":I
    const/4 v9, 0x0

    .local v9, "u":I
    const/4 v12, 0x0

    .line 219
    .local v12, "v":I
    const/4 v6, 0x0

    .local v6, "i":I
    move v11, v10

    .end local v10    # "uvp":I
    .local v11, "uvp":I
    :goto_1
    move v0, v6

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    .line 217
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 220
    :cond_1
    aget-byte v16, p2, v15

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/16 v17, 0x10

    sub-int v13, v16, v17

    .line 221
    .local v13, "y":I
    if-gez v13, :cond_2

    const/4 v13, 0x0

    .line 222
    :cond_2
    and-int/lit8 v16, v6, 0x1

    if-nez v16, :cond_9

    .line 223
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "uvp":I
    .restart local v10    # "uvp":I
    aget-byte v16, p2, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/16 v17, 0x80

    sub-int v12, v16, v17

    .line 224
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "uvp":I
    .restart local v11    # "uvp":I
    aget-byte v16, p2, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/16 v17, 0x80

    sub-int v9, v16, v17

    move v10, v11

    .line 227
    .end local v11    # "uvp":I
    .restart local v10    # "uvp":I
    :goto_2
    mul-int/lit16 v14, v13, 0x4a8

    .line 228
    .local v14, "y1192":I
    move v0, v12

    mul-int/lit16 v0, v0, 0x662

    move/from16 v16, v0

    add-int v8, v14, v16

    .line 229
    .local v8, "r":I
    move v0, v12

    mul-int/lit16 v0, v0, 0x341

    move/from16 v16, v0

    sub-int v16, v14, v16

    move v0, v9

    mul-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 230
    .local v5, "g":I
    move v0, v9

    mul-int/lit16 v0, v0, 0x812

    move/from16 v16, v0

    add-int v2, v14, v16

    .line 234
    .local v2, "b":I
    sget-object v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mRedIntBuffer:[I

    aget v16, v16, v15

    add-int v8, v8, v16

    .line 235
    sget-object v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mGreenIntBuffer:[I

    aget v16, v16, v15

    add-int v5, v5, v16

    .line 236
    sget-object v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mBlueIntBuffer:[I

    aget v16, v16, v15

    add-int v2, v2, v16

    .line 238
    sget v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x9f6

    move v3, v0

    .line 241
    .local v3, "brighten":I
    sget v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    mul-int v16, v16, v8

    add-int v8, v16, v3

    .line 242
    sget v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    mul-int v16, v16, v5

    add-int v5, v16, v3

    .line 243
    sget v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    mul-int v16, v16, v2

    add-int v2, v16, v3

    .line 246
    if-gez v8, :cond_6

    const/4 v8, 0x0

    .line 247
    :cond_3
    :goto_3
    if-gez v5, :cond_7

    const/4 v5, 0x0

    .line 248
    :cond_4
    :goto_4
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 250
    :cond_5
    :goto_5
    const/high16 v16, -0x1000000

    shl-int/lit8 v17, v8, 0x6

    const/high16 v18, 0xff0000

    and-int v17, v17, v18

    or-int v16, v16, v17

    shr-int/lit8 v17, v5, 0x2

    const v18, 0xff00

    and-int v17, v17, v18

    or-int v16, v16, v17

    shr-int/lit8 v17, v2, 0xa

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    aput v16, p1, v15

    .line 219
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    move v11, v10

    .end local v10    # "uvp":I
    .restart local v11    # "uvp":I
    goto/16 :goto_1

    .line 246
    .end local v11    # "uvp":I
    .restart local v10    # "uvp":I
    :cond_6
    const v16, 0x3ffff

    move v0, v8

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    const v8, 0x3ffff

    goto :goto_3

    .line 247
    :cond_7
    const v16, 0x3ffff

    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    const v5, 0x3ffff

    goto :goto_4

    .line 248
    :cond_8
    const v16, 0x3ffff

    move v0, v2

    move/from16 v1, v16

    if-le v0, v1, :cond_5

    const v2, 0x3ffff

    goto :goto_5

    .end local v2    # "b":I
    .end local v3    # "brighten":I
    .end local v5    # "g":I
    .end local v8    # "r":I
    .end local v10    # "uvp":I
    .end local v14    # "y1192":I
    .restart local v11    # "uvp":I
    :cond_9
    move v10, v11

    .end local v11    # "uvp":I
    .restart local v10    # "uvp":I
    goto/16 :goto_2
.end method

.method private addSingleFrameYUV420([BII)V
    .locals 17
    .param p1, "yuv420sp"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 188
    mul-int v3, p2, p3

    .line 190
    .local v3, "frameSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    const/4 v14, 0x0

    .local v14, "yp":I
    :goto_0
    move v0, v6

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 212
    return-void

    .line 191
    :cond_0
    shr-int/lit8 v15, v6, 0x1

    mul-int v15, v15, p2

    add-int v9, v3, v15

    .local v9, "uvp":I
    const/4 v8, 0x0

    .local v8, "u":I
    const/4 v11, 0x0

    .line 192
    .local v11, "v":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v10, v9

    .end local v9    # "uvp":I
    .local v10, "uvp":I
    :goto_1
    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 193
    :cond_1
    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x10

    sub-int v12, v15, v16

    .line 194
    .local v12, "y":I
    if-gez v12, :cond_2

    const/4 v12, 0x0

    .line 195
    :cond_2
    and-int/lit8 v15, v5, 0x1

    if-nez v15, :cond_3

    .line 196
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    aget-byte v15, p1, v10

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x80

    sub-int v11, v15, v16

    .line 197
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "uvp":I
    .restart local v10    # "uvp":I
    aget-byte v15, p1, v9

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x80

    sub-int v8, v15, v16

    move v9, v10

    .line 200
    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    :goto_2
    mul-int/lit16 v13, v12, 0x4a8

    .line 201
    .local v13, "y1192":I
    mul-int/lit16 v15, v11, 0x662

    add-int v7, v13, v15

    .line 202
    .local v7, "r":I
    mul-int/lit16 v15, v11, 0x341

    sub-int v15, v13, v15

    move v0, v8

    mul-int/lit16 v0, v0, 0x190

    move/from16 v16, v0

    sub-int v4, v15, v16

    .line 203
    .local v4, "g":I
    mul-int/lit16 v15, v8, 0x812

    add-int v2, v13, v15

    .line 205
    .local v2, "b":I
    sget-object v15, Landroix/com/android/NightVisionCam/NightVisionCam;->mRedIntBuffer:[I

    sget-object v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mRedIntBuffer:[I

    aget v16, v16, v14

    add-int v16, v16, v7

    aput v16, v15, v14

    .line 206
    sget-object v15, Landroix/com/android/NightVisionCam/NightVisionCam;->mGreenIntBuffer:[I

    sget-object v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mGreenIntBuffer:[I

    aget v16, v16, v14

    add-int v16, v16, v4

    aput v16, v15, v14

    .line 207
    sget-object v15, Landroix/com/android/NightVisionCam/NightVisionCam;->mBlueIntBuffer:[I

    sget-object v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mBlueIntBuffer:[I

    aget v16, v16, v14

    add-int v16, v16, v2

    aput v16, v15, v14

    .line 192
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v14, 0x1

    move v10, v9

    .end local v9    # "uvp":I
    .restart local v10    # "uvp":I
    goto :goto_1

    .end local v2    # "b":I
    .end local v4    # "g":I
    .end local v7    # "r":I
    .end local v13    # "y1192":I
    :cond_3
    move v9, v10

    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    goto :goto_2
.end method

.method private convertAndCalcYUV420([I[BII)V
    .locals 19
    .param p1, "rgb"    # [I
    .param p2, "yuv420sp"    # [B
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 260
    mul-int v4, p3, p4

    .line 262
    .local v4, "frameSize":I
    const/4 v7, 0x0

    .local v7, "j":I
    const/4 v15, 0x0

    .local v15, "yp":I
    :goto_0
    move v0, v7

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    .line 294
    return-void

    .line 263
    :cond_0
    shr-int/lit8 v16, v7, 0x1

    mul-int v16, v16, p3

    add-int v10, v4, v16

    .local v10, "uvp":I
    const/4 v9, 0x0

    .local v9, "u":I
    const/4 v12, 0x0

    .line 264
    .local v12, "v":I
    const/4 v6, 0x0

    .local v6, "i":I
    move v11, v10

    .end local v10    # "uvp":I
    .local v11, "uvp":I
    :goto_1
    move v0, v6

    move/from16 v1, p3

    if-lt v0, v1, :cond_1

    .line 262
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 265
    :cond_1
    aget-byte v16, p2, v15

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/16 v17, 0x10

    sub-int v13, v16, v17

    .line 266
    .local v13, "y":I
    if-gez v13, :cond_2

    const/4 v13, 0x0

    .line 267
    :cond_2
    and-int/lit8 v16, v6, 0x1

    if-nez v16, :cond_9

    .line 268
    add-int/lit8 v10, v11, 0x1

    .end local v11    # "uvp":I
    .restart local v10    # "uvp":I
    aget-byte v16, p2, v11

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/16 v17, 0x80

    sub-int v12, v16, v17

    .line 269
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "uvp":I
    .restart local v11    # "uvp":I
    aget-byte v16, p2, v10

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    const/16 v17, 0x80

    sub-int v9, v16, v17

    move v10, v11

    .line 272
    .end local v11    # "uvp":I
    .restart local v10    # "uvp":I
    :goto_2
    mul-int/lit16 v14, v13, 0x4a8

    .line 273
    .local v14, "y1192":I
    move v0, v12

    mul-int/lit16 v0, v0, 0x662

    move/from16 v16, v0

    add-int v8, v14, v16

    .line 274
    .local v8, "r":I
    move v0, v12

    mul-int/lit16 v0, v0, 0x341

    move/from16 v16, v0

    sub-int v16, v14, v16

    move v0, v9

    mul-int/lit16 v0, v0, 0x190

    move/from16 v17, v0

    sub-int v5, v16, v17

    .line 275
    .local v5, "g":I
    move v0, v9

    mul-int/lit16 v0, v0, 0x812

    move/from16 v16, v0

    add-int v2, v14, v16

    .line 279
    .local v2, "b":I
    sget v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0x9f6

    move v3, v0

    .line 282
    .local v3, "brighten":I
    sget v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    mul-int v16, v16, v8

    add-int v8, v16, v3

    .line 283
    sget v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    mul-int v16, v16, v5

    add-int v5, v16, v3

    .line 284
    sget v16, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    mul-int v16, v16, v2

    add-int v2, v16, v3

    .line 287
    if-gez v8, :cond_6

    const/4 v8, 0x0

    .line 288
    :cond_3
    :goto_3
    if-gez v5, :cond_7

    const/4 v5, 0x0

    .line 289
    :cond_4
    :goto_4
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 291
    :cond_5
    :goto_5
    const/high16 v16, -0x1000000

    shl-int/lit8 v17, v8, 0x6

    const/high16 v18, 0xff0000

    and-int v17, v17, v18

    or-int v16, v16, v17

    shr-int/lit8 v17, v5, 0x2

    const v18, 0xff00

    and-int v17, v17, v18

    or-int v16, v16, v17

    shr-int/lit8 v17, v2, 0xa

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    or-int v16, v16, v17

    aput v16, p1, v15

    .line 264
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v15, v15, 0x1

    move v11, v10

    .end local v10    # "uvp":I
    .restart local v11    # "uvp":I
    goto/16 :goto_1

    .line 287
    .end local v11    # "uvp":I
    .restart local v10    # "uvp":I
    :cond_6
    const v16, 0x3ffff

    move v0, v8

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    const v8, 0x3ffff

    goto :goto_3

    .line 288
    :cond_7
    const v16, 0x3ffff

    move v0, v5

    move/from16 v1, v16

    if-le v0, v1, :cond_4

    const v5, 0x3ffff

    goto :goto_4

    .line 289
    :cond_8
    const v16, 0x3ffff

    move v0, v2

    move/from16 v1, v16

    if-le v0, v1, :cond_5

    const v2, 0x3ffff

    goto :goto_5

    .end local v2    # "b":I
    .end local v3    # "brighten":I
    .end local v5    # "g":I
    .end local v8    # "r":I
    .end local v10    # "uvp":I
    .end local v14    # "y1192":I
    .restart local v11    # "uvp":I
    :cond_9
    move v10, v11

    .end local v11    # "uvp":I
    .restart local v10    # "uvp":I
    goto/16 :goto_2
.end method

.method private setSingleFrameYUV420([BII)V
    .locals 17
    .param p1, "yuv420sp"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 160
    mul-int v3, p2, p3

    .line 162
    .local v3, "frameSize":I
    const/4 v6, 0x0

    .local v6, "j":I
    const/4 v14, 0x0

    .local v14, "yp":I
    :goto_0
    move v0, v6

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 186
    return-void

    .line 163
    :cond_0
    shr-int/lit8 v15, v6, 0x1

    mul-int v15, v15, p2

    add-int v9, v3, v15

    .local v9, "uvp":I
    const/4 v8, 0x0

    .local v8, "u":I
    const/4 v11, 0x0

    .line 164
    .local v11, "v":I
    const/4 v5, 0x0

    .local v5, "i":I
    move v10, v9

    .end local v9    # "uvp":I
    .local v10, "uvp":I
    :goto_1
    move v0, v5

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 162
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 165
    :cond_1
    aget-byte v15, p1, v14

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x10

    sub-int v12, v15, v16

    .line 166
    .local v12, "y":I
    if-gez v12, :cond_2

    const/4 v12, 0x0

    .line 167
    :cond_2
    and-int/lit8 v15, v5, 0x1

    if-nez v15, :cond_3

    .line 168
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    aget-byte v15, p1, v10

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x80

    sub-int v11, v15, v16

    .line 169
    add-int/lit8 v10, v9, 0x1

    .end local v9    # "uvp":I
    .restart local v10    # "uvp":I
    aget-byte v15, p1, v9

    and-int/lit16 v15, v15, 0xff

    const/16 v16, 0x80

    sub-int v8, v15, v16

    move v9, v10

    .line 172
    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    :goto_2
    mul-int/lit16 v13, v12, 0x4a8

    .line 173
    .local v13, "y1192":I
    mul-int/lit16 v15, v11, 0x662

    add-int v7, v13, v15

    .line 174
    .local v7, "r":I
    mul-int/lit16 v15, v11, 0x341

    sub-int v15, v13, v15

    move v0, v8

    mul-int/lit16 v0, v0, 0x190

    move/from16 v16, v0

    sub-int v4, v15, v16

    .line 175
    .local v4, "g":I
    mul-int/lit16 v15, v8, 0x812

    add-int v2, v13, v15

    .line 178
    .local v2, "b":I
    sget-object v15, Landroix/com/android/NightVisionCam/NightVisionCam;->mRedIntBuffer:[I

    aput v7, v15, v14

    .line 179
    sget-object v15, Landroix/com/android/NightVisionCam/NightVisionCam;->mGreenIntBuffer:[I

    aput v4, v15, v14

    .line 180
    sget-object v15, Landroix/com/android/NightVisionCam/NightVisionCam;->mBlueIntBuffer:[I

    aput v2, v15, v14

    .line 164
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v14, 0x1

    move v10, v9

    .end local v9    # "uvp":I
    .restart local v10    # "uvp":I
    goto :goto_1

    .end local v2    # "b":I
    .end local v4    # "g":I
    .end local v7    # "r":I
    .end local v13    # "y1192":I
    :cond_3
    move v9, v10

    .end local v10    # "uvp":I
    .restart local v9    # "uvp":I
    goto :goto_2
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 8
    .param p1, "arg0"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/16 v7, 0xff

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 17
    sget-boolean v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIsPainting:Z

    if-eqz v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mChoosenColorIndex:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_5

    .line 25
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    if-gt v3, v5, :cond_2

    .line 27
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    sget v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I

    invoke-direct {p0, v3, p1, v4, v5}, Landroix/com/android/NightVisionCam/NVCPreviewGetter;->convertAndCalcYUV420([I[BII)V

    .line 30
    sput v6, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    .line 32
    invoke-static {}, Landroix/com/android/NightVisionCam/NightVisionCam;->doPainting()V

    goto :goto_0

    .line 34
    :cond_2
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    if-le v3, v5, :cond_0

    .line 36
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    if-nez v3, :cond_3

    .line 38
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I

    invoke-direct {p0, p1, v3, v4}, Landroix/com/android/NightVisionCam/NVCPreviewGetter;->setSingleFrameYUV420([BII)V

    .line 39
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    goto :goto_0

    .line 41
    :cond_3
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    if-ge v3, v4, :cond_4

    .line 43
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I

    invoke-direct {p0, p1, v3, v4}, Landroix/com/android/NightVisionCam/NVCPreviewGetter;->addSingleFrameYUV420([BII)V

    .line 44
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    goto :goto_0

    .line 48
    :cond_4
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mWidth:I

    sget v5, Landroix/com/android/NightVisionCam/NightVisionCam;->mHeight:I

    invoke-direct {p0, v3, p1, v4, v5}, Landroix/com/android/NightVisionCam/NVCPreviewGetter;->addLastFrameAndCalcYUV420([I[BII)V

    .line 50
    sput v6, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    .line 52
    invoke-static {}, Landroix/com/android/NightVisionCam/NightVisionCam;->doPainting()V

    goto :goto_0

    .line 59
    :cond_5
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    if-gt v3, v5, :cond_9

    .line 61
    const/4 v2, 0x0

    .local v2, "n":I
    :goto_1
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    if-lt v2, v3, :cond_6

    .line 83
    sput v6, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    .line 85
    invoke-static {}, Landroix/com/android/NightVisionCam/NightVisionCam;->doPainting()V

    goto :goto_0

    .line 64
    :cond_6
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mHorizontalQuality:I

    mul-int/2addr v3, v2

    aget-byte v3, p1, v3

    and-int/lit16 v0, v3, 0xff

    .line 67
    .local v0, "col":I
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    mul-int/2addr v0, v3

    .line 68
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    add-int/2addr v0, v3

    .line 70
    if-gez v0, :cond_8

    .line 72
    const/4 v0, 0x0

    .line 79
    :cond_7
    :goto_2
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    invoke-static {v0}, Landroix/com/android/NightVisionCam/NightVisionCam;->calcColor(I)I

    move-result v4

    aput v4, v3, v2

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 74
    :cond_8
    if-le v0, v7, :cond_7

    .line 76
    const/16 v0, 0xff

    goto :goto_2

    .line 90
    .end local v0    # "col":I
    .end local v2    # "n":I
    :cond_9
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    if-le v3, v5, :cond_0

    .line 92
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    if-nez v3, :cond_b

    .line 94
    const/4 v2, 0x0

    .restart local v2    # "n":I
    :goto_3
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    if-lt v2, v3, :cond_a

    .line 102
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    goto/16 :goto_0

    .line 96
    :cond_a
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mHorizontalQuality:I

    mul-int/2addr v3, v2

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 98
    .local v1, "colin":I
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    aput v1, v3, v2

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 104
    .end local v1    # "colin":I
    .end local v2    # "n":I
    :cond_b
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    sget v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mShutterTime:I

    if-ge v3, v4, :cond_d

    .line 106
    const/4 v2, 0x0

    .restart local v2    # "n":I
    :goto_4
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    if-lt v2, v3, :cond_c

    .line 114
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    goto/16 :goto_0

    .line 108
    :cond_c
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mHorizontalQuality:I

    mul-int/2addr v3, v2

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 110
    .restart local v1    # "colin":I
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    sget-object v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    aget v4, v4, v2

    add-int/2addr v4, v1

    aput v4, v3, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 118
    .end local v1    # "colin":I
    .end local v2    # "n":I
    :cond_d
    const/4 v2, 0x0

    .restart local v2    # "n":I
    :goto_5
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBitsize:I

    if-lt v2, v3, :cond_e

    .line 148
    sput v6, Landroix/com/android/NightVisionCam/NightVisionCam;->mBufferCounter:I

    .line 150
    invoke-static {}, Landroix/com/android/NightVisionCam/NightVisionCam;->doPainting()V

    goto/16 :goto_0

    .line 122
    :cond_e
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mHorizontalQuality:I

    mul-int/2addr v3, v2

    aget-byte v3, p1, v3

    and-int/lit16 v1, v3, 0xff

    .line 123
    .restart local v1    # "colin":I
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    sget-object v4, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    aget v4, v4, v2

    add-int/2addr v4, v1

    aput v4, v3, v2

    .line 125
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    aget v0, v3, v2

    .line 129
    .restart local v0    # "col":I
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mGain:I

    mul-int/2addr v0, v3

    .line 130
    sget v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mBrightness:I

    add-int/2addr v0, v3

    .line 134
    if-gez v0, :cond_10

    .line 136
    const/4 v0, 0x0

    .line 143
    :cond_f
    :goto_6
    sget-object v3, Landroix/com/android/NightVisionCam/NightVisionCam;->mIntBuffer:[I

    invoke-static {v0}, Landroix/com/android/NightVisionCam/NightVisionCam;->calcColor(I)I

    move-result v4

    aput v4, v3, v2

    .line 118
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 138
    :cond_10
    if-le v0, v7, :cond_f

    .line 140
    const/16 v0, 0xff

    goto :goto_6
.end method
