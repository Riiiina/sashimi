.class public Lcom/chartcross/location/MxCoordConverter;
.super Ljava/lang/Object;
.source "MxCoordConverter.java"


# static fields
.field public static final DATUM_AGD66:I = 0x7

.field public static final DATUM_AGD84:I = 0x8

.field public static final DATUM_ED50_MEAN:I = 0x5

.field public static final DATUM_ED50_SPAIN:I = 0x6

.field public static final DATUM_NAD27_CONCUS:I = 0x2

.field public static final DATUM_NAD83_CONCUS:I = 0x3

.field public static final DATUM_OSGB_MEAN:I = 0x4

.field public static final DATUM_SAD69:I = 0x9

.field public static final DATUM_TYPE_3PARAM:I = 0x2

.field public static final DATUM_TYPE_7PARAM:I = 0x3

.field public static final DATUM_TYPE_WGS72:I = 0x1

.field public static final DATUM_TYPE_WGS84:I = 0x0

.field public static final DATUM_WGS72:I = 0x1

.field public static final DATUM_WGS84:I = 0x0

.field private static DatumList:[Lcom/chartcross/location/MxDatum; = null

.field public static final ELLIPSOID_AIRY_1830:I = 0x0

.field public static final ELLIPSOID_AUSTRALIAN_NATIONAL:I = 0x2

.field public static final ELLIPSOID_BESSEL_1841:I = 0x4

.field public static final ELLIPSOID_BESSEL_1841_NAMIBIA:I = 0x3

.field public static final ELLIPSOID_CLARKE_1866:I = 0x5

.field public static final ELLIPSOID_CLARKE_1880:I = 0x6

.field public static final ELLIPSOID_GRS80:I = 0x13

.field public static final ELLIPSOID_INTERNATIONAL_1924:I = 0x11

.field public static final ELLIPSOID_KRASSOVSKY_1940:I = 0x12

.field public static final ELLIPSOID_SOUTH_AMERICAN_1969:I = 0x14

.field public static final ELLIPSOID_WGS72:I = 0x15

.field public static final ELLIPSOID_WGS84:I = 0x16

.field private static EllipsoidList:[Lcom/chartcross/location/MxEllipsoid; = null

.field public static final LETTER_A:I = 0x0

.field public static final LETTER_B:I = 0x1

.field public static final LETTER_C:I = 0x2

.field public static final LETTER_D:I = 0x3

.field public static final LETTER_E:I = 0x4

.field public static final LETTER_F:I = 0x5

.field public static final LETTER_G:I = 0x6

.field public static final LETTER_H:I = 0x7

.field public static final LETTER_I:I = 0x8

.field public static final LETTER_J:I = 0x9

.field public static final LETTER_K:I = 0xa

.field public static final LETTER_L:I = 0xb

.field public static final LETTER_M:I = 0xc

.field public static final LETTER_N:I = 0xd

.field public static final LETTER_O:I = 0xe

.field public static final LETTER_P:I = 0xf

.field public static final LETTER_Q:I = 0x10

.field public static final LETTER_R:I = 0x11

.field public static final LETTER_S:I = 0x12

.field public static final LETTER_T:I = 0x13

.field public static final LETTER_U:I = 0x14

.field public static final LETTER_V:I = 0x15

.field public static final LETTER_W:I = 0x16

.field public static final LETTER_X:I = 0x17

.field public static final LETTER_Y:I = 0x18

.field public static final LETTER_Z:I = 0x19

.field private static MxLatitudeBandTable:[Lcom/chartcross/location/MxLatitudeBand; = null

.field public static final PI:D = 3.141592653589793

.field public static final PI_OVER_2:D = 1.5707963267948966


# instance fields
.field private mCorrectedHeight:D

.field private mCorrectedLatitudeR:D

.field private mCorrectedLongitudeR:D

.field public mEasting:D

.field public mHemisphere:Ljava/lang/String;

.field public mNorthing:D

.field public mZone:I

.field public mZoneLetter:Ljava/lang/String;

.field m_TM_Delta_Easting:D

.field m_TM_Delta_Northing:D

.field m_TM_False_Easting:D

.field m_TM_False_Northing:D

.field m_TM_Origin_Lat:D

.field m_TM_Origin_Long:D

.field m_TM_Scale_Factor:D

.field m_TM_a:D

.field m_TM_ap:D

.field m_TM_bp:D

.field m_TM_cp:D

.field m_TM_dp:D

.field m_TM_ebs:D

.field m_TM_ep:D

.field m_TM_es:D

.field m_TM_f:D


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .prologue
    .line 176
    const/16 v1, 0x17

    new-array v8, v1, [Lcom/chartcross/location/MxEllipsoid;

    const/4 v9, 0x0

    .line 177
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x41585416d9581062L    # 6377563.396

    const-wide v4, 0x41583f483a2d0e56L    # 6356256.909

    const-wide v6, 0x4072b5330e1495b9L    # 299.3249646

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/4 v9, 0x1

    .line 178
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415853df0c189375L    # 6377340.189

    const-wide v4, 0x41583f109cac0831L    # 6356034.448

    const-wide v6, 0x4072b5330e1495b9L    # 299.3249646

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/4 v9, 0x2

    .line 179
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854ac00000000L    # 6378160.0

    const-wide v4, 0x41583fc9ae041893L    # 6356774.719

    const-wide v6, 0x4072a40000000000L    # 298.25

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/4 v9, 0x3

    .line 180
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x41585402f75c28f6L    # 6377483.865

    const-wide v4, 0x41583f315883126fL    # 6356165.383

    const-wide v6, 0x4072b271ebd5a690L    # 299.1528128

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/4 v9, 0x4

    .line 181
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415853ed49eb851fL    # 6377397.155

    const-wide v4, 0x41583f1bbda1cac1L    # 6356078.963

    const-wide v6, 0x4072b271ebd5a690L    # 299.1528128

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/4 v9, 0x5

    .line 182
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854b79999999aL    # 6378206.4

    const-wide v4, 0x41583f99f3333333L    # 6356583.8

    const-wide v6, 0x40726fa8bf719a77L    # 294.9786982

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/4 v9, 0x6

    .line 183
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854c24947ae14L    # 6378249.145

    const-wide v4, 0x41583f88b7ae147bL    # 6356514.87

    const-wide v6, 0x40725770a3d70a3dL    # 293.465

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/4 v9, 0x7

    .line 184
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415853cf16147ae1L    # 6377276.345

    const-wide v4, 0x41583f1ada6e978dL    # 6356075.413

    const-wide v6, 0x4072ccd3c3611340L    # 300.8017

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x8

    .line 185
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415853d4a3958106L    # 6377298.556

    const-wide v4, 0x41583f2063333333L    # 6356097.55

    const-wide v6, 0x4072ccd3c3611340L    # 300.8017

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x9

    .line 186
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415853d54f8d4fdfL    # 6377301.243

    const-wide v4, 0x41583f210e978d50L    # 6356100.228

    const-wide v6, 0x4072ccd3c3611340L    # 300.8017

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0xa

    .line 187
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415853d3ea7ef9dbL    # 6377295.664

    const-wide v4, 0x41583f1faac08312L    # 6356094.668

    const-wide v6, 0x4072ccd3c3611340L    # 300.8017

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0xb

    .line 188
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415853d604083127L    # 6377304.063

    const-wide v4, 0x41583f21c27ef9dbL    # 6356103.039

    const-wide v6, 0x4072ccd3c3611340L    # 300.8017

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0xc

    .line 189
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415853d7673b645aL    # 6377309.613

    const-wide v4, 0x41583f23648b4396L    # 6356109.571

    const-wide v6, 0x4072ccd3c3611340L    # 300.8017

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0xd

    .line 190
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854aac0000000L    # 6378155.0

    const-wide v4, 0x41583fc9547ae148L    # 6356773.32

    const-wide v6, 0x4072a4cccccccccdL    # 298.3

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0xe

    .line 191
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854b600000000L    # 6378200.0

    const-wide v4, 0x41583fd48ae147aeL    # 6356818.17

    const-wide v6, 0x4072a4cccccccccdL    # 298.3

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0xf

    .line 192
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854c780000000L    # 6378270.0

    const-wide v4, 0x41583fce95f3b646L    # 6356794.343

    const-wide v6, 0x4072900000000000L    # 297.0

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x10

    .line 193
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854ac00000000L    # 6378160.0

    const-wide v4, 0x41583fc9a0418937L    # 6356774.504

    const-wide v6, 0x4072a3f3b645a1cbL    # 298.247

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x11

    .line 194
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854e500000000L    # 6378388.0

    const-wide v4, 0x41583febfc8b4396L    # 6356911.946

    const-wide v6, 0x4072900000000000L    # 297.0

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x12

    .line 195
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854c140000000L    # 6378245.0

    const-wide v4, 0x41583fdfc1374bc7L    # 6356863.019

    const-wide v6, 0x4072a4cccccccccdL    # 298.3

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x13

    .line 196
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854a640000000L    # 6378137.0

    const-wide v4, 0x41583fc4141a36e3L    # 6356752.3141

    const-wide v6, 0x4072a41d94ebf9a8L    # 298.257222101

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x14

    .line 197
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854ac00000000L    # 6378160.0

    const-wide v4, 0x41583fc9ae041893L    # 6356774.719

    const-wide v6, 0x4072a40000000000L    # 298.25

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x15

    .line 198
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854a5c0000000L    # 6378135.0

    const-wide v4, 0x41583fc3a147ae14L    # 6356750.52

    const-wide v6, 0x4072a428f5c28f5cL    # 298.26

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    const/16 v9, 0x16

    .line 199
    new-instance v1, Lcom/chartcross/location/MxEllipsoid;

    const-wide v2, 0x415854a640000000L    # 6378137.0

    const-wide v4, 0x41583fc4141bda51L    # 6356752.3142

    const-wide v6, 0x4072a41d96746d88L    # 298.257223563

    invoke-direct/range {v1 .. v7}, Lcom/chartcross/location/MxEllipsoid;-><init>(DDD)V

    aput-object v1, v8, v9

    .line 175
    sput-object v8, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    .line 228
    const/16 v1, 0xa

    move v0, v1

    new-array v0, v0, [Lcom/chartcross/location/MxDatum;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    .line 229
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x0

    const/16 v3, 0x16

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide v16, -0x3fa9800000000000L    # -90.0

    const-wide v18, 0x4056800000000000L    # 90.0

    const-wide v20, -0x3f99800000000000L    # -180.0

    const-wide v22, 0x4066800000000000L    # 180.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x1

    .line 230
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x1

    const/16 v3, 0x15

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide v16, -0x3fa9800000000000L    # -90.0

    const-wide v18, 0x4056800000000000L    # 90.0

    const-wide v20, -0x3f99800000000000L    # -180.0

    const-wide v22, 0x4066800000000000L    # 180.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x2

    .line 231
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x2

    const/4 v3, 0x5

    const-wide/high16 v4, -0x3fe0000000000000L    # -8.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const-wide/high16 v8, 0x4064000000000000L    # 160.0

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    const-wide/high16 v12, 0x4066000000000000L    # 176.0

    const-wide/high16 v14, 0x4018000000000000L    # 6.0

    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    const-wide v20, -0x3f9f200000000000L    # -135.0

    const-wide/high16 v22, -0x3fb2000000000000L    # -60.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x3

    .line 232
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x2

    const/16 v3, 0x13

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide/16 v12, 0x0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x402e000000000000L    # 15.0

    const-wide/high16 v18, 0x404e000000000000L    # 60.0

    const-wide v20, -0x3f9f200000000000L    # -135.0

    const-wide/high16 v22, -0x3fb2000000000000L    # -60.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x4

    .line 233
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-wide v4, 0x4077700000000000L    # 375.0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    const-wide v8, -0x3fa4400000000000L    # -111.0

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const-wide v12, 0x407af00000000000L    # 431.0

    const-wide/high16 v14, 0x402e000000000000L    # 15.0

    const-wide/high16 v16, 0x4046000000000000L    # 44.0

    const-wide v18, 0x4050800000000000L    # 66.0

    const-wide/high16 v20, -0x3fd4000000000000L    # -14.0

    const-wide/high16 v22, 0x401c000000000000L    # 7.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x5

    .line 234
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x2

    const/16 v3, 0x11

    const-wide v4, -0x3faa400000000000L    # -87.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide v8, -0x3fa7800000000000L    # -98.0

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    const-wide v12, -0x3fa1c00000000000L    # -121.0

    const-wide/high16 v14, 0x4014000000000000L    # 5.0

    const-wide/high16 v16, 0x403e000000000000L    # 30.0

    const-wide/high16 v18, 0x4054000000000000L    # 80.0

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    const-wide v22, 0x4040800000000000L    # 33.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x6

    .line 235
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x2

    const/16 v3, 0x11

    const-wide/high16 v4, -0x3fab000000000000L    # -84.0

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const-wide v8, -0x3fa5400000000000L    # -107.0

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    const-wide/high16 v12, -0x3fa2000000000000L    # -120.0

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const-wide/high16 v16, 0x403e000000000000L    # 30.0

    const-wide v18, 0x4048800000000000L    # 49.0

    const-wide/high16 v20, -0x3fd2000000000000L    # -15.0

    const-wide/high16 v22, 0x4024000000000000L    # 10.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x7

    .line 236
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide v4, -0x3f9f600000000000L    # -133.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    const-wide/high16 v8, -0x3fb8000000000000L    # -48.0

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    const-wide v12, 0x4062800000000000L    # 148.0

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    const-wide/high16 v16, -0x3fb9000000000000L    # -46.0

    const-wide/high16 v18, -0x3ff0000000000000L    # -4.0

    const-wide v20, 0x405b400000000000L    # 109.0

    const-wide v22, 0x4064200000000000L    # 161.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x8

    .line 237
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide v4, -0x3f9f400000000000L    # -134.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const-wide/high16 v8, -0x3fb8000000000000L    # -48.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const-wide v12, 0x4062a00000000000L    # 149.0

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, -0x3fb9000000000000L    # -46.0

    const-wide/high16 v18, -0x3ff0000000000000L    # -4.0

    const-wide v20, 0x405b400000000000L    # 109.0

    const-wide v22, 0x4064200000000000L    # 161.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    const/16 v25, 0x9

    .line 238
    new-instance v1, Lcom/chartcross/location/MxDatum;

    const/4 v2, 0x2

    const/16 v3, 0x14

    const-wide v4, -0x3fb3800000000000L    # -57.0

    const-wide/high16 v6, 0x402e000000000000L    # 15.0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    const-wide v12, -0x3fbb800000000000L    # -41.0

    const-wide/high16 v14, 0x4022000000000000L    # 9.0

    const-wide v16, -0x3fafc00000000000L    # -65.0

    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    const-wide v20, -0x3fa9800000000000L    # -90.0

    const-wide/high16 v22, -0x3fc7000000000000L    # -25.0

    invoke-direct/range {v1 .. v23}, Lcom/chartcross/location/MxDatum;-><init>(IIDDDDDDDDDD)V

    aput-object v1, v24, v25

    .line 227
    sput-object v24, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    .line 469
    const/16 v1, 0x14

    new-array v9, v1, [Lcom/chartcross/location/MxLatitudeBand;

    const/4 v10, 0x0

    .line 470
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/4 v2, 0x2

    const-wide v3, 0x4130c8e000000000L    # 1100000.0

    const-wide/high16 v5, -0x3fae000000000000L    # -72.0

    const-wide v7, -0x3fabe00000000000L    # -80.5

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/4 v10, 0x1

    .line 471
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/4 v2, 0x3

    const-wide v3, 0x413e848000000000L    # 2000000.0

    const-wide/high16 v5, -0x3fb0000000000000L    # -64.0

    const-wide/high16 v7, -0x3fae000000000000L    # -72.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/4 v10, 0x2

    .line 472
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/4 v2, 0x4

    const-wide v3, 0x41455cc000000000L    # 2800000.0

    const-wide/high16 v5, -0x3fb4000000000000L    # -56.0

    const-wide/high16 v7, -0x3fb0000000000000L    # -64.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/4 v10, 0x3

    .line 473
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/4 v2, 0x5

    const-wide v3, 0x414c3a9000000000L    # 3700000.0

    const-wide/high16 v5, -0x3fb8000000000000L    # -48.0

    const-wide/high16 v7, -0x3fb4000000000000L    # -56.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/4 v10, 0x4

    .line 474
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/4 v2, 0x6

    const-wide v3, 0x41518c3000000000L    # 4600000.0

    const-wide/high16 v5, -0x3fbc000000000000L    # -40.0

    const-wide/high16 v7, -0x3fb8000000000000L    # -48.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/4 v10, 0x5

    .line 475
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/4 v2, 0x7

    const-wide v3, 0x4154fb1800000000L    # 5500000.0

    const-wide/high16 v5, -0x3fc0000000000000L    # -32.0

    const-wide/high16 v7, -0x3fbc000000000000L    # -40.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/4 v10, 0x6

    .line 476
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x9

    const-wide v3, 0x41586a0000000000L    # 6400000.0

    const-wide/high16 v5, -0x3fc8000000000000L    # -24.0

    const-wide/high16 v7, -0x3fc0000000000000L    # -32.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/4 v10, 0x7

    .line 477
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0xa

    const-wide v3, 0x415bd8e800000000L    # 7300000.0

    const-wide/high16 v5, -0x3fd0000000000000L    # -16.0

    const-wide/high16 v7, -0x3fc8000000000000L    # -24.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0x8

    .line 478
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0xb

    const-wide v3, 0x415f47d000000000L    # 8200000.0

    const-wide/high16 v5, -0x3fe0000000000000L    # -8.0

    const-wide/high16 v7, -0x3fd0000000000000L    # -16.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0x9

    .line 479
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0xc

    const-wide v3, 0x41615b5c00000000L    # 9100000.0

    const-wide/16 v5, 0x0

    const-wide/high16 v7, -0x3fe0000000000000L    # -8.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0xa

    .line 480
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0xd

    const-wide/16 v3, 0x0

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    const-wide/16 v7, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0xb

    .line 481
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0xf

    const-wide v3, 0x41286a0000000000L    # 800000.0

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0xc

    .line 482
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x10

    const-wide v3, 0x4139f0a000000000L    # 1700000.0

    const-wide/high16 v5, 0x4038000000000000L    # 24.0

    const-wide/high16 v7, 0x4030000000000000L    # 16.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0xd

    .line 483
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x11

    const-wide v3, 0x4143d62000000000L    # 2600000.0

    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    const-wide/high16 v7, 0x4038000000000000L    # 24.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0xe

    .line 484
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x12

    const-wide v3, 0x414ab3f000000000L    # 3500000.0

    const-wide/high16 v5, 0x4044000000000000L    # 40.0

    const-wide/high16 v7, 0x4040000000000000L    # 32.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0xf

    .line 485
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x13

    const-wide v3, 0x4150c8e000000000L    # 4400000.0

    const-wide/high16 v5, 0x4048000000000000L    # 48.0

    const-wide/high16 v7, 0x4044000000000000L    # 40.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0x10

    .line 486
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x14

    const-wide v3, 0x415437c800000000L    # 5300000.0

    const-wide/high16 v5, 0x404c000000000000L    # 56.0

    const-wide/high16 v7, 0x4048000000000000L    # 48.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0x11

    .line 487
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x15

    const-wide v3, 0x4157a6b000000000L    # 6200000.0

    const-wide/high16 v5, 0x4050000000000000L    # 64.0

    const-wide/high16 v7, 0x404c000000000000L    # 56.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0x12

    .line 488
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x16

    const-wide v3, 0x415ab3f000000000L    # 7000000.0

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    const-wide/high16 v7, 0x4050000000000000L    # 64.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    const/16 v10, 0x13

    .line 489
    new-instance v1, Lcom/chartcross/location/MxLatitudeBand;

    const/16 v2, 0x17

    const-wide v3, 0x415e22d800000000L    # 7900000.0

    const-wide v5, 0x4055200000000000L    # 84.5

    const-wide/high16 v7, 0x4052000000000000L    # 72.0

    invoke-direct/range {v1 .. v8}, Lcom/chartcross/location/MxLatitudeBand;-><init>(IDDD)V

    aput-object v1, v9, v10

    .line 468
    sput-object v9, Lcom/chartcross/location/MxCoordConverter;->MxLatitudeBandTable:[Lcom/chartcross/location/MxLatitudeBand;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 492
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    iput-wide v0, p0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 495
    iput-wide v0, p0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 496
    return-void
.end method

.method private DECtoSEX(D)D
    .locals 10
    .param p1, "angle"    # D

    .prologue
    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    .line 506
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 507
    .local v0, "deg":D
    sub-double v6, p1, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 508
    .local v2, "min":D
    sub-double v6, p1, v0

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    mul-double v4, v6, v8

    .line 513
    .local v4, "sec":D
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double v6, v2, v6

    add-double/2addr v6, v0

    const-wide v8, 0x40c3880000000000L    # 10000.0

    div-double v8, v4, v8

    add-double/2addr v6, v8

    return-wide v6
.end method

.method private DEGtoSEC(D)D
    .locals 10
    .param p1, "angle"    # D

    .prologue
    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    .line 524
    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    .line 525
    .local v0, "deg":D
    sub-double v6, p1, v0

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    .line 526
    .local v2, "min":D
    sub-double v6, p1, v0

    mul-double/2addr v6, v8

    sub-double/2addr v6, v2

    mul-double v4, v6, v8

    .line 531
    .local v4, "sec":D
    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    mul-double/2addr v6, v2

    add-double/2addr v6, v4

    const-wide v8, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    return-wide v6
.end method

.method private DENOM(D)D
    .locals 8
    .param p1, "Latitude"    # D

    .prologue
    .line 173
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_es:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static final DegToGrad(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 168
    const-wide v0, 0x3f91df46a2529d3aL    # 0.0174532925199433

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private SPHSN(D)D
    .locals 10
    .param p1, "Latitude"    # D

    .prologue
    .line 171
    iget-wide v0, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_es:D

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private SPHSR(D)D
    .locals 6
    .param p1, "Latitude"    # D

    .prologue
    .line 172
    iget-wide v0, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_es:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-direct {p0, p1, p2}, Lcom/chartcross/location/MxCoordConverter;->DENOM(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private SPHTMD(D)D
    .locals 6
    .param p1, "Latitude"    # D

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_ap:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_bp:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_cp:D

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_dp:D

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/chartcross/location/MxCoordConverter;->m_TM_ep:D

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    mul-double/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method private UTMToMGRS(IILjava/lang/String;DDDI)I
    .locals 22
    .param p1, "Ellipsoid"    # I
    .param p2, "Zone"    # I
    .param p3, "Letter0"    # Ljava/lang/String;
    .param p4, "Latitude"    # D
    .param p6, "Easting"    # D
    .param p8, "Northing"    # D
    .param p10, "Precision"    # I

    .prologue
    .line 1433
    const-string v16, "ABCDEFGHIJKLMN0PQRSTUVWXYZ"

    .line 1443
    .local v16, "LetterLookup":Ljava/lang/String;
    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    const/16 v20, 0x5

    sub-int v20, v20, p10

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 1444
    .local v4, "Divisor":D
    div-double v18, p6, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double p6, v18, v4

    .line 1445
    div-double v18, p8, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    mul-double p8, v18, v4

    .line 1447
    const-wide/16 v18, 0x0

    cmpg-double v18, p4, v18

    if-gtz v18, :cond_0

    const-wide v18, 0x416312d000000000L    # 1.0E7

    cmpl-double v18, p8, v18

    if-nez v18, :cond_0

    .line 1449
    const-wide/16 p4, 0x0

    .line 1450
    const-wide/16 p8, 0x0

    .line 1456
    :cond_0
    rem-int/lit8 v17, p2, 0x6

    .line 1458
    .local v17, "SetNumber":I
    if-nez v17, :cond_1

    .line 1460
    const/16 v17, 0x6

    .line 1464
    :cond_1
    const/16 v18, 0x5

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x6

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    const/16 v18, 0x3

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 1466
    :cond_2
    const/4 v3, 0x0

    .line 1473
    .local v3, "AaPattern":Z
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_3

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 1475
    :cond_3
    const/4 v15, 0x0

    .line 1476
    .local v15, "Letter2LowIndex":I
    const/4 v13, 0x7

    .line 1492
    .local v13, "Letter2HighIndex":I
    :goto_1
    if-eqz v3, :cond_10

    .line 1494
    rem-int/lit8 v18, v17, 0x2

    if-nez v18, :cond_f

    .line 1496
    const-wide v6, 0x4136e36000000000L    # 1500000.0

    .line 1515
    .local v6, "FalseNorthing":D
    :goto_2
    move-wide/from16 v10, p8

    .line 1516
    .local v10, "GridNorthing":D
    :goto_3
    const-wide v18, 0x413e848000000000L    # 2000000.0

    cmpl-double v18, v10, v18

    if-gez v18, :cond_12

    .line 1520
    sub-double/2addr v10, v6

    .line 1522
    const-wide/16 v18, 0x0

    cmpg-double v18, v10, v18

    if-gez v18, :cond_4

    .line 1524
    const-wide v18, 0x413e848000000000L    # 2000000.0

    add-double v10, v10, v18

    .line 1527
    :cond_4
    const-wide v18, 0x40f86a0000000000L    # 100000.0

    div-double v18, v10, v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v14, v0

    .line 1528
    .local v14, "Letter2Index":I
    const/16 v18, 0x7

    move v0, v14

    move/from16 v1, v18

    if-le v0, v1, :cond_5

    .line 1530
    add-int/lit8 v14, v14, 0x1

    .line 1533
    :cond_5
    const/16 v18, 0xd

    move v0, v14

    move/from16 v1, v18

    if-le v0, v1, :cond_6

    .line 1535
    add-int/lit8 v14, v14, 0x1

    .line 1538
    :cond_6
    move-wide/from16 v8, p6

    .line 1539
    .local v8, "GridEasting":D
    const-string v18, "V"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    const/16 v18, 0x1f

    move/from16 v0, p2

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    const-wide v18, 0x411e848000000000L    # 500000.0

    cmpl-double v18, v8, v18

    if-nez v18, :cond_7

    .line 1541
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v8, v8, v18

    .line 1544
    :cond_7
    const-wide v18, 0x40f86a0000000000L    # 100000.0

    div-double v18, v8, v18

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    add-int v12, v15, v18

    .line 1545
    .local v12, "Letter1Index":I
    const/16 v18, 0x9

    move v0, v15

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    const/16 v18, 0xd

    move v0, v12

    move/from16 v1, v18

    if-le v0, v1, :cond_8

    .line 1547
    add-int/lit8 v12, v12, 0x1

    .line 1550
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v18, v12, 0x1

    move-object/from16 v0, v16

    move v1, v12

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    .line 1551
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v18, v14, 0x1

    move-object/from16 v0, v16

    move v1, v14

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    .line 1554
    const-wide v18, 0x40f86a0000000000L    # 100000.0

    rem-double v18, v8, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 1555
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide/from16 v18, v0

    const-wide v20, 0x40f869f800000000L    # 99999.5

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_9

    .line 1557
    const-wide v18, 0x40f869f000000000L    # 99999.0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 1559
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide/from16 v18, v0

    div-double v18, v18, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 1561
    const-wide v18, 0x40f86a0000000000L    # 100000.0

    rem-double v18, p8, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 1562
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide/from16 v18, v0

    const-wide v20, 0x40f869f800000000L    # 99999.5

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_a

    .line 1564
    const-wide v18, 0x40f869f000000000L    # 99999.0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 1566
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide/from16 v18, v0

    div-double v18, v18, v4

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 1568
    const/16 v18, 0x0

    return v18

    .line 1470
    .end local v3    # "AaPattern":Z
    .end local v6    # "FalseNorthing":D
    .end local v8    # "GridEasting":D
    .end local v10    # "GridNorthing":D
    .end local v12    # "Letter1Index":I
    .end local v13    # "Letter2HighIndex":I
    .end local v14    # "Letter2Index":I
    .end local v15    # "Letter2LowIndex":I
    :cond_b
    const/4 v3, 0x1

    .restart local v3    # "AaPattern":Z
    goto/16 :goto_0

    .line 1478
    :cond_c
    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 1480
    :cond_d
    const/16 v15, 0x9

    .line 1481
    .restart local v15    # "Letter2LowIndex":I
    const/16 v13, 0x11

    .restart local v13    # "Letter2HighIndex":I
    goto/16 :goto_1

    .line 1485
    .end local v13    # "Letter2HighIndex":I
    .end local v15    # "Letter2LowIndex":I
    :cond_e
    const/16 v15, 0x12

    .line 1486
    .restart local v15    # "Letter2LowIndex":I
    const/16 v13, 0x19

    .restart local v13    # "Letter2HighIndex":I
    goto/16 :goto_1

    .line 1500
    :cond_f
    const-wide/16 v6, 0x0

    .restart local v6    # "FalseNorthing":D
    goto/16 :goto_2

    .line 1505
    .end local v6    # "FalseNorthing":D
    :cond_10
    rem-int/lit8 v18, v17, 0x2

    if-nez v18, :cond_11

    .line 1507
    const-wide v6, 0x411e848000000000L    # 500000.0

    .restart local v6    # "FalseNorthing":D
    goto/16 :goto_2

    .line 1511
    .end local v6    # "FalseNorthing":D
    :cond_11
    const-wide v6, 0x412e848000000000L    # 1000000.0

    .restart local v6    # "FalseNorthing":D
    goto/16 :goto_2

    .line 1518
    .restart local v10    # "GridNorthing":D
    :cond_12
    const-wide v18, 0x413e848000000000L    # 2000000.0

    sub-double v10, v10, v18

    goto/16 :goto_3
.end method

.method private UTMToUSNG(IILjava/lang/String;DDDI)I
    .locals 21
    .param p1, "Ellipsoid"    # I
    .param p2, "Zone"    # I
    .param p3, "Letter0"    # Ljava/lang/String;
    .param p4, "Latitude"    # D
    .param p6, "Easting"    # D
    .param p8, "Northing"    # D
    .param p10, "Precision"    # I

    .prologue
    .line 1585
    const-string v15, "ABCDEFGHIJKLMN0PQRSTUVWXYZ"

    .line 1595
    .local v15, "LetterLookup":Ljava/lang/String;
    const-wide/high16 v17, 0x4024000000000000L    # 10.0

    const/16 v19, 0x5

    sub-int v19, v19, p10

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    .line 1596
    .local v3, "Divisor":D
    div-double v17, p6, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double p6, v17, v3

    .line 1597
    div-double v17, p8, v3

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->round(D)J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double p8, v17, v3

    .line 1599
    const-wide/16 v17, 0x0

    cmpg-double v17, p4, v17

    if-gtz v17, :cond_0

    const-wide v17, 0x416312d000000000L    # 1.0E7

    cmpl-double v17, p8, v17

    if-nez v17, :cond_0

    .line 1601
    const-wide/16 p4, 0x0

    .line 1602
    const-wide/16 p8, 0x0

    .line 1608
    :cond_0
    rem-int/lit8 v16, p2, 0x6

    .line 1610
    .local v16, "SetNumber":I
    if-nez v16, :cond_1

    .line 1612
    const/16 v16, 0x6

    .line 1615
    :cond_1
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    .line 1617
    :cond_2
    const/4 v14, 0x0

    .line 1618
    .local v14, "Letter2LowIndex":I
    const/4 v12, 0x7

    .line 1634
    .local v12, "Letter2HighIndex":I
    :goto_0
    rem-int/lit8 v17, v16, 0x2

    if-nez v17, :cond_d

    .line 1636
    const-wide v5, 0x4136e36000000000L    # 1500000.0

    .line 1643
    .local v5, "FalseNorthing":D
    :goto_1
    move-wide/from16 v9, p8

    .line 1644
    .local v9, "GridNorthing":D
    :goto_2
    const-wide v17, 0x413e848000000000L    # 2000000.0

    cmpl-double v17, v9, v17

    if-gez v17, :cond_e

    .line 1648
    sub-double/2addr v9, v5

    .line 1650
    const-wide/16 v17, 0x0

    cmpg-double v17, v9, v17

    if-gez v17, :cond_3

    .line 1652
    const-wide v17, 0x413e848000000000L    # 2000000.0

    add-double v9, v9, v17

    .line 1655
    :cond_3
    const-wide v17, 0x40f86a0000000000L    # 100000.0

    div-double v17, v9, v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move v13, v0

    .line 1656
    .local v13, "Letter2Index":I
    const/16 v17, 0x7

    move v0, v13

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 1658
    add-int/lit8 v13, v13, 0x1

    .line 1661
    :cond_4
    const/16 v17, 0xd

    move v0, v13

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 1663
    add-int/lit8 v13, v13, 0x1

    .line 1666
    :cond_5
    move-wide/from16 v7, p6

    .line 1667
    .local v7, "GridEasting":D
    const-string v17, "V"

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_6

    const/16 v17, 0x1f

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    const-wide v17, 0x411e848000000000L    # 500000.0

    cmpl-double v17, v7, v17

    if-nez v17, :cond_6

    .line 1669
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    sub-double v7, v7, v17

    .line 1672
    :cond_6
    const-wide v17, 0x40f86a0000000000L    # 100000.0

    div-double v17, v7, v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    add-int v11, v14, v17

    .line 1673
    .local v11, "Letter1Index":I
    const/16 v17, 0x9

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    const/16 v17, 0xd

    move v0, v11

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 1675
    add-int/lit8 v11, v11, 0x1

    .line 1678
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v17, v11, 0x1

    move-object v0, v15

    move v1, v11

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    .line 1679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v17, v13, 0x1

    move-object v0, v15

    move v1, v13

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    .line 1682
    const-wide v17, 0x40f86a0000000000L    # 100000.0

    rem-double v17, v7, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 1683
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide/from16 v17, v0

    const-wide v19, 0x40f869f800000000L    # 99999.5

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_8

    .line 1685
    const-wide v17, 0x40f869f000000000L    # 99999.0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 1687
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide/from16 v17, v0

    div-double v17, v17, v3

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 1689
    const-wide v17, 0x40f86a0000000000L    # 100000.0

    rem-double v17, p8, v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 1690
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide/from16 v17, v0

    const-wide v19, 0x40f869f800000000L    # 99999.5

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_9

    .line 1692
    const-wide v17, 0x40f869f000000000L    # 99999.0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 1694
    :cond_9
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide/from16 v17, v0

    div-double v17, v17, v3

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 1696
    const/16 v17, 0x0

    return v17

    .line 1620
    .end local v5    # "FalseNorthing":D
    .end local v7    # "GridEasting":D
    .end local v9    # "GridNorthing":D
    .end local v11    # "Letter1Index":I
    .end local v12    # "Letter2HighIndex":I
    .end local v13    # "Letter2Index":I
    .end local v14    # "Letter2LowIndex":I
    :cond_a
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_b

    const/16 v17, 0x5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    .line 1622
    :cond_b
    const/16 v14, 0x9

    .line 1623
    .restart local v14    # "Letter2LowIndex":I
    const/16 v12, 0x11

    .restart local v12    # "Letter2HighIndex":I
    goto/16 :goto_0

    .line 1627
    .end local v12    # "Letter2HighIndex":I
    .end local v14    # "Letter2LowIndex":I
    :cond_c
    const/16 v14, 0x12

    .line 1628
    .restart local v14    # "Letter2LowIndex":I
    const/16 v12, 0x19

    .restart local v12    # "Letter2HighIndex":I
    goto/16 :goto_0

    .line 1640
    :cond_d
    const-wide/16 v5, 0x0

    .restart local v5    # "FalseNorthing":D
    goto/16 :goto_1

    .line 1646
    .restart local v9    # "GridNorthing":D
    :cond_e
    const-wide v17, 0x413e848000000000L    # 2000000.0

    sub-double v9, v9, v17

    goto/16 :goto_2
.end method

.method private ValidDatum(IDD)Z
    .locals 2
    .param p1, "DatumIndex"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D

    .prologue
    .line 548
    sget-object v0, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/chartcross/location/MxDatum;->m_SouthLatitude:D

    cmpg-double v0, v0, p2

    if-gtz v0, :cond_0

    .line 549
    sget-object v0, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/chartcross/location/MxDatum;->m_NorthLatitude:D

    cmpg-double v0, p2, v0

    if-gtz v0, :cond_0

    .line 550
    sget-object v0, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/chartcross/location/MxDatum;->m_WestLongitude:D

    cmpg-double v0, v0, p4

    if-gtz v0, :cond_0

    .line 551
    sget-object v0, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v0, v0, p1

    iget-wide v0, v0, Lcom/chartcross/location/MxDatum;->m_EastLongitude:D

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_0

    .line 553
    const/4 v0, 0x1

    .line 557
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private WGS84ToOSGB36GeodeticShift(DDD)V
    .locals 70
    .param p1, "WGS84Latitude"    # D
    .param p3, "WGS84Longitude"    # D
    .param p5, "WGS84Height"    # D

    .prologue
    .line 1701
    const-wide v6, 0x404ca5dc1a635dbcL    # 57.2957795129

    .line 1702
    .local v6, "RR":D
    div-double v20, p1, v6

    .line 1703
    .local v20, "latR":D
    div-double v22, p3, v6

    .line 1708
    .local v22, "lonR":D
    sget-object v64, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    const/16 v65, 0x16

    aget-object v64, v64, v65

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_EquatorialRadius:D

    move-wide v8, v0

    .line 1709
    .local v8, "a":D
    sget-object v64, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    const/16 v65, 0x16

    aget-object v64, v64, v65

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_PolarRadius:D

    move-wide v10, v0

    .line 1710
    .local v10, "b":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v44

    .local v44, "sinPhi":D
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    .line 1711
    .local v14, "cosPhi":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v42

    .local v42, "sinLambda":D
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    .line 1712
    .local v12, "cosLambda":D
    move-wide/from16 v4, p5

    .line 1713
    .local v4, "H":D
    mul-double v64, v8, v8

    mul-double v66, v10, v10

    sub-double v64, v64, v66

    mul-double v66, v8, v8

    div-double v16, v64, v66

    .line 1714
    .local v16, "eSq":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    mul-double v66, v16, v44

    mul-double v66, v66, v44

    sub-double v64, v64, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v64

    div-double v24, v8, v64

    .line 1715
    .local v24, "nu":D
    add-double v64, v24, v4

    mul-double v64, v64, v14

    mul-double v52, v64, v12

    .line 1716
    .local v52, "x1":D
    add-double v64, v24, v4

    mul-double v64, v64, v14

    mul-double v56, v64, v42

    .line 1717
    .local v56, "y1":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    sub-double v64, v64, v16

    mul-double v64, v64, v24

    add-double v64, v64, v4

    mul-double v60, v64, v44

    .line 1722
    .local v60, "z1":D
    const-wide v46, -0x3f8418d4fdf3b646L    # -446.448

    .line 1723
    .local v46, "tx":D
    const-wide v48, 0x405f4a0c49ba5e35L    # 125.157

    .line 1724
    .local v48, "ty":D
    const-wide v50, -0x3f7f0f851eb851ecL    # -542.06

    .line 1725
    .local v50, "tz":D
    const-wide v34, -0x415790e4ed860e9fL    # -7.281901490265231E-7

    .line 1726
    .local v34, "rx":D
    const-wide v36, -0x414be8d20c96f635L    # -1.1974897923405538E-6

    .line 1727
    .local v36, "ry":D
    const-wide v38, -0x412ee0530e8377a1L    # -4.082616008623402E-6

    .line 1728
    .local v38, "rz":D
    const-wide v40, 0x3ff000157c14d8bdL    # 1.0000204894

    .line 1729
    .local v40, "s1":D
    mul-double v64, v52, v40

    add-double v64, v64, v46

    mul-double v66, v56, v38

    sub-double v64, v64, v66

    mul-double v66, v60, v36

    add-double v54, v64, v66

    .line 1730
    .local v54, "x2":D
    mul-double v64, v52, v38

    add-double v64, v64, v48

    mul-double v66, v56, v40

    add-double v64, v64, v66

    mul-double v66, v60, v34

    sub-double v58, v64, v66

    .line 1731
    .local v58, "y2":D
    mul-double v64, v52, v36

    sub-double v64, v50, v64

    mul-double v66, v56, v34

    add-double v64, v64, v66

    mul-double v66, v60, v40

    add-double v62, v64, v66

    .line 1736
    .local v62, "z2":D
    sget-object v64, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    const/16 v65, 0x0

    aget-object v64, v64, v65

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_EquatorialRadius:D

    move-wide v8, v0

    .line 1737
    sget-object v64, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    const/16 v65, 0x0

    aget-object v64, v64, v65

    move-object/from16 v0, v64

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_PolarRadius:D

    move-wide v10, v0

    .line 1738
    const-wide/high16 v64, 0x4010000000000000L    # 4.0

    div-double v32, v64, v8

    .line 1740
    .local v32, "precision":D
    mul-double v64, v8, v8

    mul-double v66, v10, v10

    sub-double v64, v64, v66

    mul-double v66, v8, v8

    div-double v16, v64, v66

    .line 1741
    mul-double v64, v54, v54

    mul-double v66, v58, v58

    add-double v64, v64, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 1742
    .local v26, "p":D
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    sub-double v64, v64, v16

    mul-double v64, v64, v26

    invoke-static/range {v62 .. v65}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v28

    .local v28, "phi":D
    const-wide v30, 0x401921fb54442d18L    # 6.283185307179586

    .line 1743
    .local v30, "phiP":D
    :goto_0
    sub-double v64, v28, v30

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->abs(D)D

    move-result-wide v64

    cmpl-double v64, v64, v32

    if-gtz v64, :cond_0

    .line 1749
    move-wide/from16 v0, v58

    move-wide/from16 v2, v54

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v18

    .line 1750
    .local v18, "lambda":D
    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->cos(D)D

    move-result-wide v64

    div-double v64, v26, v64

    sub-double v4, v64, v24

    .line 1752
    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLatitudeR:D

    .line 1753
    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    .line 1754
    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedHeight:D

    .line 1755
    return-void

    .line 1745
    .end local v18    # "lambda":D
    :cond_0
    const-wide/high16 v64, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    mul-double v66, v66, v16

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v68

    mul-double v66, v66, v68

    sub-double v64, v64, v66

    invoke-static/range {v64 .. v65}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v64

    div-double v24, v8, v64

    .line 1746
    move-wide/from16 v30, v28

    .line 1747
    mul-double v64, v16, v24

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v66

    mul-double v64, v64, v66

    add-double v64, v64, v62

    move-wide/from16 v0, v64

    move-wide/from16 v2, v26

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v28

    goto :goto_0
.end method

.method private static final cub(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 164
    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private static final pent(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 166
    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private static final quad(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 165
    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private static final sex(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 167
    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method private static final sqr(D)D
    .locals 2
    .param p0, "a"    # D

    .prologue
    .line 163
    mul-double v0, p0, p0

    return-wide v0
.end method


# virtual methods
.method GeodeticShiftFromWGS84(IDDD)I
    .locals 30
    .param p1, "Index"    # I
    .param p2, "WGS84Latitude"    # D
    .param p4, "WGS84Longitude"    # D
    .param p6, "WGS84Height"    # D

    .prologue
    .line 1878
    const-wide v24, 0x3ff9101c0da1da7aL    # 1.5664330036649106

    .line 1881
    .local v24, "MOLODENSKY_MAX":D
    if-ltz p1, :cond_0

    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v0, p1

    move v1, v3

    if-le v0, v1, :cond_1

    .line 1883
    :cond_0
    const/4 v3, 0x1

    .line 1958
    :goto_0
    return v3

    .line 1886
    :cond_1
    const-wide v18, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v3, p2, v18

    if-ltz v3, :cond_2

    const-wide v18, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v3, p2, v18

    if-lez v3, :cond_3

    .line 1888
    :cond_2
    const/4 v3, 0x1

    goto :goto_0

    .line 1891
    :cond_3
    const-wide v18, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v3, p4, v18

    if-ltz v3, :cond_4

    const-wide v18, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v3, p4, v18

    if-lez v3, :cond_5

    .line 1893
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 1896
    :cond_5
    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/chartcross/location/MxDatum;->m_Type:I

    packed-switch v3, :pswitch_data_0

    .line 1958
    :goto_1
    :pswitch_0
    const/4 v3, 0x0

    goto :goto_0

    .line 1903
    :pswitch_1
    move-wide/from16 v0, p2

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLatitudeR:D

    .line 1904
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    .line 1905
    move-wide/from16 v0, p6

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedHeight:D

    goto :goto_1

    .line 1910
    :pswitch_2
    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    sget-object v4, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    aget-object v3, v3, v4

    move-object v0, v3

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_EquatorialRadius:D

    move-wide/from16 v26, v0

    .line 1911
    .local v26, "a":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    sget-object v4, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    aget-object v3, v3, v4

    move-object v0, v3

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_InverseFlattening:D

    move-wide/from16 v20, v0

    div-double v28, v18, v20

    .line 1913
    .local v28, "f":D
    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/chartcross/location/MxDatum;->m_Type:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    move-wide/from16 v0, v24

    neg-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v3, p2, v18

    if-ltz v3, :cond_6

    cmpl-double v3, p2, v24

    if-lez v3, :cond_7

    .line 1925
    :cond_6
    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    sget-object v4, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/chartcross/location/MxEllipsoid;->m_EquatorialRadius:D

    .line 1926
    .local v4, "WGS84_a":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    sget-object v4, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    .end local v4    # "WGS84_a":D
    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    aget-object v3, v3, v4

    move-object v0, v3

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_InverseFlattening:D

    move-wide/from16 v20, v0

    div-double v8, v18, v20

    .local v8, "WGS84_f":D
    goto :goto_1

    .line 1944
    .end local v8    # "WGS84_f":D
    :cond_7
    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    sget-object v4, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget v4, v4, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    aget-object v3, v3, v4

    iget-wide v4, v3, Lcom/chartcross/location/MxEllipsoid;->m_EquatorialRadius:D

    .line 1945
    .restart local v4    # "WGS84_a":D
    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    sget-object v6, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    aget-object v3, v3, v6

    move-object v0, v3

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_InverseFlattening:D

    move-wide/from16 v20, v0

    div-double v8, v18, v20

    .line 1947
    .restart local v8    # "WGS84_f":D
    sub-double v6, v26, v4

    .line 1948
    .local v6, "da":D
    sub-double v10, v28, v8

    .line 1949
    .local v10, "df":D
    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v3, v3, p1

    move-object v0, v3

    iget-wide v0, v0, Lcom/chartcross/location/MxDatum;->m_DeltaX:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide v12, v0

    .line 1950
    .local v12, "dx":D
    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v3, v3, p1

    move-object v0, v3

    iget-wide v0, v0, Lcom/chartcross/location/MxDatum;->m_DeltaY:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide v14, v0

    .line 1951
    .local v14, "dy":D
    sget-object v3, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v3, v3, p1

    move-object v0, v3

    iget-wide v0, v0, Lcom/chartcross/location/MxDatum;->m_DeltaZ:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v16, v0

    .local v16, "dz":D
    move-object/from16 v3, p0

    move-wide/from16 v18, p2

    move-wide/from16 v20, p4

    move-wide/from16 v22, p6

    .line 1953
    invoke-virtual/range {v3 .. v23}, Lcom/chartcross/location/MxCoordConverter;->MolodenskyShift(DDDDDDDDDD)V

    goto/16 :goto_1

    .line 1896
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public LLToCH1903(DD)I
    .locals 18
    .param p1, "Latitude"    # D
    .param p3, "Longitude"    # D

    .prologue
    .line 575
    invoke-direct/range {p0 .. p2}, Lcom/chartcross/location/MxCoordConverter;->DECtoSEX(D)D

    move-result-wide v4

    .line 576
    .local v4, "lat":D
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-direct {v0, v1, v2}, Lcom/chartcross/location/MxCoordConverter;->DECtoSEX(D)D

    move-result-wide v8

    .line 581
    .local v8, "lng":D
    move-object/from16 v0, p0

    move-wide v1, v4

    invoke-direct {v0, v1, v2}, Lcom/chartcross/location/MxCoordConverter;->DEGtoSEC(D)D

    move-result-wide v4

    .line 582
    move-object/from16 v0, p0

    move-wide v1, v8

    invoke-direct {v0, v1, v2}, Lcom/chartcross/location/MxCoordConverter;->DEGtoSEC(D)D

    move-result-wide v8

    .line 587
    const-wide v12, 0x4104a22547ae147bL    # 169028.66

    sub-double v12, v4, v12

    const-wide v14, 0x40c3880000000000L    # 10000.0

    div-double v6, v12, v14

    .line 588
    .local v6, "lat_aux":D
    const-wide v12, 0x40da27a000000000L    # 26782.5

    sub-double v12, v8, v12

    const-wide v14, 0x40c3880000000000L    # 10000.0

    div-double v10, v12, v14

    .line 595
    .local v10, "lng_aux":D
    const-wide v12, 0x41225010bd70a3d7L    # 600072.37

    .line 596
    const-wide v14, 0x4109cfff70a3d70aL    # 211455.93

    mul-double/2addr v14, v10

    add-double/2addr v12, v14

    .line 597
    const-wide v14, 0x40c55d4147ae147bL    # 10938.51

    mul-double/2addr v14, v10

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    .line 598
    const-wide v14, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v14, v10

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide v0, v6

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    .line 599
    const-wide v14, 0x4046451eb851eb85L    # 44.54

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    move-wide v0, v10

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    .line 595
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 605
    const-wide v12, 0x41086e988f5c28f6L    # 200147.07

    .line 606
    const-wide v14, 0x4112d91fcccccccdL    # 308807.95

    mul-double/2addr v14, v6

    add-double/2addr v12, v14

    .line 607
    const-wide v14, 0x40ad428000000000L    # 3745.25

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide v0, v10

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 608
    const-wide v14, 0x40532851eb851eb8L    # 76.63

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide v0, v6

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 609
    const-wide v14, 0x406851eb851eb852L    # 194.56

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    move-wide v0, v10

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    mul-double/2addr v14, v6

    sub-double/2addr v12, v14

    .line 610
    const-wide v14, 0x405df28f5c28f5c3L    # 119.79

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    move-wide v0, v6

    move-wide/from16 v2, v16

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 605
    move-wide v0, v12

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 612
    const/4 v12, 0x0

    return v12
.end method

.method public LLToMGRS(IDDI)I
    .locals 17
    .param p1, "DatumIndex"    # I
    .param p2, "Latitude"    # D
    .param p4, "Longitude"    # D
    .param p6, "Precision"    # I

    .prologue
    .line 1281
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p2, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_1

    .line 1283
    :cond_0
    const/4 v2, 0x1

    .line 1356
    :goto_0
    return v2

    .line 1289
    :cond_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p4, v2

    if-ltz v2, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p4, v2

    if-lez v2, :cond_3

    .line 1291
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1294
    :cond_3
    if-ltz p6, :cond_4

    const/4 v2, 0x5

    move/from16 v0, p6

    move v1, v2

    if-le v0, v1, :cond_5

    .line 1296
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 1299
    :cond_5
    if-ltz p1, :cond_6

    sget-object v2, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v0, p1

    move v1, v2

    if-le v0, v1, :cond_7

    .line 1301
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 1304
    :cond_7
    const-wide/high16 v2, -0x3fac000000000000L    # -80.0

    cmpg-double v2, p2, v2

    if-ltz v2, :cond_8

    const-wide/high16 v2, 0x4055000000000000L    # 84.0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_9

    .line 1331
    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    .line 1335
    :cond_9
    invoke-virtual/range {p0 .. p5}, Lcom/chartcross/location/MxCoordConverter;->LLToUTM(IDD)I

    move-result v2

    if-lez v2, :cond_a

    .line 1337
    const/4 v2, 0x1

    goto :goto_0

    .line 1340
    :cond_a
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v4, 0x5

    sub-int v4, v4, p6

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    .line 1341
    .local v13, "Divisor":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide v2, v0

    div-double/2addr v2, v13

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    mul-double v15, v2, v13

    .line 1346
    .local v15, "RoundedEasting":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v2, v0

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_c

    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    cmpl-double v2, p2, v2

    if-ltz v2, :cond_c

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_c

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v2, p4, v2

    if-gez v2, :cond_b

    const-wide v2, 0x411e848000000000L    # 500000.0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_c

    .line 1351
    :cond_b
    const/16 v8, 0x20

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/chartcross/location/MxCoordConverter;->LLToUTM(IDDI)I

    move-result v2

    if-lez v2, :cond_c

    .line 1353
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1356
    :cond_c
    sget-object v2, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v2, v2, p1

    iget v3, v2, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide v10, v0

    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/chartcross/location/MxCoordConverter;->UTMToMGRS(IILjava/lang/String;DDDI)I

    move-result v2

    goto/16 :goto_0
.end method

.method public LLToMaidenhead(DD)Ljava/lang/String;
    .locals 8
    .param p1, "Latitude"    # D
    .param p3, "Longitude"    # D

    .prologue
    .line 617
    const/4 v2, 0x6

    new-array v0, v2, [B

    .line 618
    .local v0, "Loc":[B
    const/4 v2, 0x0

    const-wide v3, 0x4066800000000000L    # 180.0

    add-double/2addr v3, p3

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 619
    const/4 v2, 0x1

    const-wide v3, 0x4056800000000000L    # 90.0

    add-double/2addr v3, p1

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x41

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 620
    const/4 v2, 0x2

    const-wide v3, 0x4066800000000000L    # 180.0

    add-double/2addr v3, p3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    double-to-int v3, v3

    const-wide v4, 0x4066800000000000L    # 180.0

    add-double/2addr v4, p3

    const-wide/high16 v6, 0x4034000000000000L    # 20.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 621
    const/4 v2, 0x3

    const-wide v3, 0x4056800000000000L    # 90.0

    add-double/2addr v3, p1

    double-to-int v3, v3

    const-wide v4, 0x4056800000000000L    # 90.0

    add-double/2addr v4, p1

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    double-to-int v4, v4

    mul-int/lit8 v4, v4, 0xa

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 622
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v2, p3

    const-wide v4, 0x4066800000000000L    # 180.0

    add-double/2addr v4, p3

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    add-int/lit8 v1, v2, 0x61

    .line 623
    .local v1, "tLong":I
    const/4 v2, 0x5

    const-wide v3, 0x4056800000000000L    # 90.0

    add-double/2addr v3, p1

    const-wide v5, 0x4056800000000000L    # 90.0

    add-double/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4004000000000000L    # 2.5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v3, v3, 0x61

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 628
    const-wide v2, 0x4066800000000000L    # 180.0

    add-double/2addr v2, p3

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    rem-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_0

    .line 630
    add-int/lit8 v1, v1, 0xc

    .line 633
    :cond_0
    const/4 v2, 0x4

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    .line 634
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    return-object v2
.end method

.method public LLToOSGB(DD)I
    .locals 96
    .param p1, "Latitude"    # D
    .param p3, "Longitude"    # D

    .prologue
    .line 710
    const/4 v4, 0x4

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, p1

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double/2addr v5, v7

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v7, v7, p3

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v9

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/chartcross/location/MxCoordConverter;->ValidDatum(IDD)Z

    move-result v3

    if-nez v3, :cond_0

    .line 712
    const/4 v3, 0x1

    .line 774
    :goto_0
    return v3

    .line 715
    :cond_0
    const-wide v36, 0x404ca5dc1a635dbcL    # 57.2957795129

    .line 716
    .local v36, "RR":D
    const-wide v42, 0x41585416d9581062L    # 6377563.396

    .line 717
    .local v42, "a":D
    const-wide v46, 0x41583f483a3d70a4L    # 6356256.91

    .line 718
    .local v46, "b":D
    const-wide v12, 0x3feffcbbce5fba74L    # 0.9996012717

    .line 719
    .local v12, "F0":D
    mul-double v44, v42, v12

    .line 720
    .local v44, "af0":D
    mul-double v48, v46, v12

    .line 721
    .local v48, "bf0":D
    const-wide v3, 0x4048800000000000L    # 49.0

    div-double v74, v3, v36

    .line 722
    .local v74, "lat0":D
    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    div-double v78, v3, v36

    .line 723
    .local v78, "lon0":D
    const-wide v34, -0x3f07960000000000L    # -100000.0

    .line 724
    .local v34, "N0":D
    const-wide v10, 0x41186a0000000000L    # 400000.0

    .line 725
    .local v10, "E0":D
    mul-double v3, v44, v44

    mul-double v5, v48, v48

    sub-double/2addr v3, v5

    mul-double v5, v44, v44

    div-double v68, v3, v5

    .line 726
    .local v68, "e2":D
    sub-double v3, v44, v48

    add-double v5, v44, v48

    div-double v80, v3, v5

    .line 727
    .local v80, "n":D
    mul-double v82, v80, v80

    .line 728
    .local v82, "n2":D
    mul-double v3, v80, v80

    mul-double v84, v3, v80

    .line 732
    .local v84, "n3":D
    const-wide/16 v8, 0x0

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v3 .. v9}, Lcom/chartcross/location/MxCoordConverter;->WGS84ToOSGB36GeodeticShift(DDD)V

    .line 733
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLatitudeR:D

    move-wide/from16 v72, v0

    .line 734
    .local v72, "lat":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    move-wide/from16 v76, v0

    .line 736
    .local v76, "lon":D
    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->cos(D)D

    move-result-wide v54

    .line 737
    .local v54, "cosLat":D
    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->sin(D)D

    move-result-wide v90

    .line 738
    .local v90, "sinLat":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    mul-double v5, v68, v90

    mul-double v5, v5, v90

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    div-double v86, v44, v3

    .line 739
    .local v86, "nu":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v3, v3, v68

    mul-double v3, v3, v86

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    mul-double v7, v68, v90

    mul-double v7, v7, v90

    sub-double/2addr v5, v7

    div-double v88, v3, v5

    .line 740
    .local v88, "rho":D
    div-double v3, v86, v88

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double v70, v3, v5

    .line 745
    .local v70, "eta2":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double v3, v3, v80

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    mul-double v5, v5, v82

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    mul-double v5, v5, v84

    add-double/2addr v3, v5

    sub-double v5, v72, v74

    mul-double v26, v3, v5

    .line 746
    .local v26, "Ma":D
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    mul-double v3, v3, v80

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double v5, v5, v80

    mul-double v5, v5, v80

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4005000000000000L    # 2.625

    mul-double v5, v5, v84

    add-double/2addr v3, v5

    sub-double v5, v72, v74

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double v5, v72, v74

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v28, v3, v5

    .line 747
    .local v28, "Mb":D
    const-wide/high16 v3, 0x3ffe000000000000L    # 1.875

    mul-double v3, v3, v82

    const-wide/high16 v5, 0x3ffe000000000000L    # 1.875

    mul-double v5, v5, v84

    add-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    sub-double v7, v72, v74

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    add-double v7, v72, v74

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v30, v3, v5

    .line 748
    .local v30, "Mc":D
    const-wide v3, 0x3ff7555555555555L    # 1.4583333333333333

    mul-double v3, v3, v84

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    sub-double v7, v72, v74

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    add-double v7, v72, v74

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double v32, v3, v5

    .line 749
    .local v32, "Md":D
    mul-double v3, v46, v12

    sub-double v5, v26, v28

    add-double v5, v5, v30

    sub-double v5, v5, v32

    mul-double v24, v3, v5

    .line 752
    .local v24, "M":D
    mul-double v3, v54, v54

    mul-double v50, v3, v54

    .line 753
    .local v50, "cos3lat":D
    mul-double v3, v50, v54

    mul-double v52, v3, v54

    .line 754
    .local v52, "cos5lat":D
    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    invoke-static/range {v72 .. v73}, Ljava/lang/Math;->tan(D)D

    move-result-wide v5

    mul-double v92, v3, v5

    .line 755
    .local v92, "tan2lat":D
    mul-double v94, v92, v92

    .line 757
    .local v94, "tan4lat":D
    add-double v14, v24, v34

    .line 758
    .local v14, "I":D
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v3, v86, v3

    mul-double v3, v3, v90

    mul-double v16, v3, v54

    .line 759
    .local v16, "II":D
    const-wide/high16 v3, 0x4038000000000000L    # 24.0

    div-double v3, v86, v3

    mul-double v3, v3, v90

    mul-double v3, v3, v50

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    sub-double v5, v5, v92

    const-wide/high16 v7, 0x4022000000000000L    # 9.0

    mul-double v7, v7, v70

    add-double/2addr v5, v7

    mul-double v18, v3, v5

    .line 760
    .local v18, "III":D
    const-wide v3, 0x4086800000000000L    # 720.0

    div-double v3, v86, v3

    mul-double v3, v3, v90

    mul-double v3, v3, v52

    const-wide v5, 0x404e800000000000L    # 61.0

    const-wide/high16 v7, 0x404d000000000000L    # 58.0

    mul-double v7, v7, v92

    sub-double/2addr v5, v7

    add-double v5, v5, v94

    mul-double v20, v3, v5

    .line 761
    .local v20, "IIIA":D
    mul-double v22, v86, v54

    .line 762
    .local v22, "IV":D
    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    div-double v3, v86, v3

    mul-double v3, v3, v50

    div-double v5, v86, v88

    sub-double v5, v5, v92

    mul-double v38, v3, v5

    .line 763
    .local v38, "V":D
    const-wide/high16 v3, 0x405e000000000000L    # 120.0

    div-double v3, v86, v3

    mul-double v3, v3, v52

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    const-wide/high16 v7, 0x4032000000000000L    # 18.0

    mul-double v7, v7, v92

    sub-double/2addr v5, v7

    add-double v5, v5, v94

    const-wide/high16 v7, 0x402c000000000000L    # 14.0

    mul-double v7, v7, v70

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x404d000000000000L    # 58.0

    mul-double v7, v7, v92

    mul-double v7, v7, v70

    sub-double/2addr v5, v7

    mul-double v40, v3, v5

    .line 765
    .local v40, "VI":D
    sub-double v56, v76, v78

    .line 766
    .local v56, "dLon":D
    mul-double v58, v56, v56

    .line 767
    .local v58, "dLon2":D
    mul-double v60, v58, v56

    .line 768
    .local v60, "dLon3":D
    mul-double v62, v60, v56

    .line 769
    .local v62, "dLon4":D
    mul-double v64, v62, v56

    .line 770
    .local v64, "dLon5":D
    mul-double v66, v64, v56

    .line 772
    .local v66, "dLon6":D
    mul-double v3, v16, v58

    add-double/2addr v3, v14

    mul-double v5, v18, v62

    add-double/2addr v3, v5

    mul-double v5, v20, v66

    add-double/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 773
    mul-double v3, v22, v56

    add-double/2addr v3, v10

    mul-double v5, v38, v60

    add-double/2addr v3, v5

    mul-double v5, v40, v64

    add-double/2addr v3, v5

    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 774
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method public LLToTM(DD)I
    .locals 73
    .param p1, "Latitude"    # D
    .param p3, "Longitude"    # D

    .prologue
    .line 822
    const/4 v4, 0x0

    .line 829
    .local v4, "Error_Code":I
    const-wide v67, -0x4006debbae8f1de5L    # -1.570621793869697

    cmpg-double v67, p1, v67

    if-ltz v67, :cond_0

    const-wide v67, 0x3ff921445170e21bL    # 1.570621793869697

    cmpl-double v67, p1, v67

    if-lez v67, :cond_1

    .line 831
    :cond_0
    const/16 v67, 0x1

    .line 955
    :goto_0
    return v67

    .line 834
    :cond_1
    const-wide v67, 0x400921fb54442d18L    # Math.PI

    cmpl-double v67, p3, v67

    if-lez v67, :cond_2

    .line 836
    const-wide v67, 0x401921fb54442d18L    # 6.283185307179586

    sub-double p3, p3, v67

    .line 839
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Long:D

    move-wide/from16 v67, v0

    const-wide v69, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v67, v67, v69

    cmpg-double v67, p3, v67

    if-ltz v67, :cond_3

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Long:D

    move-wide/from16 v67, v0

    const-wide v69, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v67, v67, v69

    cmpl-double v67, p3, v67

    if-lez v67, :cond_7

    .line 841
    :cond_3
    const-wide/16 v67, 0x0

    cmpg-double v67, p3, v67

    if-gez v67, :cond_5

    .line 843
    const-wide v67, 0x401921fb54442d18L    # 6.283185307179586

    add-double v59, p3, v67

    .line 849
    .local v59, "temp_Long":D
    :goto_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Long:D

    move-wide/from16 v67, v0

    const-wide/16 v69, 0x0

    cmpg-double v67, v67, v69

    if-gez v67, :cond_6

    .line 851
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Long:D

    move-wide/from16 v67, v0

    const-wide v69, 0x401921fb54442d18L    # 6.283185307179586

    add-double v61, v67, v69

    .line 857
    .local v61, "temp_Origin":D
    :goto_2
    const-wide v67, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v67, v61, v67

    cmpg-double v67, v59, v67

    if-ltz v67, :cond_4

    const-wide v67, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double v67, v67, v61

    cmpl-double v67, v59, v67

    if-lez v67, :cond_7

    .line 859
    :cond_4
    const/16 v67, 0x1

    goto :goto_0

    .line 847
    .end local v59    # "temp_Long":D
    .end local v61    # "temp_Origin":D
    :cond_5
    move-wide/from16 v59, p3

    .restart local v59    # "temp_Long":D
    goto :goto_1

    .line 855
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Long:D

    move-wide/from16 v61, v0

    .restart local v61    # "temp_Origin":D
    goto :goto_2

    .line 866
    .end local v59    # "temp_Long":D
    .end local v61    # "temp_Origin":D
    :cond_7
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Long:D

    move-wide/from16 v67, v0

    sub-double v15, p3, v67

    .line 871
    .local v15, "dlam":D
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v67

    const-wide v69, 0x3fc41b2f769cf0e0L    # 0.15707963267948966

    cmpl-double v67, v67, v69

    if-lez v67, :cond_8

    .line 873
    const/16 v67, 0x1

    goto/16 :goto_0

    .line 876
    :cond_8
    const-wide v67, 0x400921fb54442d18L    # Math.PI

    cmpl-double v67, v15, v67

    if-lez v67, :cond_9

    .line 878
    const-wide v67, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v15, v15, v67

    .line 880
    :cond_9
    const-wide v67, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v67, v15, v67

    if-gez v67, :cond_a

    .line 882
    const-wide v67, 0x401921fb54442d18L    # 6.283185307179586

    add-double v15, v15, v67

    .line 884
    :cond_a
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v67

    const-wide v69, 0x3deb7cdfd9d7bdbbL    # 2.0E-10

    cmpg-double v67, v67, v69

    if-gez v67, :cond_b

    .line 886
    const-wide/16 v15, 0x0

    .line 889
    :cond_b
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    .line 890
    .local v25, "s":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 891
    .local v5, "c":D
    mul-double v7, v5, v5

    .line 892
    .local v7, "c2":D
    mul-double v9, v7, v5

    .line 893
    .local v9, "c3":D
    mul-double v11, v9, v7

    .line 894
    .local v11, "c5":D
    mul-double v13, v11, v7

    .line 895
    .local v13, "c7":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v29

    .line 896
    .local v29, "t":D
    mul-double v49, v29, v29

    .line 897
    .local v49, "tan2":D
    mul-double v51, v49, v29

    .line 898
    .local v51, "tan3":D
    mul-double v53, v51, v29

    .line 899
    .local v53, "tan4":D
    mul-double v55, v53, v29

    .line 900
    .local v55, "tan5":D
    mul-double v57, v55, v29

    .line 901
    .local v57, "tan6":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_ebs:D

    move-wide/from16 v67, v0

    mul-double v17, v67, v7

    .line 902
    .local v17, "eta":D
    mul-double v19, v17, v17

    .line 903
    .local v19, "eta2":D
    mul-double v21, v19, v17

    .line 904
    .local v21, "eta3":D
    mul-double v23, v21, v17

    .line 909
    .local v23, "eta4":D
    invoke-direct/range {p0 .. p2}, Lcom/chartcross/location/MxCoordConverter;->SPHSN(D)D

    move-result-wide v27

    .line 914
    .local v27, "sn":D
    invoke-direct/range {p0 .. p2}, Lcom/chartcross/location/MxCoordConverter;->SPHTMD(D)D

    move-result-wide v63

    .line 919
    .local v63, "tmd":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Lat:D

    move-wide/from16 v67, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v67

    invoke-direct {v0, v1, v2}, Lcom/chartcross/location/MxCoordConverter;->SPHTMD(D)D

    move-result-wide v65

    .line 924
    .local v65, "tmdo":D
    sub-double v67, v63, v65

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v31, v67, v69

    .line 925
    .local v31, "t1":D
    mul-double v67, v27, v25

    mul-double v67, v67, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v67, v67, v69

    const-wide/high16 v69, 0x4000000000000000L    # 2.0

    div-double v33, v67, v69

    .line 926
    .local v33, "t2":D
    mul-double v67, v27, v25

    mul-double v67, v67, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v67, v67, v69

    const-wide/high16 v69, 0x4014000000000000L    # 5.0

    sub-double v69, v69, v49

    const-wide/high16 v71, 0x4022000000000000L    # 9.0

    mul-double v71, v71, v17

    add-double v69, v69, v71

    .line 927
    const-wide/high16 v71, 0x4010000000000000L    # 4.0

    mul-double v71, v71, v19

    add-double v69, v69, v71

    .line 926
    mul-double v67, v67, v69

    .line 927
    const-wide/high16 v69, 0x4038000000000000L    # 24.0

    .line 926
    div-double v35, v67, v69

    .line 929
    .local v35, "t3":D
    mul-double v67, v27, v25

    mul-double v67, v67, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v67, v67, v69

    const-wide v69, 0x404e800000000000L    # 61.0

    const-wide/high16 v71, 0x404d000000000000L    # 58.0

    mul-double v71, v71, v49

    sub-double v69, v69, v71

    .line 930
    add-double v69, v69, v53

    const-wide v71, 0x4070e00000000000L    # 270.0

    mul-double v71, v71, v17

    add-double v69, v69, v71

    const-wide v71, 0x4074a00000000000L    # 330.0

    mul-double v71, v71, v49

    mul-double v71, v71, v17

    sub-double v69, v69, v71

    const-wide v71, 0x407bd00000000000L    # 445.0

    mul-double v71, v71, v19

    add-double v69, v69, v71

    .line 931
    const-wide v71, 0x4074400000000000L    # 324.0

    mul-double v71, v71, v21

    add-double v69, v69, v71

    const-wide v71, 0x4085400000000000L    # 680.0

    mul-double v71, v71, v49

    mul-double v71, v71, v19

    sub-double v69, v69, v71

    const-wide/high16 v71, 0x4056000000000000L    # 88.0

    mul-double v71, v71, v23

    add-double v69, v69, v71

    .line 932
    const-wide v71, 0x4082c00000000000L    # 600.0

    mul-double v71, v71, v49

    mul-double v71, v71, v21

    sub-double v69, v69, v71

    const-wide/high16 v71, 0x4068000000000000L    # 192.0

    mul-double v71, v71, v49

    mul-double v71, v71, v23

    sub-double v69, v69, v71

    .line 929
    mul-double v67, v67, v69

    .line 932
    const-wide v69, 0x4086800000000000L    # 720.0

    .line 929
    div-double v37, v67, v69

    .line 934
    .local v37, "t4":D
    mul-double v67, v27, v25

    mul-double v67, v67, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v67, v67, v69

    const-wide v69, 0x4095a40000000000L    # 1385.0

    const-wide v71, 0x40a84e0000000000L    # 3111.0

    .line 935
    mul-double v71, v71, v49

    sub-double v69, v69, v71

    const-wide v71, 0x4080f80000000000L    # 543.0

    mul-double v71, v71, v53

    add-double v69, v69, v71

    sub-double v69, v69, v57

    .line 934
    mul-double v67, v67, v69

    .line 935
    const-wide v69, 0x40e3b00000000000L    # 40320.0

    .line 934
    div-double v39, v67, v69

    .line 937
    .local v39, "t5":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_False_Northing:D

    move-wide/from16 v67, v0

    add-double v67, v67, v31

    const-wide/high16 v69, 0x4000000000000000L    # 2.0

    move-wide v0, v15

    move-wide/from16 v2, v69

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v69

    mul-double v69, v69, v33

    add-double v67, v67, v69

    .line 938
    const-wide/high16 v69, 0x4010000000000000L    # 4.0

    move-wide v0, v15

    move-wide/from16 v2, v69

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v69

    mul-double v69, v69, v35

    add-double v67, v67, v69

    const-wide/high16 v69, 0x4018000000000000L    # 6.0

    move-wide v0, v15

    move-wide/from16 v2, v69

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v69

    mul-double v69, v69, v37

    add-double v67, v67, v69

    .line 939
    const-wide/high16 v69, 0x4020000000000000L    # 8.0

    move-wide v0, v15

    move-wide/from16 v2, v69

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v69

    mul-double v69, v69, v39

    add-double v67, v67, v69

    .line 937
    move-wide/from16 v0, v67

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    .line 944
    mul-double v67, v27, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v41, v67, v69

    .line 945
    .local v41, "t6":D
    mul-double v67, v27, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v67, v67, v69

    const-wide/high16 v69, 0x3ff0000000000000L    # 1.0

    sub-double v69, v69, v49

    add-double v69, v69, v17

    mul-double v67, v67, v69

    const-wide/high16 v69, 0x4018000000000000L    # 6.0

    div-double v43, v67, v69

    .line 946
    .local v43, "t7":D
    mul-double v67, v27, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v67, v67, v69

    const-wide/high16 v69, 0x4014000000000000L    # 5.0

    const-wide/high16 v71, 0x4032000000000000L    # 18.0

    mul-double v71, v71, v49

    sub-double v69, v69, v71

    add-double v69, v69, v53

    .line 947
    const-wide/high16 v71, 0x402c000000000000L    # 14.0

    mul-double v71, v71, v17

    add-double v69, v69, v71

    const-wide/high16 v71, 0x404d000000000000L    # 58.0

    mul-double v71, v71, v49

    mul-double v71, v71, v17

    sub-double v69, v69, v71

    const-wide/high16 v71, 0x402a000000000000L    # 13.0

    mul-double v71, v71, v19

    add-double v69, v69, v71

    const-wide/high16 v71, 0x4010000000000000L    # 4.0

    mul-double v71, v71, v21

    add-double v69, v69, v71

    .line 948
    const-wide/high16 v71, 0x4050000000000000L    # 64.0

    mul-double v71, v71, v49

    mul-double v71, v71, v19

    sub-double v69, v69, v71

    const-wide/high16 v71, 0x4038000000000000L    # 24.0

    mul-double v71, v71, v49

    mul-double v71, v71, v21

    sub-double v69, v69, v71

    .line 946
    mul-double v67, v67, v69

    .line 948
    const-wide/high16 v69, 0x405e000000000000L    # 120.0

    .line 946
    div-double v45, v67, v69

    .line 949
    .local v45, "t8":D
    mul-double v67, v27, v13

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    move-wide/from16 v69, v0

    mul-double v67, v67, v69

    const-wide v69, 0x404e800000000000L    # 61.0

    const-wide v71, 0x407df00000000000L    # 479.0

    mul-double v71, v71, v49

    sub-double v69, v69, v71

    .line 950
    const-wide v71, 0x4066600000000000L    # 179.0

    mul-double v71, v71, v53

    add-double v69, v69, v71

    sub-double v69, v69, v57

    .line 949
    mul-double v67, v67, v69

    .line 950
    const-wide v69, 0x40b3b00000000000L    # 5040.0

    .line 949
    div-double v47, v67, v69

    .line 952
    .local v47, "t9":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_False_Easting:D

    move-wide/from16 v67, v0

    mul-double v69, v15, v41

    add-double v67, v67, v69

    const-wide/high16 v69, 0x4008000000000000L    # 3.0

    move-wide v0, v15

    move-wide/from16 v2, v69

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v69

    mul-double v69, v69, v43

    add-double v67, v67, v69

    .line 953
    const-wide/high16 v69, 0x4014000000000000L    # 5.0

    move-wide v0, v15

    move-wide/from16 v2, v69

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v69

    mul-double v69, v69, v45

    add-double v67, v67, v69

    const-wide/high16 v69, 0x401c000000000000L    # 7.0

    move-wide v0, v15

    move-wide/from16 v2, v69

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v69

    mul-double v69, v69, v47

    add-double v67, v67, v69

    .line 952
    move-wide/from16 v0, v67

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    .line 955
    const/16 v67, 0x0

    goto/16 :goto_0
.end method

.method public LLToUSNG(IDDI)I
    .locals 17
    .param p1, "DatumIndex"    # I
    .param p2, "Latitude"    # D
    .param p4, "Longitude"    # D
    .param p6, "Precision"    # I

    .prologue
    .line 1365
    const-wide v2, -0x3fa9800000000000L    # -90.0

    cmpg-double v2, p2, v2

    if-ltz v2, :cond_0

    const-wide v2, 0x4056800000000000L    # 90.0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_1

    .line 1367
    :cond_0
    const/4 v2, 0x1

    .line 1415
    :goto_0
    return v2

    .line 1373
    :cond_1
    const-wide v2, -0x3f99800000000000L    # -180.0

    cmpg-double v2, p4, v2

    if-ltz v2, :cond_2

    const-wide v2, 0x4066800000000000L    # 180.0

    cmpl-double v2, p4, v2

    if-lez v2, :cond_3

    .line 1375
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 1378
    :cond_3
    if-ltz p6, :cond_4

    const/4 v2, 0x5

    move/from16 v0, p6

    move v1, v2

    if-le v0, v1, :cond_5

    .line 1380
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 1383
    :cond_5
    if-ltz p1, :cond_6

    sget-object v2, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v0, p1

    move v1, v2

    if-le v0, v1, :cond_7

    .line 1385
    :cond_6
    const/4 v2, 0x1

    goto :goto_0

    .line 1388
    :cond_7
    const-wide/high16 v2, -0x3fac000000000000L    # -80.0

    cmpg-double v2, p2, v2

    if-ltz v2, :cond_8

    const-wide/high16 v2, 0x4055000000000000L    # 84.0

    cmpl-double v2, p2, v2

    if-lez v2, :cond_9

    .line 1390
    :cond_8
    const/4 v2, 0x1

    goto :goto_0

    .line 1394
    :cond_9
    invoke-virtual/range {p0 .. p5}, Lcom/chartcross/location/MxCoordConverter;->LLToUTM(IDD)I

    move-result v2

    if-lez v2, :cond_a

    .line 1396
    const/4 v2, 0x1

    goto :goto_0

    .line 1399
    :cond_a
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const/4 v4, 0x5

    sub-int v4, v4, p6

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    .line 1400
    .local v13, "Divisor":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide v2, v0

    div-double/2addr v2, v13

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    mul-double v15, v2, v13

    .line 1405
    .local v15, "RoundedEasting":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v2, v0

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_c

    const-wide/high16 v2, 0x404c000000000000L    # 56.0

    cmpl-double v2, p2, v2

    if-ltz v2, :cond_c

    const-wide/high16 v2, 0x4050000000000000L    # 64.0

    cmpg-double v2, p2, v2

    if-gez v2, :cond_c

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    cmpl-double v2, p4, v2

    if-gez v2, :cond_b

    const-wide v2, 0x411e848000000000L    # 500000.0

    cmpl-double v2, v15, v2

    if-ltz v2, :cond_c

    .line 1410
    :cond_b
    const/16 v8, 0x20

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    invoke-virtual/range {v2 .. v8}, Lcom/chartcross/location/MxCoordConverter;->LLToUTM(IDDI)I

    move-result v2

    if-lez v2, :cond_c

    .line 1412
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 1415
    :cond_c
    sget-object v2, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v2, v2, p1

    iget v3, v2, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide v10, v0

    move-object/from16 v2, p0

    move-wide/from16 v6, p2

    move/from16 v12, p6

    invoke-direct/range {v2 .. v12}, Lcom/chartcross/location/MxCoordConverter;->UTMToUSNG(IILjava/lang/String;DDDI)I

    move-result v2

    goto/16 :goto_0
.end method

.method public LLToUTM(IDD)I
    .locals 7
    .param p1, "DatumIndex"    # I
    .param p2, "Latitude"    # D
    .param p4, "Longitude"    # D

    .prologue
    .line 960
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/chartcross/location/MxCoordConverter;->LLToUTM(IDDI)I

    move-result v0

    return v0
.end method

.method public LLToUTM(IDDI)I
    .locals 49
    .param p1, "DatumIndex"    # I
    .param p2, "Latitude"    # D
    .param p4, "Longitude"    # D
    .param p6, "ZoneOverride"    # I

    .prologue
    .line 985
    const/16 v32, 0x0

    .line 986
    .local v32, "ErrorCode":I
    const-wide/16 v16, 0x0

    .line 987
    .local v16, "OriginLatitude":D
    const-wide/16 v18, 0x0

    .line 988
    .local v18, "CentralMeridian":D
    const-wide v20, 0x411e848000000000L    # 500000.0

    .line 989
    .local v20, "FalseEasting":D
    const-wide/16 v22, 0x0

    .line 990
    .local v22, "FalseNorthing":D
    const-wide v24, 0x3feffcb923a29c78L    # 0.9996

    .line 993
    .local v24, "Scale":D
    const-string v46, "CDEFGHJKLMNPQRSTUVW"

    .line 998
    .local v46, "ZoneLetters":Ljava/lang/String;
    const-wide v42, -0x4009852927d4163fL    # -1.4049900478554351

    .line 999
    .local v42, "MIN_LAT":D
    const-wide v36, 0x3ff798cb42511395L    # 1.4748032179352084

    .line 1000
    .local v36, "MAX_LAT":D
    const-wide v40, 0x40f86a0000000000L    # 100000.0

    .line 1001
    .local v40, "MIN_EASTING":D
    const-wide v34, 0x412b774000000000L    # 900000.0

    .line 1002
    .local v34, "MAX_EASTING":D
    const-wide/16 v44, 0x0

    .line 1003
    .local v44, "MIN_NORTHING":D
    const-wide v38, 0x416312d000000000L    # 1.0E7

    .line 1005
    .local v38, "MAX_NORTHING":D
    if-ltz p1, :cond_0

    sget-object v5, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move/from16 v0, p1

    move v1, v5

    if-le v0, v1, :cond_1

    .line 1007
    :cond_0
    const/4 v5, 0x1

    .line 1195
    :goto_0
    return v5

    .line 1010
    :cond_1
    sget-object v5, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    sget-object v6, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v6, v6, p1

    iget v6, v6, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    aget-object v5, v5, v6

    move-object v0, v5

    iget-wide v0, v0, Lcom/chartcross/location/MxEllipsoid;->m_EquatorialRadius:D

    move-wide/from16 v47, v0

    .line 1011
    .local v47, "a":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sget-object v7, Lcom/chartcross/location/MxCoordConverter;->EllipsoidList:[Lcom/chartcross/location/MxEllipsoid;

    sget-object v8, Lcom/chartcross/location/MxCoordConverter;->DatumList:[Lcom/chartcross/location/MxDatum;

    aget-object v8, v8, p1

    iget v8, v8, Lcom/chartcross/location/MxDatum;->m_EllipsoidIndex:I

    aget-object v7, v7, v8

    iget-wide v7, v7, Lcom/chartcross/location/MxEllipsoid;->m_InverseFlattening:D

    div-double v14, v5, v7

    .line 1016
    .local v14, "f":D
    const-wide/16 v5, 0x0

    cmpg-double v5, v47, v5

    if-gtz v5, :cond_2

    .line 1018
    const/4 v5, 0x1

    goto :goto_0

    .line 1024
    :cond_2
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v14

    const-wide v7, 0x406f400000000000L    # 250.0

    cmpg-double v5, v5, v7

    if-ltz v5, :cond_3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v14

    const-wide v7, 0x4075e00000000000L    # 350.0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_4

    .line 1026
    :cond_3
    const/4 v5, 0x1

    goto :goto_0

    .line 1029
    :cond_4
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, p2

    const-wide v7, 0x4066800000000000L    # 180.0

    div-double v7, v5, v7

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, p4

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double v9, v5, v9

    const-wide/16 v11, 0x0

    move-object/from16 v5, p0

    move/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/chartcross/location/MxCoordConverter;->GeodeticShiftFromWGS84(IDDD)I

    move-result v32

    .line 1030
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLatitudeR:D

    move-wide v7, v0

    .line 1031
    .local v7, "CorrectedLatitudeR":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    move-wide v9, v0

    .line 1032
    .local v9, "CorrectedLongitudeR":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedHeight:D

    move-wide/from16 v26, v0

    .line 1033
    .local v26, "CorrectedHeight":D
    if-eqz v32, :cond_5

    move/from16 v5, v32

    .line 1035
    goto :goto_0

    .line 1038
    :cond_5
    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v7

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double v28, v5, v11

    .line 1039
    .local v28, "CorrectedLatitudeD":D
    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double v30, v5, v11

    .line 1045
    .local v30, "CorrectedLongitudeD":D
    cmpg-double v5, v7, v42

    if-ltz v5, :cond_6

    cmpl-double v5, v7, v36

    if-lez v5, :cond_7

    .line 1047
    :cond_6
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1050
    :cond_7
    const-wide v5, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v5, v9, v5

    if-ltz v5, :cond_8

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v5, v9, v5

    if-lez v5, :cond_9

    .line 1052
    :cond_8
    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v5, p0

    move/from16 v6, p1

    .line 1059
    invoke-direct/range {v5 .. v10}, Lcom/chartcross/location/MxCoordConverter;->ValidDatum(IDD)Z

    move-result v5

    if-nez v5, :cond_a

    .line 1061
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1064
    :cond_a
    const-wide/16 v5, 0x0

    cmpg-double v5, v9, v5

    if-gez v5, :cond_b

    .line 1066
    const-wide v5, 0x401921fb5445e4e6L    # 6.283185307279586

    add-double/2addr v9, v5

    .line 1069
    :cond_b
    const-wide v5, 0x400921fb54442d18L    # Math.PI

    cmpg-double v5, v9, v5

    if-gez v5, :cond_14

    .line 1071
    const-wide/high16 v5, 0x403f000000000000L    # 31.0

    const-wide v11, 0x4066800000000000L    # 180.0

    mul-double/2addr v11, v9

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    div-double v11, v11, v26

    const-wide/high16 v26, 0x4018000000000000L    # 6.0

    div-double v11, v11, v26

    add-double/2addr v5, v11

    double-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1078
    .end local v26    # "CorrectedHeight":D
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v5, v0

    const/16 v6, 0x3c

    if-le v5, v6, :cond_c

    .line 1080
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1086
    :cond_c
    const-wide v5, 0x404b800000000000L    # 55.0

    cmpl-double v5, v28, v5

    if-lez v5, :cond_d

    const-wide/high16 v5, 0x4050000000000000L    # 64.0

    cmpg-double v5, v28, v5

    if-gez v5, :cond_d

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v5, v30, v5

    if-lez v5, :cond_d

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    cmpg-double v5, v30, v5

    if-gez v5, :cond_d

    .line 1088
    const/16 v5, 0x1f

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1090
    :cond_d
    const-wide v5, 0x404b800000000000L    # 55.0

    cmpl-double v5, v28, v5

    if-lez v5, :cond_e

    const-wide/high16 v5, 0x4050000000000000L    # 64.0

    cmpg-double v5, v28, v5

    if-gez v5, :cond_e

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    cmpl-double v5, v30, v5

    if-lez v5, :cond_e

    const-wide/high16 v5, 0x4028000000000000L    # 12.0

    cmpg-double v5, v30, v5

    if-gez v5, :cond_e

    .line 1092
    const/16 v5, 0x20

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1094
    :cond_e
    const-wide v5, 0x4051c00000000000L    # 71.0

    cmpl-double v5, v28, v5

    if-lez v5, :cond_f

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    cmpl-double v5, v30, v5

    if-lez v5, :cond_f

    const-wide/high16 v5, 0x4022000000000000L    # 9.0

    cmpg-double v5, v30, v5

    if-gez v5, :cond_f

    .line 1096
    const/16 v5, 0x1f

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1098
    :cond_f
    const-wide v5, 0x4051c00000000000L    # 71.0

    cmpl-double v5, v28, v5

    if-lez v5, :cond_10

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    cmpl-double v5, v30, v5

    if-lez v5, :cond_10

    const-wide/high16 v5, 0x4035000000000000L    # 21.0

    cmpg-double v5, v30, v5

    if-gez v5, :cond_10

    .line 1100
    const/16 v5, 0x21

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1102
    :cond_10
    const-wide v5, 0x4051c00000000000L    # 71.0

    cmpl-double v5, v28, v5

    if-lez v5, :cond_11

    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    cmpl-double v5, v30, v5

    if-lez v5, :cond_11

    const-wide v5, 0x4040800000000000L    # 33.0

    cmpg-double v5, v30, v5

    if-gez v5, :cond_11

    .line 1104
    const/16 v5, 0x23

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1106
    :cond_11
    const-wide v5, 0x4051c00000000000L    # 71.0

    cmpl-double v5, v28, v5

    if-lez v5, :cond_12

    const-wide/high16 v5, 0x4040000000000000L    # 32.0

    cmpl-double v5, v30, v5

    if-lez v5, :cond_12

    const-wide/high16 v5, 0x4045000000000000L    # 42.0

    cmpg-double v5, v30, v5

    if-gez v5, :cond_12

    .line 1108
    const/16 v5, 0x25

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1114
    :cond_12
    if-lez p6, :cond_13

    .line 1116
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    const/16 v5, 0x3c

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_15

    .line 1118
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    .line 1134
    :cond_13
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v5, v0

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_18

    .line 1136
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v5, v0

    mul-int/lit8 v5, v5, 0x6

    const/16 v6, 0xb7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v11

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double v18, v5, v11

    .line 1143
    :goto_3
    const-wide/16 v5, 0x0

    cmpg-double v5, v7, v5

    if-gez v5, :cond_19

    .line 1145
    const-wide v22, 0x416312d000000000L    # 1.0E7

    .line 1146
    const-string v5, "S"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/location/MxCoordConverter;->mHemisphere:Ljava/lang/String;

    .line 1156
    :goto_4
    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    cmpl-double v5, v28, v5

    if-ltz v5, :cond_1a

    const-wide v5, 0x4055200000000000L    # 84.5

    cmpg-double v5, v28, v5

    if-gez v5, :cond_1a

    .line 1158
    const-string v5, "X"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    :goto_5
    move-object/from16 v11, p0

    move-wide/from16 v12, v47

    .line 1170
    invoke-virtual/range {v11 .. v25}, Lcom/chartcross/location/MxCoordConverter;->SetTMParameters(DDDDDDD)I

    move-result v32

    .line 1171
    if-eqz v32, :cond_1c

    move/from16 v5, v32

    .line 1173
    goto/16 :goto_0

    .line 1075
    .restart local v26    # "CorrectedHeight":D
    :cond_14
    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double/2addr v5, v9

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v5, v11

    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    div-double/2addr v5, v11

    const-wide/high16 v11, 0x403d000000000000L    # 29.0

    sub-double/2addr v5, v11

    double-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    goto/16 :goto_1

    .line 1120
    .end local v26    # "CorrectedHeight":D
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v5, v0

    const/16 v6, 0x3c

    if-ne v5, v6, :cond_16

    const/4 v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-ne v0, v1, :cond_16

    .line 1122
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    goto/16 :goto_2

    .line 1124
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move/from16 v1, p6

    if-gt v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move/from16 v0, p6

    move v1, v5

    if-gt v0, v1, :cond_17

    .line 1126
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    goto/16 :goto_2

    .line 1130
    :cond_17
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1140
    :cond_18
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/location/MxCoordConverter;->mZone:I

    move v5, v0

    mul-int/lit8 v5, v5, 0x6

    add-int/lit16 v5, v5, 0xb1

    int-to-double v5, v5

    const-wide v11, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v11

    const-wide v11, 0x4066800000000000L    # 180.0

    div-double v18, v5, v11

    goto/16 :goto_3

    .line 1150
    :cond_19
    const-string v5, "N"

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/location/MxCoordConverter;->mHemisphere:Ljava/lang/String;

    goto/16 :goto_4

    .line 1160
    :cond_1a
    const-wide v5, -0x3fabe00000000000L    # -80.5

    cmpl-double v5, v28, v5

    if-lez v5, :cond_1b

    const-wide/high16 v5, 0x4052000000000000L    # 72.0

    cmpg-double v5, v28, v5

    if-gez v5, :cond_1b

    .line 1162
    const-wide v5, 0x3ff657184ae74487L    # 1.3962634015954636

    add-double/2addr v5, v7

    const-wide v11, 0x3fc1df46a2529d39L    # 0.13962634015954636

    div-double/2addr v5, v11

    const-wide v11, 0x3d719799812dea11L    # 1.0E-12

    add-double/2addr v5, v11

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v33, v0

    .line 1163
    .local v33, "Index":I
    add-int/lit8 v5, v33, 0x1

    move-object/from16 v0, v46

    move/from16 v1, v33

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/chartcross/location/MxCoordConverter;->mZoneLetter:Ljava/lang/String;

    goto/16 :goto_5

    .line 1167
    .end local v33    # "Index":I
    :cond_1b
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1176
    :cond_1c
    move-object/from16 v0, p0

    move-wide v1, v7

    move-wide v3, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/location/MxCoordConverter;->LLToTM(DD)I

    move-result v32

    .line 1177
    if-eqz v32, :cond_1d

    move/from16 v5, v32

    .line 1179
    goto/16 :goto_0

    .line 1186
    :cond_1d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide v5, v0

    cmpg-double v5, v5, v40

    if-ltz v5, :cond_1e

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide v5, v0

    cmpl-double v5, v5, v34

    if-lez v5, :cond_1f

    .line 1188
    :cond_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1190
    :cond_1f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide v5, v0

    cmpg-double v5, v5, v44

    if-ltz v5, :cond_20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide v5, v0

    cmpl-double v5, v5, v38

    if-lez v5, :cond_21

    .line 1192
    :cond_20
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1195
    :cond_21
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method MolodenskyShift(DDDDDDDDDD)V
    .locals 51
    .param p1, "a"    # D
    .param p3, "da"    # D
    .param p5, "f"    # D
    .param p7, "df"    # D
    .param p9, "dx"    # D
    .param p11, "dy"    # D
    .param p13, "dz"    # D
    .param p15, "Lat_in"    # D
    .param p17, "Lon_in"    # D
    .param p19, "Hgt_in"    # D

    .prologue
    .line 1809
    const-wide v45, 0x400921fb54442d18L    # Math.PI

    cmpl-double v45, p17, v45

    if-lez v45, :cond_2

    .line 1811
    const-wide v45, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v37, p17, v45

    .line 1817
    .local v37, "tLon_in":D
    :goto_0
    const-wide/high16 v45, 0x4000000000000000L    # 2.0

    mul-double v45, v45, p5

    mul-double v47, p5, p5

    sub-double v23, v45, v47

    .line 1818
    .local v23, "e2":D
    const-wide/high16 v45, 0x3ff0000000000000L    # 1.0

    sub-double v45, v45, v23

    div-double v25, v23, v45

    .line 1819
    .local v25, "ep2":D
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v33

    .line 1820
    .local v33, "sin_Lat":D
    invoke-static/range {p15 .. p16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    .line 1821
    .local v3, "cos_Lat":D
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->sin(D)D

    move-result-wide v35

    .line 1822
    .local v35, "sin_Lon":D
    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    .line 1823
    .local v5, "cos_Lon":D
    mul-double v31, v33, v33

    .line 1824
    .local v31, "sin2_Lat":D
    const-wide/high16 v45, 0x3ff0000000000000L    # 1.0

    mul-double v47, v23, v31

    sub-double v41, v45, v47

    .line 1825
    .local v41, "w2":D
    invoke-static/range {v41 .. v42}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v39

    .line 1826
    .local v39, "w":D
    mul-double v43, v39, v41

    .line 1827
    .local v43, "w3":D
    const-wide/high16 v45, 0x3ff0000000000000L    # 1.0

    sub-double v45, v45, v23

    mul-double v45, v45, p1

    div-double v27, v45, v43

    .line 1828
    .local v27, "m":D
    div-double v29, p1, v39

    .line 1829
    .local v29, "n":D
    mul-double v45, v3, p13

    mul-double v47, v33, v5

    mul-double v47, v47, p9

    sub-double v45, v45, v47

    mul-double v47, v33, v35

    mul-double v47, v47, p11

    sub-double v17, v45, v47

    .line 1830
    .local v17, "dp1":D
    mul-double v45, v23, v33

    mul-double v45, v45, v3

    div-double v45, v45, v39

    mul-double v19, v45, p3

    .line 1831
    .local v19, "dp2":D
    mul-double v45, v33, v3

    const-wide/high16 v47, 0x4000000000000000L    # 2.0

    mul-double v47, v47, v29

    mul-double v49, v25, v27

    mul-double v49, v49, v31

    add-double v47, v47, v49

    mul-double v45, v45, v47

    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    sub-double v47, v47, p5

    mul-double v45, v45, v47

    mul-double v21, v45, p7

    .line 1832
    .local v21, "dp3":D
    add-double v45, v17, v19

    add-double v45, v45, v21

    add-double v47, v27, p19

    div-double v15, v45, v47

    .line 1833
    .local v15, "dp":D
    move-wide/from16 v0, v35

    neg-double v0, v0

    move-wide/from16 v45, v0

    mul-double v45, v45, p9

    mul-double v47, v5, p11

    add-double v45, v45, v47

    add-double v47, v29, p19

    mul-double v47, v47, v3

    div-double v13, v45, v47

    .line 1834
    .local v13, "dl":D
    mul-double v45, v3, v5

    mul-double v45, v45, p9

    mul-double v47, v3, v35

    mul-double v47, v47, p11

    add-double v45, v45, v47

    mul-double v47, v33, p13

    add-double v9, v45, v47

    .line 1835
    .local v9, "dh1":D
    mul-double v45, v39, p3

    move-wide/from16 v0, v45

    neg-double v0, v0

    move-wide/from16 v45, v0

    const-wide/high16 v47, 0x3ff0000000000000L    # 1.0

    sub-double v47, v47, p5

    mul-double v47, v47, p1

    div-double v47, v47, v39

    mul-double v47, v47, v31

    mul-double v47, v47, p7

    add-double v11, v45, v47

    .line 1836
    .local v11, "dh2":D
    add-double v7, v9, v11

    .line 1837
    .local v7, "dh":D
    add-double v45, p15, v15

    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLatitudeR:D

    .line 1838
    add-double v45, p17, v13

    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    .line 1839
    add-double v45, p19, v7

    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedHeight:D

    .line 1840
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    move-wide/from16 v45, v0

    const-wide v47, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v45, v45, v47

    if-lez v45, :cond_0

    .line 1842
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    move-wide/from16 v45, v0

    const-wide v47, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v45, v45, v47

    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    .line 1844
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    move-wide/from16 v45, v0

    const-wide v47, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v45, v45, v47

    if-gez v45, :cond_1

    .line 1846
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    move-wide/from16 v45, v0

    const-wide v47, 0x401921fb54442d18L    # 6.283185307179586

    add-double v45, v45, v47

    move-wide/from16 v0, v45

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->mCorrectedLongitudeR:D

    .line 1848
    :cond_1
    return-void

    .line 1815
    .end local v3    # "cos_Lat":D
    .end local v5    # "cos_Lon":D
    .end local v7    # "dh":D
    .end local v9    # "dh1":D
    .end local v11    # "dh2":D
    .end local v13    # "dl":D
    .end local v15    # "dp":D
    .end local v17    # "dp1":D
    .end local v19    # "dp2":D
    .end local v21    # "dp3":D
    .end local v23    # "e2":D
    .end local v25    # "ep2":D
    .end local v27    # "m":D
    .end local v29    # "n":D
    .end local v31    # "sin2_Lat":D
    .end local v33    # "sin_Lat":D
    .end local v35    # "sin_Lon":D
    .end local v37    # "tLon_in":D
    .end local v39    # "w":D
    .end local v41    # "w2":D
    .end local v43    # "w3":D
    :cond_2
    move-wide/from16 v37, p17

    .restart local v37    # "tLon_in":D
    goto/16 :goto_0
.end method

.method public OSGBRefToLetter(DDI)Ljava/lang/String;
    .locals 22
    .param p1, "Easting"    # D
    .param p3, "Northing"    # D
    .param p5, "Precision"    # I

    .prologue
    .line 639
    const/16 v16, 0x4

    sub-int v16, v16, p5

    add-int/lit8 v16, v16, 0x1

    mul-int/lit8 v2, v16, 0x2

    .line 644
    .local v2, "Digits":I
    const-wide v16, 0x40f86a0000000000L    # 100000.0

    div-double v16, p1, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    .line 645
    .local v6, "e100k":D
    const-wide v16, 0x40f86a0000000000L    # 100000.0

    div-double v16, p3, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    .line 647
    .local v12, "n100k":D
    const-wide/16 v16, 0x0

    cmpg-double v16, v6, v16

    if-ltz v16, :cond_0

    const-wide/high16 v16, 0x4018000000000000L    # 6.0

    cmpl-double v16, v6, v16

    if-gtz v16, :cond_0

    const-wide/16 v16, 0x0

    cmpg-double v16, v12, v16

    if-ltz v16, :cond_0

    const-wide/high16 v16, 0x4028000000000000L    # 12.0

    cmpl-double v16, v12, v16

    if-lez v16, :cond_1

    .line 649
    :cond_0
    const-string v16, ""

    .line 701
    :goto_0
    return-object v16

    .line 655
    :cond_1
    const-wide/high16 v16, 0x4033000000000000L    # 19.0

    sub-double v16, v16, v12

    const-wide/high16 v18, 0x4033000000000000L    # 19.0

    sub-double v18, v18, v12

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    rem-double v18, v18, v20

    sub-double v16, v16, v18

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    add-double v18, v18, v6

    const-wide/high16 v20, 0x4014000000000000L    # 5.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->floor(D)D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v8, v0

    .line 656
    .local v8, "l1":I
    const-wide/high16 v16, 0x4033000000000000L    # 19.0

    sub-double v16, v16, v12

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    mul-double v16, v16, v18

    const-wide/high16 v18, 0x4039000000000000L    # 25.0

    rem-double v16, v16, v18

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    rem-double v18, v6, v18

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v9, v0

    .line 661
    .local v9, "l2":I
    const/16 v16, 0x7

    move v0, v8

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    add-int/lit8 v8, v8, 0x1

    .line 662
    :cond_2
    const/16 v16, 0x7

    move v0, v9

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    add-int/lit8 v9, v9, 0x1

    .line 664
    :cond_3
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [C

    move-object v3, v0

    .line 665
    .local v3, "cLetters":[C
    const/16 v16, 0x0

    add-int/lit8 v17, v8, 0x41

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    aput-char v17, v3, v16

    .line 666
    const/16 v16, 0x1

    add-int/lit8 v17, v9, 0x41

    move/from16 v0, v17

    int-to-char v0, v0

    move/from16 v17, v0

    aput-char v17, v3, v16

    .line 668
    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v3}, Ljava/lang/String;-><init>([C)V

    .line 673
    .local v15, "sLetters":Ljava/lang/String;
    const-wide v16, 0x40f86a0000000000L    # 100000.0

    rem-double v16, p1, v16

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    const/16 v20, 0x5

    div-int/lit8 v21, v2, 0x2

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    .line 674
    .local v4, "e":D
    const-wide v16, 0x40f86a0000000000L    # 100000.0

    rem-double v16, p3, v16

    const-wide/high16 v18, 0x4024000000000000L    # 10.0

    const/16 v20, 0x5

    div-int/lit8 v21, v2, 0x2

    sub-int v20, v20, v21

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    .line 680
    .local v10, "n":D
    packed-switch p5, :pswitch_data_0

    .line 698
    const-string v16, "%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .local v14, "sGridRef":Ljava/lang/String;
    :goto_1
    move-object/from16 v16, v14

    .line 701
    goto/16 :goto_0

    .line 683
    .end local v14    # "sGridRef":Ljava/lang/String;
    :pswitch_0
    const-string v16, "%s%01.0f%01.0f"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 684
    .restart local v14    # "sGridRef":Ljava/lang/String;
    goto :goto_1

    .line 686
    .end local v14    # "sGridRef":Ljava/lang/String;
    :pswitch_1
    const-string v16, "%s%02.0f%02.0f"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 687
    .restart local v14    # "sGridRef":Ljava/lang/String;
    goto :goto_1

    .line 689
    .end local v14    # "sGridRef":Ljava/lang/String;
    :pswitch_2
    const-string v16, "%s%03.0f%03.0f"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 690
    .restart local v14    # "sGridRef":Ljava/lang/String;
    goto :goto_1

    .line 692
    .end local v14    # "sGridRef":Ljava/lang/String;
    :pswitch_3
    const-string v16, "%s%04.0f%04.0f"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 693
    .restart local v14    # "sGridRef":Ljava/lang/String;
    goto/16 :goto_1

    .line 695
    .end local v14    # "sGridRef":Ljava/lang/String;
    :pswitch_4
    const-string v16, "%s%05.0f%05.0f"

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v15, v17, v18

    const/16 v18, 0x1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 696
    .restart local v14    # "sGridRef":Ljava/lang/String;
    goto/16 :goto_1

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method SetTMParameters(DDDDDDD)I
    .locals 39
    .param p1, "a"    # D
    .param p3, "f"    # D
    .param p5, "OriginLatitude"    # D
    .param p7, "CentralMeridian"    # D
    .param p9, "FalseEasting"    # D
    .param p11, "FalseNorthing"    # D
    .param p13, "ScaleFactor"    # D

    .prologue
    .line 1988
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    div-double v19, v31, p3

    .line 1989
    .local v19, "inv_f":D
    const-wide/16 v5, 0x0

    .line 1994
    .local v5, "Error_Code":J
    const-wide v9, 0x3ff921445170e21bL    # 1.570621793869697

    .line 1995
    .local v9, "MAX_LAT":D
    const-wide v7, 0x3ff921fb54442d18L    # 1.5707963267948966

    .line 1996
    .local v7, "MAX_DELTA_LONG":D
    const-wide v13, 0x3fd3333333333333L    # 0.3

    .line 1997
    .local v13, "MIN_SCALE_FACTOR":D
    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    .line 2002
    .local v11, "MAX_SCALE_FACTOR":D
    const-wide/16 v31, 0x0

    cmpg-double v31, p1, v31

    if-gtz v31, :cond_0

    .line 2004
    const/16 v31, 0x1

    .line 2089
    :goto_0
    return v31

    .line 2010
    :cond_0
    const-wide v31, 0x406f400000000000L    # 250.0

    cmpg-double v31, v19, v31

    if-ltz v31, :cond_1

    const-wide v31, 0x4075e00000000000L    # 350.0

    cmpl-double v31, v19, v31

    if-lez v31, :cond_2

    .line 2012
    :cond_1
    const/16 v31, 0x1

    goto :goto_0

    .line 2018
    :cond_2
    const-wide v31, -0x4006de04abbbd2e8L    # -1.5707963267948966

    cmpg-double v31, p5, v31

    if-ltz v31, :cond_3

    const-wide v31, 0x3ff921fb54442d18L    # 1.5707963267948966

    cmpl-double v31, p5, v31

    if-lez v31, :cond_4

    .line 2020
    :cond_3
    const/16 v31, 0x1

    goto :goto_0

    .line 2026
    :cond_4
    const-wide v31, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    cmpg-double v31, p7, v31

    if-ltz v31, :cond_5

    const-wide v31, 0x401921fb54442d18L    # 6.283185307179586

    cmpl-double v31, p7, v31

    if-lez v31, :cond_6

    .line 2028
    :cond_5
    const/16 v31, 0x1

    goto :goto_0

    .line 2031
    :cond_6
    cmpg-double v31, p13, v13

    if-ltz v31, :cond_7

    cmpl-double v31, p13, v11

    if-lez v31, :cond_8

    .line 2033
    :cond_7
    const/16 v31, 0x1

    goto :goto_0

    .line 2036
    :cond_8
    move-wide/from16 v0, p1

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    .line 2037
    move-wide/from16 v0, p3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_f:D

    .line 2038
    const-wide/16 v31, 0x0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Lat:D

    .line 2039
    const-wide/16 v31, 0x0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Long:D

    .line 2040
    const-wide/16 v31, 0x0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_False_Northing:D

    .line 2041
    const-wide/16 v31, 0x0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_False_Easting:D

    .line 2042
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    .line 2047
    const-wide/high16 v31, 0x4000000000000000L    # 2.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_f:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_f:D

    move-wide/from16 v33, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_f:D

    move-wide/from16 v35, v0

    mul-double v33, v33, v35

    sub-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_es:D

    .line 2052
    const-wide/high16 v31, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_es:D

    move-wide/from16 v35, v0

    sub-double v33, v33, v35

    div-double v31, v31, v33

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    sub-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_ebs:D

    .line 2054
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_f:D

    move-wide/from16 v35, v0

    sub-double v33, v33, v35

    mul-double v15, v31, v33

    .line 2059
    .local v15, "TranMerc_b":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    move-wide/from16 v31, v0

    sub-double v31, v31, v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    move-wide/from16 v33, v0

    add-double v33, v33, v15

    div-double v21, v31, v33

    .line 2060
    .local v21, "tn":D
    mul-double v23, v21, v21

    .line 2061
    .local v23, "tn2":D
    mul-double v25, v23, v21

    .line 2062
    .local v25, "tn3":D
    mul-double v27, v25, v21

    .line 2063
    .local v27, "tn4":D
    mul-double v29, v27, v21

    .line 2065
    .local v29, "tn5":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    move-wide/from16 v31, v0

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    sub-double v33, v33, v21

    const-wide/high16 v35, 0x4014000000000000L    # 5.0

    sub-double v37, v23, v25

    mul-double v35, v35, v37

    const-wide/high16 v37, 0x4010000000000000L    # 4.0

    div-double v35, v35, v37

    add-double v33, v33, v35

    const-wide v35, 0x4054400000000000L    # 81.0

    sub-double v37, v27, v29

    mul-double v35, v35, v37

    const-wide/high16 v37, 0x4050000000000000L    # 64.0

    div-double v35, v35, v37

    add-double v33, v33, v35

    mul-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_ap:D

    .line 2066
    const-wide/high16 v31, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    sub-double v33, v21, v23

    const-wide/high16 v35, 0x401c000000000000L    # 7.0

    sub-double v37, v25, v27

    mul-double v35, v35, v37

    const-wide/high16 v37, 0x4020000000000000L    # 8.0

    div-double v35, v35, v37

    add-double v33, v33, v35

    const-wide v35, 0x404b800000000000L    # 55.0

    mul-double v35, v35, v29

    const-wide/high16 v37, 0x4050000000000000L    # 64.0

    div-double v35, v35, v37

    add-double v33, v33, v35

    mul-double v31, v31, v33

    const-wide/high16 v33, 0x4000000000000000L    # 2.0

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_bp:D

    .line 2067
    const-wide/high16 v31, 0x402e000000000000L    # 15.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    sub-double v33, v23, v25

    const-wide/high16 v35, 0x4008000000000000L    # 3.0

    sub-double v37, v27, v29

    mul-double v35, v35, v37

    const-wide/high16 v37, 0x4010000000000000L    # 4.0

    div-double v35, v35, v37

    add-double v33, v33, v35

    mul-double v31, v31, v33

    const-wide/high16 v33, 0x4030000000000000L    # 16.0

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_cp:D

    .line 2068
    const-wide v31, 0x4041800000000000L    # 35.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    sub-double v33, v25, v27

    const-wide/high16 v35, 0x4026000000000000L    # 11.0

    mul-double v35, v35, v29

    const-wide/high16 v37, 0x4030000000000000L    # 16.0

    div-double v35, v35, v37

    add-double v33, v33, v35

    mul-double v31, v31, v33

    const-wide/high16 v33, 0x4048000000000000L    # 48.0

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_dp:D

    .line 2069
    const-wide v31, 0x4073b00000000000L    # 315.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->m_TM_a:D

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    sub-double v33, v27, v29

    mul-double v31, v31, v33

    const-wide/high16 v33, 0x4080000000000000L    # 512.0

    div-double v31, v31, v33

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_ep:D

    .line 2071
    move-object/from16 v0, p0

    move-wide v1, v9

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/location/MxCoordConverter;->LLToTM(DD)I

    .line 2072
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Delta_Easting:D

    .line 2073
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Delta_Northing:D

    .line 2074
    const-wide/16 v31, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move-wide v3, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/location/MxCoordConverter;->LLToTM(DD)I

    .line 2075
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mEasting:D

    move-wide/from16 v31, v0

    move-wide/from16 v0, v31

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Delta_Easting:D

    .line 2076
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/chartcross/location/MxCoordConverter;->mNorthing:D

    move-wide/from16 v17, v0

    .line 2078
    .local v17, "dummy_northing":D
    move-wide/from16 v0, p5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Lat:D

    .line 2079
    const-wide v31, 0x400921fb54442d18L    # Math.PI

    cmpl-double v31, p7, v31

    if-lez v31, :cond_9

    .line 2081
    const-wide v31, 0x401921fb54442d18L    # 6.283185307179586

    sub-double p7, p7, v31

    .line 2084
    :cond_9
    move-wide/from16 v0, p7

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Origin_Long:D

    .line 2085
    move-wide/from16 v0, p11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_False_Northing:D

    .line 2086
    move-wide/from16 v0, p9

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_False_Easting:D

    .line 2087
    move-wide/from16 v0, p13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/chartcross/location/MxCoordConverter;->m_TM_Scale_Factor:D

    .line 2089
    const/16 v31, 0x0

    goto/16 :goto_0
.end method
