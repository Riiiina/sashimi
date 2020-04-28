.class public Lcom/clearchannel/iheartradio/model/IHRBase64;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRBase64.java"


# static fields
.field public static final kBase64BitsPerChar:I = 0x6

.field public static final kBase64EncodingCGISafe:I = 0x1

.field public static final kBase64EncodingDefault:I = 0x0

.field public static final kBase64EncodingURLAndFilenameSafe:I = 0x2

.field protected static final sBase64DecodeTable:[B

.field protected static final sBase64EncodeTable:[B

.field protected static final sBase64EncodeURLTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0x40

    const/16 v5, 0x3f

    const/16 v4, 0x3e

    const/16 v3, 0x63

    .line 4
    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 5
    aput-byte v3, v0, v1

    aput-byte v3, v0, v7

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    aput-byte v3, v0, v1

    const/4 v1, 0x6

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v3, v0, v1

    const/16 v1, 0x9

    aput-byte v3, v0, v1

    const/16 v1, 0xa

    aput-byte v3, v0, v1

    const/16 v1, 0xb

    aput-byte v3, v0, v1

    const/16 v1, 0xc

    aput-byte v3, v0, v1

    const/16 v1, 0xd

    aput-byte v3, v0, v1

    const/16 v1, 0xe

    aput-byte v3, v0, v1

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x10

    .line 6
    aput-byte v3, v0, v1

    const/16 v1, 0x11

    aput-byte v3, v0, v1

    const/16 v1, 0x12

    aput-byte v3, v0, v1

    const/16 v1, 0x13

    aput-byte v3, v0, v1

    const/16 v1, 0x14

    aput-byte v3, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    aput-byte v3, v0, v1

    const/16 v1, 0x17

    aput-byte v3, v0, v1

    const/16 v1, 0x18

    aput-byte v3, v0, v1

    const/16 v1, 0x19

    aput-byte v3, v0, v1

    const/16 v1, 0x1a

    aput-byte v3, v0, v1

    const/16 v1, 0x1b

    aput-byte v3, v0, v1

    const/16 v1, 0x1c

    aput-byte v3, v0, v1

    const/16 v1, 0x1d

    aput-byte v3, v0, v1

    const/16 v1, 0x1e

    aput-byte v3, v0, v1

    const/16 v1, 0x1f

    aput-byte v3, v0, v1

    const/16 v1, 0x20

    .line 7
    aput-byte v3, v0, v1

    const/16 v1, 0x21

    aput-byte v3, v0, v1

    const/16 v1, 0x22

    aput-byte v3, v0, v1

    const/16 v1, 0x23

    aput-byte v3, v0, v1

    const/16 v1, 0x24

    aput-byte v3, v0, v1

    const/16 v1, 0x25

    aput-byte v3, v0, v1

    const/16 v1, 0x26

    aput-byte v3, v0, v1

    const/16 v1, 0x27

    aput-byte v3, v0, v1

    const/16 v1, 0x28

    aput-byte v3, v0, v1

    const/16 v1, 0x29

    aput-byte v3, v0, v1

    const/16 v1, 0x2a

    aput-byte v3, v0, v1

    const/16 v1, 0x2b

    aput-byte v4, v0, v1

    const/16 v1, 0x2c

    aput-byte v3, v0, v1

    const/16 v1, 0x2d

    aput-byte v4, v0, v1

    const/16 v1, 0x2e

    aput-byte v3, v0, v1

    const/16 v1, 0x2f

    aput-byte v5, v0, v1

    const/16 v1, 0x30

    .line 8
    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/16 v1, 0x31

    const/16 v2, 0x35

    aput-byte v2, v0, v1

    const/16 v1, 0x32

    const/16 v2, 0x36

    aput-byte v2, v0, v1

    const/16 v1, 0x33

    const/16 v2, 0x37

    aput-byte v2, v0, v1

    const/16 v1, 0x34

    const/16 v2, 0x38

    aput-byte v2, v0, v1

    const/16 v1, 0x35

    const/16 v2, 0x39

    aput-byte v2, v0, v1

    const/16 v1, 0x36

    const/16 v2, 0x3a

    aput-byte v2, v0, v1

    const/16 v1, 0x37

    const/16 v2, 0x3b

    aput-byte v2, v0, v1

    const/16 v1, 0x38

    const/16 v2, 0x3c

    aput-byte v2, v0, v1

    const/16 v1, 0x39

    const/16 v2, 0x3d

    aput-byte v2, v0, v1

    const/16 v1, 0x3a

    aput-byte v3, v0, v1

    const/16 v1, 0x3b

    aput-byte v3, v0, v1

    const/16 v1, 0x3c

    aput-byte v3, v0, v1

    const/16 v1, 0x3d

    aput-byte v3, v0, v1

    aput-byte v3, v0, v4

    aput-byte v3, v0, v5

    .line 9
    aput-byte v3, v0, v6

    const/16 v1, 0x42

    aput-byte v7, v0, v1

    const/16 v1, 0x43

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    const/16 v1, 0x44

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    const/16 v1, 0x45

    const/4 v2, 0x4

    aput-byte v2, v0, v1

    const/16 v1, 0x46

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/16 v1, 0x47

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/16 v1, 0x48

    const/4 v2, 0x7

    aput-byte v2, v0, v1

    const/16 v1, 0x49

    const/16 v2, 0x8

    aput-byte v2, v0, v1

    const/16 v1, 0x4a

    const/16 v2, 0x9

    aput-byte v2, v0, v1

    const/16 v1, 0x4b

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/16 v1, 0x4c

    const/16 v2, 0xb

    aput-byte v2, v0, v1

    const/16 v1, 0x4d

    const/16 v2, 0xc

    aput-byte v2, v0, v1

    const/16 v1, 0x4e

    const/16 v2, 0xd

    aput-byte v2, v0, v1

    const/16 v1, 0x4f

    const/16 v2, 0xe

    aput-byte v2, v0, v1

    const/16 v1, 0x50

    .line 10
    const/16 v2, 0xf

    aput-byte v2, v0, v1

    const/16 v1, 0x51

    const/16 v2, 0x10

    aput-byte v2, v0, v1

    const/16 v1, 0x52

    const/16 v2, 0x11

    aput-byte v2, v0, v1

    const/16 v1, 0x53

    const/16 v2, 0x12

    aput-byte v2, v0, v1

    const/16 v1, 0x54

    const/16 v2, 0x13

    aput-byte v2, v0, v1

    const/16 v1, 0x55

    const/16 v2, 0x14

    aput-byte v2, v0, v1

    const/16 v1, 0x56

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/16 v1, 0x57

    const/16 v2, 0x16

    aput-byte v2, v0, v1

    const/16 v1, 0x58

    const/16 v2, 0x17

    aput-byte v2, v0, v1

    const/16 v1, 0x59

    const/16 v2, 0x18

    aput-byte v2, v0, v1

    const/16 v1, 0x5a

    const/16 v2, 0x19

    aput-byte v2, v0, v1

    const/16 v1, 0x5b

    aput-byte v3, v0, v1

    const/16 v1, 0x5c

    aput-byte v3, v0, v1

    const/16 v1, 0x5d

    aput-byte v3, v0, v1

    const/16 v1, 0x5e

    aput-byte v3, v0, v1

    const/16 v1, 0x5f

    aput-byte v5, v0, v1

    const/16 v1, 0x60

    .line 11
    aput-byte v3, v0, v1

    const/16 v1, 0x61

    const/16 v2, 0x1a

    aput-byte v2, v0, v1

    const/16 v1, 0x62

    const/16 v2, 0x1b

    aput-byte v2, v0, v1

    const/16 v1, 0x1c

    aput-byte v1, v0, v3

    const/16 v1, 0x64

    const/16 v2, 0x1d

    aput-byte v2, v0, v1

    const/16 v1, 0x65

    const/16 v2, 0x1e

    aput-byte v2, v0, v1

    const/16 v1, 0x66

    const/16 v2, 0x1f

    aput-byte v2, v0, v1

    const/16 v1, 0x67

    const/16 v2, 0x20

    aput-byte v2, v0, v1

    const/16 v1, 0x68

    const/16 v2, 0x21

    aput-byte v2, v0, v1

    const/16 v1, 0x69

    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/16 v1, 0x6a

    const/16 v2, 0x23

    aput-byte v2, v0, v1

    const/16 v1, 0x6b

    const/16 v2, 0x24

    aput-byte v2, v0, v1

    const/16 v1, 0x6c

    const/16 v2, 0x25

    aput-byte v2, v0, v1

    const/16 v1, 0x6d

    const/16 v2, 0x26

    aput-byte v2, v0, v1

    const/16 v1, 0x6e

    const/16 v2, 0x27

    aput-byte v2, v0, v1

    const/16 v1, 0x6f

    const/16 v2, 0x28

    aput-byte v2, v0, v1

    const/16 v1, 0x70

    .line 12
    const/16 v2, 0x29

    aput-byte v2, v0, v1

    const/16 v1, 0x71

    const/16 v2, 0x2a

    aput-byte v2, v0, v1

    const/16 v1, 0x72

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/16 v1, 0x73

    const/16 v2, 0x2c

    aput-byte v2, v0, v1

    const/16 v1, 0x74

    const/16 v2, 0x2d

    aput-byte v2, v0, v1

    const/16 v1, 0x75

    const/16 v2, 0x2e

    aput-byte v2, v0, v1

    const/16 v1, 0x76

    const/16 v2, 0x2f

    aput-byte v2, v0, v1

    const/16 v1, 0x77

    const/16 v2, 0x30

    aput-byte v2, v0, v1

    const/16 v1, 0x78

    const/16 v2, 0x31

    aput-byte v2, v0, v1

    const/16 v1, 0x79

    const/16 v2, 0x32

    aput-byte v2, v0, v1

    const/16 v1, 0x7a

    const/16 v2, 0x33

    aput-byte v2, v0, v1

    const/16 v1, 0x7b

    aput-byte v3, v0, v1

    const/16 v1, 0x7c

    aput-byte v3, v0, v1

    const/16 v1, 0x7d

    aput-byte v3, v0, v1

    const/16 v1, 0x7e

    aput-byte v3, v0, v1

    const/16 v1, 0x7f

    aput-byte v3, v0, v1

    .line 4
    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    .line 15
    new-array v0, v6, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64EncodeTable:[B

    .line 23
    new-array v0, v6, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64EncodeURLTable:[B

    .line 3
    return-void

    .line 15
    nop

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data

    .line 23
    :array_1
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2dt
        0x5ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    return-void
.end method

.method public static base64ForBits(B)B
    .locals 1
    .param p0, "bits"    # B

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRBase64;->base64ForBits(BI)B

    move-result v0

    return v0
.end method

.method public static base64ForBits(BI)B
    .locals 2
    .param p0, "bits"    # B
    .param p1, "base64Encoding"    # I

    .prologue
    .line 56
    packed-switch p1, :pswitch_data_0

    .line 63
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64EncodeTable:[B

    .line 67
    .local v0, "eTable":[B
    :goto_0
    and-int/lit8 v1, p0, 0x3f

    aget-byte v1, v0, v1

    return v1

    .line 59
    .end local v0    # "eTable":[B
    :pswitch_0
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64EncodeURLTable:[B

    .line 60
    .restart local v0    # "eTable":[B
    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static bitsForBase64(B)B
    .locals 1
    .param p0, "base64"    # B

    .prologue
    .line 41
    sget-object v0, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    aget-byte v0, v0, p0

    return v0
.end method

.method public static decode([B)[B
    .locals 1
    .param p0, "base64String"    # [B

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRBase64;->decode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([BI)[B
    .locals 12
    .param p0, "base64String"    # [B
    .param p1, "base64Encoding"    # I

    .prologue
    const/4 v11, 0x0

    .line 75
    packed-switch p1, :pswitch_data_0

    .line 78
    const/16 v7, 0x3d

    .line 81
    .local v7, "pad":B
    :goto_0
    if-nez p0, :cond_0

    move-object v10, v11

    .line 133
    :goto_1
    return-object v10

    .line 76
    .end local v7    # "pad":B
    :pswitch_0
    const/16 v7, 0x2e

    .restart local v7    # "pad":B
    goto :goto_0

    .line 82
    :cond_0
    array-length v6, p0

    .local v6, "n":I
    const/4 v10, 0x4

    if-ge v6, v10, :cond_1

    move-object v10, v11

    goto :goto_1

    .line 84
    :cond_1
    const/4 v1, 0x3

    .line 86
    .local v1, "j":I
    const/4 v10, 0x1

    sub-int v10, v6, v10

    aget-byte v10, p0, v10

    if-ne v10, v7, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 87
    :cond_2
    const/4 v10, 0x2

    sub-int v10, v6, v10

    aget-byte v10, p0, v10

    if-ne v10, v7, :cond_3

    add-int/lit8 v1, v1, -0x1

    .line 89
    :cond_3
    add-int/lit8 v6, v6, -0x4

    div-int/lit8 v10, v6, 0x4

    mul-int/lit8 v10, v10, 0x3

    add-int/2addr v10, v1

    new-array v8, v10, [B

    .line 91
    .local v8, "result":[B
    const/4 v4, 0x0

    .local v4, "l":I
    move v2, v4

    .local v2, "k":I
    move v0, v4

    .local v0, "i":I
    move v5, v4

    .end local v4    # "l":I
    .local v5, "l":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_2
    if-lt v0, v6, :cond_4

    .line 102
    packed-switch v1, :pswitch_data_1

    move v4, v5

    .end local v5    # "l":I
    .restart local v4    # "l":I
    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    :goto_3
    move-object v10, v8

    .line 133
    goto :goto_1

    .line 92
    .end local v2    # "k":I
    .end local v4    # "l":I
    .restart local v3    # "k":I
    .restart local v5    # "l":I
    :cond_4
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v11, p0, v3

    aget-byte v10, v10, v11

    shl-int/lit8 v9, v10, 0x12

    .line 93
    .local v9, "t":I
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget-byte v11, p0, v2

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    .line 94
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v11, p0, v3

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    .line 95
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget-byte v11, p0, v2

    aget-byte v10, v10, v11

    or-int/2addr v9, v10

    .line 97
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "l":I
    .restart local v4    # "l":I
    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    .line 98
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "l":I
    .restart local v5    # "l":I
    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v4

    .line 99
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "l":I
    .restart local v4    # "l":I
    and-int/lit16 v10, v9, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    .line 91
    add-int/lit8 v0, v0, 0x4

    move v5, v4

    .end local v4    # "l":I
    .restart local v5    # "l":I
    goto :goto_2

    .line 104
    .end local v9    # "t":I
    :pswitch_1
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v11, p0, v3

    aget-byte v10, v10, v11

    shl-int/lit8 v9, v10, 0x2

    .line 105
    .restart local v9    # "t":I
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget-byte v11, p0, v2

    aget-byte v10, v10, v11

    shr-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    .line 107
    and-int/lit16 v10, v9, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    move v4, v5

    .end local v5    # "l":I
    .restart local v4    # "l":I
    move v2, v3

    .line 108
    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_3

    .line 111
    .end local v2    # "k":I
    .end local v4    # "l":I
    .end local v9    # "t":I
    .restart local v3    # "k":I
    .restart local v5    # "l":I
    :pswitch_2
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v11, p0, v3

    aget-byte v10, v10, v11

    shl-int/lit8 v9, v10, 0xa

    .line 112
    .restart local v9    # "t":I
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget-byte v11, p0, v2

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v9, v10

    .line 113
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v11, p0, v3

    aget-byte v10, v10, v11

    shr-int/lit8 v10, v10, 0x2

    or-int/2addr v9, v10

    .line 115
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "l":I
    .restart local v4    # "l":I
    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    .line 116
    and-int/lit16 v10, v9, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v4

    goto/16 :goto_3

    .line 120
    .end local v2    # "k":I
    .end local v4    # "l":I
    .end local v9    # "t":I
    .restart local v3    # "k":I
    .restart local v5    # "l":I
    :pswitch_3
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v11, p0, v3

    aget-byte v10, v10, v11

    shl-int/lit8 v9, v10, 0x12

    .line 121
    .restart local v9    # "t":I
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget-byte v11, p0, v2

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0xc

    or-int/2addr v9, v10

    .line 122
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-byte v11, p0, v3

    aget-byte v10, v10, v11

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v9, v10

    .line 123
    sget-object v10, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64DecodeTable:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "k":I
    .restart local v3    # "k":I
    aget-byte v11, p0, v2

    aget-byte v10, v10, v11

    or-int/2addr v9, v10

    .line 125
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "l":I
    .restart local v4    # "l":I
    shr-int/lit8 v10, v9, 0x10

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    .line 126
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "l":I
    .restart local v5    # "l":I
    shr-int/lit8 v10, v9, 0x8

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v4

    .line 127
    and-int/lit16 v10, v9, 0xff

    int-to-byte v10, v10

    aput-byte v10, v8, v5

    move v4, v5

    .end local v5    # "l":I
    .restart local v4    # "l":I
    move v2, v3

    .line 128
    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto/16 :goto_3

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 102
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static encode([B)[B
    .locals 2
    .param p0, "data"    # [B

    .prologue
    const/4 v1, 0x0

    .line 45
    array-length v0, p0

    invoke-static {p0, v1, v0, v1}, Lcom/clearchannel/iheartradio/model/IHRBase64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0, p1, v0}, Lcom/clearchannel/iheartradio/model/IHRBase64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/clearchannel/iheartradio/model/IHRBase64;->encode([BIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static encode([BIII)[B
    .locals 9
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "base64Encoding"    # I

    .prologue
    .line 141
    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/NullPointerException;

    .end local p0    # "data":[B
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    throw p0

    .line 142
    .restart local p0    # "data":[B
    :cond_0
    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    add-int v0, p1, p2

    array-length v1, p0

    if-le v0, v1, :cond_2

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .end local p0    # "data":[B
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 143
    .restart local p0    # "data":[B
    :cond_2
    if-nez p2, :cond_3

    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 183
    .end local p0    # "data":[B
    .end local p1    # "offset":I
    .end local p2    # "length":I
    .end local p3    # "base64Encoding":I
    :goto_0
    return-object p0

    .line 145
    .restart local p0    # "data":[B
    .restart local p1    # "offset":I
    .restart local p2    # "length":I
    .restart local p3    # "base64Encoding":I
    :cond_3
    packed-switch p3, :pswitch_data_0

    .line 149
    sget-object p3, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64EncodeTable:[B

    .local p3, "eTable":[B
    const/16 v0, 0x3d

    .local v0, "pad":B
    move v4, v0

    .line 152
    .end local v0    # "pad":B
    .local v4, "pad":B
    :goto_1
    div-int/lit8 v3, p2, 0x3

    .local v3, "n":I
    rem-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x4

    new-array v5, v0, [B

    .line 154
    .local v5, "result":[B
    move v0, p1

    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "k":I
    move p1, v1

    .local p1, "i":I
    move v2, v1

    .end local v1    # "k":I
    .local v2, "k":I
    move v1, v0

    .end local v0    # "j":I
    .local v1, "j":I
    :goto_3
    if-lt p1, v3, :cond_5

    .line 165
    mul-int/lit8 p1, v3, 0x3

    if-ge p1, p2, :cond_7

    .line 166
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "j":I
    .restart local v0    # "j":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v3, v1, 0x10

    .line 168
    .local v3, "t":I
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .local v1, "k":I
    shr-int/lit8 v6, v3, 0x12

    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, p3, v6

    aput-byte v6, v5, v2

    .line 170
    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_6

    .line 171
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "j":I
    .local p2, "j":I
    aget-byte p0, p0, v0

    .end local p0    # "data":[B
    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    or-int v2, v3, p0

    .line 173
    .end local v3    # "t":I
    .local v2, "t":I
    add-int/lit8 p0, v1, 0x1

    .end local v1    # "k":I
    .local p0, "k":I
    shr-int/lit8 v0, v2, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-byte v0, p3, v0

    aput-byte v0, v5, v1

    .line 174
    add-int/lit8 v0, p0, 0x1

    .end local p0    # "k":I
    .local v0, "k":I
    shr-int/lit8 v1, v2, 0x6

    and-int/lit8 v1, v1, 0x3f

    aget-byte p3, p3, v1

    .end local p3    # "eTable":[B
    aput-byte p3, v5, p0

    move p3, v2

    .end local v2    # "t":I
    .local p3, "t":I
    move p0, p2

    .end local p2    # "j":I
    .local p0, "j":I
    move p2, v0

    .line 180
    .end local v0    # "k":I
    .local p2, "k":I
    :goto_4
    aput-byte v4, v5, p2

    move v8, p0

    .end local p0    # "j":I
    .local v8, "j":I
    move p0, p1

    .end local p1    # "i":I
    .local p0, "i":I
    move p1, v8

    .end local v8    # "j":I
    .end local p3    # "t":I
    .local p1, "j":I
    :goto_5
    move-object p0, v5

    .line 183
    goto :goto_0

    .line 146
    .end local v4    # "pad":B
    .end local v5    # "result":[B
    .local p0, "data":[B
    .local p1, "offset":I
    .local p2, "length":I
    .local p3, "base64Encoding":I
    :pswitch_0
    sget-object p3, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64EncodeURLTable:[B

    .local p3, "eTable":[B
    const/16 v0, 0x2e

    .local v0, "pad":B
    move v4, v0

    .end local v0    # "pad":B
    .restart local v4    # "pad":B
    goto :goto_1

    .line 147
    .end local v4    # "pad":B
    .local p3, "base64Encoding":I
    :pswitch_1
    sget-object p3, Lcom/clearchannel/iheartradio/model/IHRBase64;->sBase64EncodeURLTable:[B

    .local p3, "eTable":[B
    const/16 v0, 0x3d

    .restart local v0    # "pad":B
    move v4, v0

    .end local v0    # "pad":B
    .restart local v4    # "pad":B
    goto :goto_1

    .line 152
    .local v3, "n":I
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    .line 155
    .local v1, "j":I
    .local v2, "k":I
    .restart local v5    # "result":[B
    .local p1, "i":I
    :cond_5
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "j":I
    .local v0, "j":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v6, v1, 0x10

    .line 156
    .local v6, "t":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "j":I
    .restart local v1    # "j":I
    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v6, v0

    .line 157
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "j":I
    .restart local v0    # "j":I
    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v6, v1

    .line 159
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .local v1, "k":I
    shr-int/lit8 v7, v6, 0x12

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, p3, v7

    aput-byte v7, v5, v2

    .line 160
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    shr-int/lit8 v7, v6, 0xc

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, p3, v7

    aput-byte v7, v5, v1

    .line 161
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "k":I
    .restart local v1    # "k":I
    shr-int/lit8 v7, v6, 0x6

    and-int/lit8 v7, v7, 0x3f

    aget-byte v7, p3, v7

    aput-byte v7, v5, v2

    .line 162
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "k":I
    .restart local v2    # "k":I
    and-int/lit8 v6, v6, 0x3f

    aget-byte v6, p3, v6

    .end local v6    # "t":I
    aput-byte v6, v5, v1

    .line 154
    add-int/lit8 p1, p1, 0x1

    move v1, v0

    .end local v0    # "j":I
    .local v1, "j":I
    goto/16 :goto_3

    .line 176
    .end local v2    # "k":I
    .restart local v0    # "j":I
    .local v1, "k":I
    .local v3, "t":I
    :cond_6
    add-int/lit8 p0, v1, 0x1

    .end local v1    # "k":I
    .local p0, "k":I
    shr-int/lit8 p2, v3, 0xc

    and-int/lit8 p2, p2, 0x3f

    aget-byte p2, p3, p2

    .end local p2    # "length":I
    aput-byte p2, v5, v1

    .line 177
    add-int/lit8 p2, p0, 0x1

    .end local p0    # "k":I
    .local p2, "k":I
    aput-byte v4, v5, p0

    move p3, v3

    .end local v3    # "t":I
    .local p3, "t":I
    move p0, v0

    .end local v0    # "j":I
    .local p0, "j":I
    goto :goto_4

    .local v1, "j":I
    .restart local v2    # "k":I
    .local v3, "n":I
    .local p0, "data":[B
    .local p2, "length":I
    .local p3, "eTable":[B
    :cond_7
    move p2, v2

    .end local v2    # "k":I
    .local p2, "k":I
    move p0, p1

    .end local p1    # "i":I
    .local p0, "i":I
    move p1, v1

    .end local v1    # "j":I
    .local p1, "j":I
    goto :goto_5

    .line 145
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isValidBase64(B)Z
    .locals 1
    .param p0, "base64"    # B

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRBase64;->isValidBase64(BI)Z

    move-result v0

    return v0
.end method

.method public static isValidBase64(BI)Z
    .locals 5
    .param p0, "base64"    # B
    .param p1, "base64Encoding"    # I

    .prologue
    const/16 v4, 0x5f

    const/16 v3, 0x3d

    const/16 v2, 0x2d

    const/4 v1, 0x1

    .line 187
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    move v0, v1

    .line 205
    :goto_0
    return v0

    .line 188
    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_1

    move v0, v1

    goto :goto_0

    .line 189
    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 191
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 201
    const/16 v0, 0x2b

    if-eq p0, v0, :cond_3

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_3

    if-ne p0, v3, :cond_6

    :cond_3
    move v0, v1

    goto :goto_0

    .line 193
    :pswitch_0
    if-eq p0, v2, :cond_4

    if-eq p0, v4, :cond_4

    const/16 v0, 0x2e

    if-ne p0, v0, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    .line 197
    :pswitch_1
    if-eq p0, v2, :cond_5

    if-eq p0, v4, :cond_5

    if-ne p0, v3, :cond_6

    :cond_5
    move v0, v1

    goto :goto_0

    .line 205
    :cond_6
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
