.class public final Lcom/admob/android/ads/w;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/admob/android/ads/m;


# static fields
.field private static final c:I

.field private static final d:Landroid/graphics/Rect;

.field private static final e:Landroid/graphics/PointF;

.field private static final f:Landroid/graphics/PointF;

.field private static final g:Landroid/graphics/PointF;

.field private static final h:Landroid/graphics/Matrix;

.field private static final i:Landroid/graphics/RectF;


# instance fields
.field private A:Ljava/util/Hashtable;

.field private B:Ljava/util/HashSet;

.field private C:Ljava/util/Vector;

.field private D:Lcom/admob/android/ads/ah;

.field private E:D

.field private F:D

.field private G:Ljava/util/Vector;

.field protected a:Landroid/view/View;

.field protected b:Lcom/admob/android/ads/k;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:Z

.field private n:Ljava/util/Vector;

.field private o:Ljava/util/Vector;

.field private p:Ljava/util/Vector;

.field private q:Lcom/admob/android/ads/ak;

.field private r:Landroid/graphics/Rect;

.field private s:J

.field private t:I

.field private u:I

.field private v:Lcom/admob/android/ads/ai;

.field private w:I

.field private x:I

.field private y:I

.field private z:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    const/16 v0, 0x66

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/admob/android/ads/w;->c:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/admob/android/ads/w;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/admob/android/ads/w;->e:Landroid/graphics/PointF;

    sput-object v0, Lcom/admob/android/ads/w;->f:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v3, v3}, Landroid/graphics/PointF;-><init>(FF)V

    sput-object v0, Lcom/admob/android/ads/w;->g:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    sput-object v0, Lcom/admob/android/ads/w;->h:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/admob/android/ads/w;->i:Landroid/graphics/RectF;

    return-void
.end method

.method protected constructor <init>()V
    .locals 6

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/w;->o:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/w;->p:Ljava/util/Vector;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/admob/android/ads/w;->s:J

    iput-object v2, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    iput-object v2, p0, Lcom/admob/android/ads/w;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/admob/android/ads/w;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/admob/android/ads/w;->r:Landroid/graphics/Rect;

    iput v3, p0, Lcom/admob/android/ads/w;->t:I

    iput v3, p0, Lcom/admob/android/ads/w;->u:I

    iput-object v2, p0, Lcom/admob/android/ads/w;->D:Lcom/admob/android/ads/ah;

    iput v3, p0, Lcom/admob/android/ads/w;->x:I

    iput v3, p0, Lcom/admob/android/ads/w;->w:I

    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/admob/android/ads/w;->y:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/w;->C:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/w;->n:Ljava/util/Vector;

    iput-wide v4, p0, Lcom/admob/android/ads/w;->E:D

    iput-wide v4, p0, Lcom/admob/android/ads/w;->F:D

    iput-object v2, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;F)F
    .locals 2

    float-to-double v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 8

    const-wide v6, 0x406fe00000000000L    # 255.0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    mul-double/2addr v1, v6

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    mul-double/2addr v2, v6

    double-to-int v2, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    mul-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONArray;)Landroid/graphics/Matrix;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONArray;)[F

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setValues([F)V

    :cond_0
    return-object v0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 3

    invoke-static {p0, p1}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->setValues([F)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private static a(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 5

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v1

    new-instance v2, Landroid/graphics/PointF;

    iget v3, p0, Landroid/graphics/RectF;->left:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iget v3, p0, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/w;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-int v1, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-int v2, v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v4

    double-to-int v0, v4

    new-instance v4, Landroid/graphics/Rect;

    add-int/2addr v3, v1

    add-int/2addr v0, v2

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v4

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/admob/android/ads/w;->d(Lorg/json/JSONArray;)Landroid/graphics/RectF;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p2

    goto :goto_0
.end method

.method private a(Lorg/json/JSONObject;Landroid/graphics/Rect;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    const-string v0, "ia"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {p1, v0, v1}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v0

    const-string v1, "epy"

    const/high16 v2, 0x3ee00000    # 0.4375f

    invoke-static {p1, v1, v2}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v1

    const-string v2, "bc"

    iget v3, p0, Lcom/admob/android/ads/w;->y:I

    invoke-static {p1, v2, v3}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v2

    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Lcom/admob/android/ads/w;->C:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v1, v5

    float-to-int v1, v1

    iget v5, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v5

    new-instance v5, Landroid/graphics/Rect;

    iget v6, p2, Landroid/graphics/Rect;->left:I

    iget v7, p2, Landroid/graphics/Rect;->top:I

    iget v8, p2, Landroid/graphics/Rect;->right:I

    invoke-direct {v5, v6, v7, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v6

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v0, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v0, v6, v7

    const/4 v0, 0x1

    aput v2, v6, v0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v7, v6}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/Rect;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->right:I

    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v5, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v4, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v1}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v9

    goto :goto_0

    :cond_0
    move-object v0, v9

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Ljava/lang/String;[FLorg/json/JSONArray;[Ljava/lang/String;JLandroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/animation/Animation;
    .locals 12

    const/4 v5, 0x0

    add-int/lit8 v6, p0, 0x1

    aget v7, p3, p0

    aget p3, p3, v6

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string p4, "AdMobSDK"

    const/16 p8, 0x6

    move-object/from16 v0, p4

    move/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_a

    const-string p4, "AdMobSDK"

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "Could not read keyframe animation: keyPath("

    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    move-object/from16 v0, p8

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p8, ") or valueType("

    move-object v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") is null."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p4

    move-object v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v5

    :goto_0
    if-eqz p1, :cond_1

    move-wide/from16 v0, p6

    long-to-float v0, v0

    move p2, v0

    mul-float/2addr p2, v7

    float-to-int p2, p2

    sub-float/2addr p3, v7

    move-wide/from16 v0, p6

    long-to-float v0, v0

    move/from16 p4, v0

    mul-float p3, p3, p4

    float-to-int p3, p3

    int-to-long v8, p3

    move-object v0, p1

    move-wide/from16 v1, p6

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    aget-object v5, p5, p0

    int-to-long v6, p2

    move-wide/from16 v10, p6

    invoke-static/range {v5 .. v11}, Lcom/admob/android/ads/w;->a(Ljava/lang/String;JJJ)Landroid/view/animation/Interpolator;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    return-object p1

    :cond_2
    :try_start_0
    const-string v8, "position"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "P"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/w;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object p1

    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/admob/android/ads/w;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object p2

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/admob/android/ads/w;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/q;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string v8, "opacity"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "F"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p1

    double-to-float p1, p1

    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p8

    move-wide/from16 v0, p8

    double-to-float v0, v0

    move p2, v0

    invoke-static {p1, p2}, Lcom/admob/android/ads/w;->a(FF)Lcom/admob/android/ads/r;

    move-result-object p1

    goto :goto_0

    :cond_4
    const-string v8, "bounds"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "R"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/w;->d(Lorg/json/JSONArray;)Landroid/graphics/RectF;

    move-result-object p1

    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/admob/android/ads/w;->d(Lorg/json/JSONArray;)Landroid/graphics/RectF;

    move-result-object p2

    move-object v0, p1

    move-object v1, p2

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    invoke-static {v0, v1, v2, v3}, Lcom/admob/android/ads/w;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/s;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    const-string v8, "zPosition"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "F"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p1

    double-to-float p1, p1

    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide p9

    move-wide/from16 v0, p9

    double-to-float v0, v0

    move p2, v0

    move v0, p1

    move v1, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/w;->a(FFLandroid/view/View;)Lcom/admob/android/ads/u;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    const-string v8, "backgroundColor"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "C"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/w;->c(Lorg/json/JSONArray;)I

    move-result p1

    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    invoke-static {p2}, Lcom/admob/android/ads/w;->c(Lorg/json/JSONArray;)I

    move-result p2

    move v0, p1

    move v1, p2

    move-object/from16 v2, p8

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/w;->a(IILandroid/view/View;)Lcom/admob/android/ads/p;

    move-result-object p1

    goto/16 :goto_0

    :cond_7
    const-string v8, "transform"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "AT"

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    if-eqz p11, :cond_9

    move-object/from16 v0, p4

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONArray;)Landroid/graphics/Matrix;

    move-object/from16 v0, p4

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONArray;)Landroid/graphics/Matrix;

    move-object/from16 v0, p11

    move v1, p0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    move-object/from16 v0, p11

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object p2

    move-object/from16 v0, p8

    move-object/from16 v1, p9

    move-object/from16 v2, p10

    move-object v3, p1

    move-object v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/admob/android/ads/w;->a(Landroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/view/animation/Animation;

    move-result-object p1

    goto/16 :goto_0

    :cond_8
    const-string p4, "AdMobSDK"

    const/16 p8, 0x6

    move-object/from16 v0, p4

    move/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-eqz p4, :cond_9

    const-string p4, "AdMobSDK"

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "Could not read keyframe animation: could not interpret keyPath("

    invoke-virtual/range {p8 .. p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    move-object/from16 v0, p8

    move-object v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p8, ") and valueType("

    move-object v0, p1

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ") combination."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p4

    move-object v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    move-object p1, v5

    goto/16 :goto_0

    :catch_0
    move-exception p1

    :cond_a
    move-object p1, v5

    goto/16 :goto_0
.end method

.method private static a(Landroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/view/animation/Animation;
    .locals 9

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    const-string v0, "tt"

    invoke-virtual {p2, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p3}, Lcom/admob/android/ads/w;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p4}, Lcom/admob/android/ads/w;->e(Lorg/json/JSONArray;)Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1, p0, p1}, Lcom/admob/android/ads/w;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/q;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "r"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p3}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONArray;)[F

    move-result-object v1

    invoke-static {p4}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONArray;)[F

    move-result-object v2

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Lcom/admob/android/ads/y;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v3, v0}, Lcom/admob/android/ads/w;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    new-instance v0, Lcom/admob/android/ads/o;

    iget v3, v4, Landroid/graphics/PointF;->x:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/o;-><init>([F[FFFFZ)V

    goto :goto_0

    :cond_1
    const-string v1, "sc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p3}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONArray;)[F

    move-result-object v3

    invoke-static {p4}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONArray;)[F

    move-result-object v4

    invoke-static {p0}, Lcom/admob/android/ads/y;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v7

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    aget v1, v3, v6

    aget v2, v4, v6

    aget v3, v3, v5

    aget v4, v4, v5

    iget v6, v7, Landroid/graphics/PointF;->x:F

    iget v8, v7, Landroid/graphics/PointF;->y:F

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_0

    :cond_2
    const-string v1, "sk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p3}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONArray;)[F

    move-result-object v0

    invoke-static {p4}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONArray;)[F

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {p0}, Lcom/admob/android/ads/y;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v3, v2}, Lcom/admob/android/ads/w;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    new-instance v3, Lcom/admob/android/ads/z;

    invoke-direct {v3, v0, v1, v2}, Lcom/admob/android/ads/z;-><init>([F[FLandroid/graphics/PointF;)V

    move-object v0, v3

    goto/16 :goto_0

    :cond_3
    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v3

    goto/16 :goto_0

    :cond_5
    move-object v0, v3

    goto/16 :goto_0

    :cond_6
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONArray;Lorg/json/JSONObject;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/animation/AnimationSet;
    .locals 17

    new-instance v12, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x0

    invoke-direct {v12, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v5, 0x0

    move v13, v5

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v13, v5, :cond_e

    move-object/from16 v0, p1

    move v1, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v14

    const/4 v5, 0x0

    const-string v6, "t"

    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "d"

    const/high16 v8, 0x3e800000    # 0.25f

    invoke-static {v14, v7, v8}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v7

    float-to-double v7, v7

    const-wide v9, 0x408f400000000000L    # 1000.0

    mul-double/2addr v7, v9

    double-to-int v15, v7

    const-string v7, "B"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/4 v5, 0x0

    const-string v6, "kp"

    const/4 v7, 0x0

    invoke-virtual {v14, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "vt"

    const/4 v8, 0x0

    invoke-virtual {v14, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_0

    if-nez v7, :cond_5

    :cond_0
    const-string v8, "AdMobSDK"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "AdMobSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read basic animation: keyPath("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") or valueType("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") is null."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v5

    :goto_1
    if-eqz v16, :cond_2

    const-string v5, "tf"

    const/4 v6, 0x0

    invoke-virtual {v14, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const-wide/16 v10, -0x1

    invoke-static/range {v5 .. v11}, Lcom/admob/android/ads/w;->a(Ljava/lang/String;JJJ)Landroid/view/animation/Interpolator;

    move-result-object v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    if-eqz v5, :cond_2

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_2
    move-object/from16 v5, v16

    :cond_3
    :goto_2
    if-eqz v5, :cond_4

    int-to-long v6, v15

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v5

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Landroid/view/animation/Animation;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v12, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getDuration()J

    :cond_4
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    goto/16 :goto_0

    :cond_5
    const-string v8, "position"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "P"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v5, "fv"

    sget-object v6, Lcom/admob/android/ads/w;->e:Landroid/graphics/PointF;

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v5

    const-string v6, "tv"

    sget-object v7, Lcom/admob/android/ads/w;->f:Landroid/graphics/PointF;

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/admob/android/ads/w;->a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/q;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_1

    :cond_6
    const-string v8, "opacity"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v8, "F"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string v5, "fv"

    const/4 v6, 0x0

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v5

    const-string v6, "tv"

    const/4 v7, 0x0

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v5, v6}, Lcom/admob/android/ads/w;->a(FF)Lcom/admob/android/ads/r;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_7
    const-string v8, "transform"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v8, "AT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const-string v5, "fv"

    sget-object v6, Lcom/admob/android/ads/w;->h:Landroid/graphics/Matrix;

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    const-string v5, "fv"

    sget-object v6, Lcom/admob/android/ads/w;->h:Landroid/graphics/Matrix;

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    const-string v5, "tfv"

    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const-string v6, "ttv"

    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    move-object v2, v14

    move-object v3, v5

    move-object v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Lcom/admob/android/ads/w;->a(Landroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;Lorg/json/JSONArray;)Landroid/view/animation/Animation;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_8
    const-string v8, "bounds"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "R"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v5, "fv"

    sget-object v6, Lcom/admob/android/ads/w;->i:Landroid/graphics/RectF;

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v5

    const-string v6, "tv"

    sget-object v7, Lcom/admob/android/ads/w;->i:Landroid/graphics/RectF;

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    const/4 v7, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Lcom/admob/android/ads/w;->a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/s;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_9
    const-string v8, "zPosition"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v8, "F"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string v5, "fv"

    const/4 v6, 0x0

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v5

    const-string v6, "tv"

    const/4 v7, 0x0

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v6

    move v0, v5

    move v1, v6

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/w;->a(FFLandroid/view/View;)Lcom/admob/android/ads/u;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_a
    const-string v8, "backgroundColor"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "C"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v5, "fv"

    const/4 v6, 0x0

    invoke-static {v14, v5, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v5

    const-string v6, "tv"

    const/4 v7, 0x0

    invoke-static {v14, v6, v7}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    move v0, v5

    move v1, v6

    move-object/from16 v2, p3

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/w;->a(IILandroid/view/View;)Lcom/admob/android/ads/p;

    move-result-object v5

    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_b
    const-string v8, "AdMobSDK"

    const/4 v9, 0x6

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "AdMobSDK"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not read basic animation: could not interpret keyPath("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ") and valueType("

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") combination."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move-object/from16 v16, v5

    goto/16 :goto_1

    :cond_d
    const-string v7, "K"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    int-to-long v9, v15

    move-object/from16 v5, p0

    move-object v6, v14

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v5 .. v10}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Landroid/view/View;Landroid/graphics/Rect;J)Landroid/view/animation/AnimationSet;

    move-result-object v5

    goto/16 :goto_2

    :cond_e
    if-eqz p2, :cond_f

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v12

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Landroid/view/animation/Animation;Landroid/view/animation/AnimationSet;)V

    :cond_f
    return-object v12
.end method

.method private a(Lorg/json/JSONObject;Landroid/view/View;Landroid/graphics/Rect;J)Landroid/view/animation/AnimationSet;
    .locals 18

    const-string v3, "vt"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "kt"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONObject;Ljava/lang/String;)[F

    move-result-object v6

    const-string v3, "vs"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    const-string v3, "tfs"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const-string v3, "ttvs"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    array-length v15, v6

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v3

    array-length v4, v8

    if-ne v15, v3, :cond_0

    add-int/lit8 v9, v4, 0x1

    if-eq v3, v9, :cond_2

    :cond_0
    const/4 v9, 0x0

    aget v9, v6, v9

    float-to-double v9, v9

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_2

    const/4 v9, 0x1

    sub-int v9, v15, v9

    aget v9, v6, v9

    float-to-double v9, v9

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_2

    const-string v5, "AdMobSDK"

    const/4 v7, 0x6

    invoke-static {v5, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "AdMobSDK"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "keyframe animations were invalid: numKeyTimes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " numKeyValues="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " numKeyFunctions="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keyTimes[0]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " keyTimes["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    sub-int v4, v15, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    sub-int v4, v15, v4

    aget v4, v6, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_2
    new-instance v16, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    move v1, v3

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-string v3, "kp"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/admob/android/ads/w;->e(Lorg/json/JSONObject;)I

    move-result v17

    const/4 v3, 0x0

    :goto_1
    const/4 v9, 0x1

    sub-int v9, v15, v9

    if-ge v3, v9, :cond_4

    move-wide/from16 v9, p4

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p1

    invoke-static/range {v3 .. v14}, Lcom/admob/android/ads/w;->a(ILjava/lang/String;Ljava/lang/String;[FLorg/json/JSONArray;[Ljava/lang/String;JLandroid/view/View;Landroid/graphics/Rect;Lorg/json/JSONObject;Lorg/json/JSONArray;)Landroid/view/animation/Animation;

    move-result-object v9

    if-eqz v9, :cond_3

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const-string v3, "fm"

    const-string v4, "r"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/admob/android/ads/w;->a(Ljava/lang/String;Landroid/view/animation/Animation;)V

    move-object/from16 v3, v16

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;JJJ)Landroid/view/animation/Interpolator;
    .locals 8

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    const-string v1, "i"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_3

    cmp-long v0, p1, v2

    if-eqz v0, :cond_3

    cmp-long v0, p3, v2

    if-eqz v0, :cond_3

    cmp-long v0, p5, v2

    if-eqz v0, :cond_3

    new-instance v0, Lcom/admob/android/ads/v;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/admob/android/ads/v;-><init>(Landroid/view/animation/Interpolator;JJJ)V

    :goto_1
    return-object v0

    :cond_0
    const-string v1, "o"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :cond_1
    const-string v1, "io"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :cond_2
    const-string v1, "l"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v1, v0

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method private static a(IILandroid/view/View;)Lcom/admob/android/ads/p;
    .locals 1

    const/4 v0, 0x0

    if-eq p0, p1, :cond_0

    new-instance v0, Lcom/admob/android/ads/p;

    invoke-direct {v0, p0, p1, p2}, Lcom/admob/android/ads/p;-><init>(IILandroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/q;
    .locals 9

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p2}, Lcom/admob/android/ads/y;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v3

    iget v3, p3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v3

    iget v3, p3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v2

    iput v3, p0, Landroid/graphics/PointF;->x:F

    iget v3, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    iput v3, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float v2, v3, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float v0, v2, v0

    iput v0, p1, Landroid/graphics/PointF;->y:F

    new-instance v0, Lcom/admob/android/ads/q;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget v6, p0, Landroid/graphics/PointF;->y:F

    iget v8, p1, Landroid/graphics/PointF;->y:F

    move v3, v1

    move v5, v1

    move v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/admob/android/ads/q;-><init>(IFIFIFIF)V

    :cond_0
    return-object v0
.end method

.method private static a(FF)Lcom/admob/android/ads/r;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, p1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/admob/android/ads/r;

    invoke-direct {v0, p0, p1}, Lcom/admob/android/ads/r;-><init>(FF)V

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/view/View;Landroid/graphics/Rect;)Lcom/admob/android/ads/s;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/admob/android/ads/y;->b(Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/admob/android/ads/w;->a(Landroid/graphics/RectF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v4, v1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v3, v2, v4

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v4, v0, v4

    new-instance v0, Lcom/admob/android/ads/s;

    iget v5, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct/range {v0 .. v6}, Lcom/admob/android/ads/s;-><init>(FFFFFF)V

    :cond_0
    return-object v0
.end method

.method private static a(FFLandroid/view/View;)Lcom/admob/android/ads/u;
    .locals 2

    const/4 v0, 0x0

    cmpl-float v1, p0, p1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/admob/android/ads/u;

    invoke-direct {v0, p0, p1, p2}, Lcom/admob/android/ads/u;-><init>(FFLandroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method public static a(Lcom/admob/android/ads/ai;Lorg/json/JSONObject;IIILcom/admob/android/ads/k;)Lcom/admob/android/ads/w;
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v2

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/admob/android/ads/w;

    invoke-direct {v0}, Lcom/admob/android/ads/w;-><init>()V

    iput-object p0, v0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    iput p2, v0, Lcom/admob/android/ads/w;->w:I

    iput p3, v0, Lcom/admob/android/ads/w;->x:I

    iput p4, v0, Lcom/admob/android/ads/w;->y:I

    iput-object p5, v0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-direct {v0, p1}, Lcom/admob/android/ads/w;->c(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    goto :goto_0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v2, "AdMobSDK"

    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "AdMobSDK"

    const-string v3, "couldn\'t read bundle array while adding extras"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v1, v0

    new-array v1, v1, [I

    move v2, v4

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V
    :try_end_1
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v0, "AdMobSDK"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdMobSDK"

    const-string v1, "Couldn\'t read in array when making extras"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    :try_start_2
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Boolean;

    array-length v1, v0

    new-array v1, v1, [Z

    move v2, v4

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_5

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    aput-boolean v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_1

    :cond_6
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_8

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Double;

    array-length v1, v0

    new-array v1, v1, [D

    move v2, v4

    :goto_4
    array-length v3, v1

    if-ge v2, v3, :cond_7

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    goto :goto_1

    :cond_8
    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Long;

    array-length v1, v0

    new-array v1, v1, [J

    move v2, v4

    :goto_5
    array-length v3, v1

    if-ge v2, v3, :cond_9

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p0, p1, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V
    :try_end_2
    .catch Ljava/lang/ArrayStoreException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method

.method private static a(Landroid/view/animation/Animation;IIFLjava/lang/String;Z)V
    .locals 2

    if-eqz p5, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/Animation;->setStartOffset(J)V

    invoke-virtual {p0}, Landroid/view/animation/Animation;->startNow()V

    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    invoke-static {p4, p0}, Lcom/admob/android/ads/w;->a(Ljava/lang/String;Landroid/view/animation/Animation;)V

    return-void
.end method

.method static synthetic a(Lcom/admob/android/ads/w;)V
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    invoke-virtual {v0, p0}, Lcom/admob/android/ads/ai;->a(Lcom/admob/android/ads/w;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->o:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;Landroid/view/animation/Animation;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :try_start_0
    const-string v1, "setFillEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "b"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {p1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "fb"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_1

    :cond_4
    const-string v0, "f"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1, v6}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {p1, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_1

    :cond_5
    const-string v0, "r"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v6}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    invoke-virtual {p1, v6}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->p:Ljava/util/Vector;

    new-instance v1, Lcom/admob/android/ads/al;

    invoke-direct {v1, p1, p2}, Lcom/admob/android/ads/al;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Landroid/view/animation/Animation;Landroid/view/animation/AnimationSet;)V
    .locals 11

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-string v0, "bt"

    invoke-static {p1, v0, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v0

    const-string v1, "to"

    invoke-static {p1, v1, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v2

    invoke-static {p1}, Lcom/admob/android/ads/w;->e(Lorg/json/JSONObject;)I

    move-result v1

    const-string v3, "ar"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v3, "fm"

    const-string v4, "r"

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v3, "s"

    invoke-static {p1, v3, v10}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v3

    add-float/2addr v0, v6

    add-float/2addr v0, v2

    float-to-double v6, v0

    const-wide v8, 0x408f400000000000L    # 1000.0

    mul-double/2addr v6, v8

    double-to-int v2, v6

    div-float v3, v10, v3

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/w;->a(Landroid/view/animation/Animation;IIFLjava/lang/String;Z)V

    if-eqz p3, :cond_0

    move-object v0, p3

    invoke-static/range {v0 .. v5}, Lcom/admob/android/ads/w;->a(Landroid/view/animation/Animation;IIFLjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private a(Lorg/json/JSONObject;Lcom/admob/android/ads/am;)Z
    .locals 13

    :try_start_0
    const-string v0, "t"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "f"

    sget-object v2, Lcom/admob/android/ads/w;->d:Landroid/graphics/Rect;

    invoke-static {p1, v1, v2}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/w;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "l"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_d

    const-string v0, "x"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "fs"

    const/high16 v4, 0x41500000    # 13.0f

    invoke-static {p1, v2, v4}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v2

    const-string v4, "fa"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    if-eqz v4, :cond_16

    const/4 v7, 0x0

    move v12, v7

    move v7, v5

    move v5, v12

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v5, v8, :cond_5

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "b"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    or-int/lit8 v7, v7, 0x1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v9, "i"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    or-int/lit8 v7, v7, 0x2

    goto :goto_1

    :cond_2
    const-string v9, "m"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_3
    const-string v9, "s"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    sget-object v6, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_4
    const-string v9, "ss"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    sget-object v6, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_1

    :cond_5
    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v4

    :goto_2
    iget v5, p0, Lcom/admob/android/ads/w;->w:I

    const-string v6, "fco"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "fco"

    invoke-static {p1, v6, v5}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v5, :cond_6

    move v5, v6

    :cond_6
    :goto_3
    const-string v6, "afstfw"

    const/4 v7, 0x1

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "mfs"

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {p1, v7, v8}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v7

    const-string v8, "nol"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    new-instance v9, Lcom/admob/android/ads/ac;

    iget-object v10, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v10}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {}, Lcom/admob/android/ads/k;->b()F

    move-result v11

    invoke-direct {v9, v10, v11}, Lcom/admob/android/ads/ac;-><init>(Landroid/content/Context;F)V

    iput-boolean v6, v9, Lcom/admob/android/ads/ac;->b:Z

    iget v6, v9, Lcom/admob/android/ads/ac;->c:F

    mul-float/2addr v6, v7

    iput v6, v9, Lcom/admob/android/ads/ac;->a:F

    const/4 v6, 0x0

    invoke-virtual {v9, v6}, Lcom/admob/android/ads/ac;->setBackgroundColor(I)V

    invoke-virtual {v9, v0}, Lcom/admob/android/ads/ac;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v9, v5}, Lcom/admob/android/ads/ac;->setTextColor(I)V

    const/4 v0, 0x1

    invoke-virtual {v9, v0, v2}, Lcom/admob/android/ads/ac;->setTextSize(IF)V

    invoke-virtual {v9, v4}, Lcom/admob/android/ads/ac;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v9, v8}, Lcom/admob/android/ads/ac;->setLines(I)V

    move-object v0, v9

    :goto_4
    move-object v2, v0

    move v0, v3

    :goto_5
    if-eqz v2, :cond_13

    if-eqz v0, :cond_7

    const-string v0, "bgc"

    const/4 v3, 0x0

    invoke-static {p1, v0, v3}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    const-string v0, "ap"

    sget-object v3, Lcom/admob/android/ads/w;->g:Landroid/graphics/PointF;

    invoke-static {p1, v0, v3}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-static {v2}, Lcom/admob/android/ads/y;->c(Landroid/view/View;)Lcom/admob/android/ads/y;

    move-result-object v3

    iput-object v0, v3, Lcom/admob/android/ads/y;->b:Landroid/graphics/PointF;

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x0

    const-string v3, "a"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const-string v4, "ag"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v3, :cond_8

    invoke-direct {p0, v3, v4, v2, v1}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONArray;Lorg/json/JSONObject;Landroid/view/View;Landroid/graphics/Rect;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    :cond_8
    const-string v3, "ut"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    invoke-static {v2}, Lcom/admob/android/ads/y;->c(Landroid/view/View;)Lcom/admob/android/ads/y;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_9
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Lcom/admob/android/ads/ag;

    invoke-direct {v1}, Lcom/admob/android/ads/ag;-><init>()V

    iput-object v2, v1, Lcom/admob/android/ads/ag;->a:Landroid/view/View;

    iput-object v3, v1, Lcom/admob/android/ads/ag;->b:Landroid/widget/RelativeLayout$LayoutParams;

    iput-object v0, v1, Lcom/admob/android/ads/ag;->c:Landroid/view/animation/AnimationSet;

    iget-object v0, p2, Lcom/admob/android/ads/am;->a:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, "cav"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0, v2, v3}, Lcom/admob/android/ads/k;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    :cond_a
    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_b
    const-string v5, "fc"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    iget v5, p0, Lcom/admob/android/ads/w;->x:I

    goto/16 :goto_3

    :cond_c
    iget v5, p0, Lcom/admob/android/ads/w;->w:I

    goto/16 :goto_3

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_4

    :cond_e
    const-string v4, "bg"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-direct {p0, p1, v1}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Landroid/graphics/Rect;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    move v12, v2

    move-object v2, v0

    move v0, v12

    goto/16 :goto_5

    :cond_f
    const-string v4, "i"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-direct {p0, p1}, Lcom/admob/android/ads/w;->f(Lorg/json/JSONObject;)Landroid/view/View;

    move-result-object v0

    :goto_7
    move-object v2, v0

    move v0, v3

    goto/16 :goto_5

    :cond_10
    const-string v4, "P"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_12

    new-instance v0, Landroid/view/View;

    iget-object v2, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v2}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v1, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_11

    const-string v1, "AdMobSDK"

    const-string v2, "exception while trying to create a flex view."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_11
    const/4 v0, 0x0

    goto :goto_6

    :cond_12
    const/4 v0, 0x0

    goto :goto_7

    :cond_13
    :try_start_1
    const-string v0, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "AdMobSDK"

    const-string v1, "created a null view."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_14
    const/4 v0, 0x0

    goto :goto_6

    :cond_15
    move v0, v3

    goto/16 :goto_5

    :cond_16
    move-object v4, v6

    goto/16 :goto_2
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 6

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string v0, "a"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "d"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "f"

    const/high16 v3, 0x10000000

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "b"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3}, Lcom/admob/android/ads/w;->d(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/admob/android/ads/w;->n:Ljava/util/Vector;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz v2, :cond_0

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v5, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method private static b(Lorg/json/JSONArray;)[F
    .locals 5

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    :try_start_0
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v1, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static b(Lorg/json/JSONObject;Ljava/lang/String;)[F
    .locals 1

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONArray;)[F

    move-result-object v0

    goto :goto_0
.end method

.method private static c(Lorg/json/JSONArray;)I
    .locals 7

    const-wide v5, 0x406fe00000000000L    # 255.0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    mul-double/2addr v0, v5

    double-to-int v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    mul-double/2addr v1, v5

    double-to-int v1, v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    mul-double/2addr v2, v5

    double-to-int v2, v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    mul-double/2addr v3, v5

    double-to-int v3, v3

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method private c(Lorg/json/JSONObject;)Z
    .locals 10

    const/4 v4, 0x0

    const/4 v9, 0x6

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v0, "jsonp_url"

    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tracking_url"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v8}, Lcom/admob/android/ads/w;->a(Ljava/lang/String;Z)V

    invoke-direct {p0, v1, v7}, Lcom/admob/android/ads/w;->a(Ljava/lang/String;Z)V

    const-string v1, "text"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/admob/android/ads/w;->j:Ljava/lang/String;

    const-string v1, "6"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "8"

    invoke-virtual {p1, v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/admob/android/ads/w;->k:Ljava/lang/String;

    sget-object v2, Lcom/admob/android/ads/ak;->d:Lcom/admob/android/ads/ak;

    const-string v3, "map"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v1, Lcom/admob/android/ads/ak;->a:Lcom/admob/android/ads/ak;

    :goto_0
    iput-object v1, p0, Lcom/admob/android/ads/w;->q:Lcom/admob/android/ads/ak;

    sget-object v2, Lcom/admob/android/ads/ak;->g:Lcom/admob/android/ads/ak;

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v1}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Landroid/app/Activity;

    if-nez v1, :cond_8

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    invoke-virtual {v0}, Lcom/admob/android/ads/ai;->a()V

    :cond_0
    move v0, v7

    :goto_1
    return v0

    :cond_1
    const-string v3, "video"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v1, Lcom/admob/android/ads/ak;->b:Lcom/admob/android/ads/ak;

    goto :goto_0

    :cond_2
    const-string v3, "app"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v1, Lcom/admob/android/ads/ak;->c:Lcom/admob/android/ads/ak;

    goto :goto_0

    :cond_3
    const-string v3, "url"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v1, Lcom/admob/android/ads/ak;->d:Lcom/admob/android/ads/ak;

    goto :goto_0

    :cond_4
    const-string v3, "call"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v1, Lcom/admob/android/ads/ak;->e:Lcom/admob/android/ads/ak;

    goto :goto_0

    :cond_5
    const-string v3, "itunes"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v1, Lcom/admob/android/ads/ak;->f:Lcom/admob/android/ads/ak;

    goto :goto_0

    :cond_6
    const-string v3, "canvas"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v1, Lcom/admob/android/ads/ak;->g:Lcom/admob/android/ads/ak;

    goto :goto_0

    :cond_7
    const-string v3, "contact"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/admob/android/ads/ak;->h:Lcom/admob/android/ads/ak;

    goto :goto_0

    :cond_8
    const-string v1, "refreshInterval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "refreshInterval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/admob/android/ads/w;->E:D

    :cond_9
    const-string v1, "density"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "density"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/admob/android/ads/w;->F:D

    :goto_2
    const-string v1, "d"

    invoke-static {p1, v1, v6}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_a

    new-instance v1, Landroid/graphics/PointF;

    const/high16 v2, 0x43a00000    # 320.0f

    const/high16 v3, 0x42400000    # 48.0f

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    :cond_a
    iget v2, v1, Landroid/graphics/PointF;->x:F

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_b

    iget v2, v1, Landroid/graphics/PointF;->y:F

    cmpg-float v2, v2, v4

    if-gez v2, :cond_d

    :cond_b
    move v0, v7

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/admob/android/ads/k;->b()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/admob/android/ads/w;->F:D

    goto :goto_2

    :cond_d
    iget v2, v1, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iput v2, p0, Lcom/admob/android/ads/w;->t:I

    iput v1, p0, Lcom/admob/android/ads/w;->u:I

    const-string v1, "ac"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-direct {p0, v1}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONObject;)V

    :cond_e
    const-string v1, "ac"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_10

    move v2, v7

    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_10

    :try_start_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/admob/android/ads/w;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v3, "AdMobSDK"

    invoke-static {v3, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "AdMobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not form an intent from ad action response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    const-string v1, "cpm_url"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    iput-boolean v8, p0, Lcom/admob/android/ads/w;->l:Z

    invoke-direct {p0, v1}, Lcom/admob/android/ads/w;->a(Ljava/lang/String;)V

    :cond_11
    const-string v1, "tracking_pixel"

    invoke-virtual {p1, v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_12
    :goto_5
    if-eqz v1, :cond_13

    invoke-direct {p0, v1}, Lcom/admob/android/ads/w;->a(Ljava/lang/String;)V

    :cond_13
    const-string v1, "markup"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_14

    move v0, v7

    goto/16 :goto_1

    :catch_1
    move-exception v2

    :try_start_2
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v1

    goto :goto_5

    :cond_14
    if-nez v0, :cond_16

    const-string v0, "AdMobSDK"

    invoke-static {v0, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string v0, "AdMobSDK"

    const-string v1, "Bad response:  didn\'t get clickURLString.  erroring out."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    move v0, v7

    goto/16 :goto_1

    :cond_16
    iput-object v1, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    :try_start_3
    invoke-direct {p0}, Lcom/admob/android/ads/w;->n()V

    invoke-direct {p0}, Lcom/admob/android/ads/w;->m()V

    iget-object v0, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    const-string v1, "itid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_17

    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/admob/android/ads/w;->s:J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_17
    :goto_6
    invoke-direct {p0}, Lcom/admob/android/ads/w;->l()V

    invoke-direct {p0}, Lcom/admob/android/ads/w;->k()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-direct {p0}, Lcom/admob/android/ads/w;->o()V

    :cond_18
    move v0, v8

    goto/16 :goto_1

    :catch_2
    move-exception v0

    const-string v1, "AdMobSDK"

    invoke-static {v1, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "AdMobSDK"

    const-string v2, "Could not read in the flex ad."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_3
    move-exception v2

    goto :goto_5

    :cond_19
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private static d(Lorg/json/JSONArray;)Landroid/graphics/RectF;
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v3

    double-to-float v3, v3

    new-instance v4, Landroid/graphics/RectF;

    add-float/2addr v2, v0

    add-float/2addr v3, v1

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v4
.end method

.method private static d(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v3, v0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    instance-of v4, v1, Ljava/lang/Boolean;

    if-eqz v4, :cond_3

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    instance-of v4, v1, Ljava/lang/Double;

    if-eqz v4, :cond_4

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    :cond_4
    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_5

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    :cond_5
    instance-of v4, v1, Lorg/json/JSONObject;

    if-eqz v4, :cond_6

    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/admob/android/ads/w;->d(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    check-cast v1, Lorg/json/JSONArray;

    invoke-static {v3, v0, v1}, Lcom/admob/android/ads/w;->a(Landroid/os/Bundle;Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    :cond_7
    move-object v0, v3

    :cond_8
    return-object v0

    :cond_9
    move-object v3, v0

    goto :goto_0
.end method

.method private static e(Lorg/json/JSONObject;)I
    .locals 2

    const-string v0, "rc"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v0

    float-to-int v0, v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method private static e(Lorg/json/JSONArray;)Landroid/graphics/PointF;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    double-to-float v1, v1

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v2
.end method

.method private f(Lorg/json/JSONObject;)Landroid/view/View;
    .locals 19

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    move-object v4, v0

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    const-string v3, "$"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    if-eqz v3, :cond_6

    const/4 v5, 0x0

    :try_start_0
    array-length v6, v3

    invoke-static {v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v5, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v4, "b"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "bw"

    const/high16 v6, 0x3f000000    # 0.5f

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v4

    const-string v6, "bdc"

    sget v7, Lcom/admob/android/ads/w;->c:I

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "br"

    const/high16 v8, 0x40d00000    # 6.5f

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v8

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    cmpg-float v8, v4, v8

    if-gez v8, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    :try_start_2
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v12, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v12, v13, v14}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    add-float v12, v7, v4

    new-instance v13, Landroid/graphics/Path;

    invoke-direct {v13}, Landroid/graphics/Path;-><init>()V

    new-instance v14, Landroid/graphics/RectF;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move v0, v8

    int-to-float v0, v0

    move/from16 v17, v0

    move v0, v9

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v15, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v13, v14, v12, v12, v15}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    sget-object v12, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v13, v12}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    const/4 v12, 0x0

    const/4 v13, 0x0

    new-instance v15, Landroid/graphics/Paint;

    const/16 v16, 0x3

    invoke-direct/range {v15 .. v16}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v11, v3, v12, v13, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    sget-object v12, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v11, v14, v12}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    new-instance v12, Landroid/graphics/Paint;

    const/4 v13, 0x1

    invoke-direct {v12, v13}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v12, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v4, v13

    new-instance v13, Landroid/graphics/RectF;

    int-to-float v8, v8

    sub-float/2addr v8, v4

    int-to-float v9, v9

    sub-float/2addr v9, v4

    invoke-direct {v13, v4, v4, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v6, v13, v7, v7, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    invoke-virtual {v11, v6, v12}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    move-object v3, v10

    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/w;->C:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v3, v5

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admob/android/ads/w;->C:Ljava/util/Vector;

    move-object v4, v0

    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-object v3, v5

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_2
    const-string v5, "AdMobSDK"

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "AdMobSDK"

    const-string v6, "couldn\'t create an imageView"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v3, v4

    goto :goto_1

    :cond_5
    const-string v3, "AdMobSDK"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "AdMobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find asset name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v3, v4

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v4, v5

    goto :goto_2

    :catch_2
    move-exception v4

    goto :goto_0
.end method

.method private j()V
    .locals 4

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/admob/android/ads/w;->n:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v0, "AdMobSDK"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdMobSDK"

    const-string v1, "Could not find a resolving intent on ad click"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AdMobSDK"

    const-string v1, "Context null, not able to start Activity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private k()Z
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/admob/android/ads/ab;

    invoke-virtual {p0}, Lcom/admob/android/ads/ab;->g()V

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method

.method private m()V
    .locals 8

    const/16 v7, 0x2c

    const/4 v6, 0x3

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/admob/android/ads/w;->t:I

    iget v2, p0, Lcom/admob/android/ads/w;->u:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    const-string v2, "ta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    const-string v2, "ta"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    new-instance v5, Landroid/graphics/Rect;

    add-int/2addr v4, v2

    add-int/2addr v1, v3

    invoke-direct {v5, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v7, :cond_0

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lt v1, v7, :cond_0

    move-object v0, v5

    :cond_0
    :goto_0
    iput-object v0, p0, Lcom/admob/android/ads/w;->r:Landroid/graphics/Rect;

    return-void

    :catch_0
    move-exception v1

    const-string v1, "AdMobSDK"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    const-string v2, "could not read in the touchable area for the ad."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private n()V
    .locals 7

    iget-object v0, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    const-string v1, "$"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v4

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/admob/android/ads/aj;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v0, v6, p0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;)Lcom/admob/android/ads/ab;

    move-result-object v0

    iget-object v5, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    return-void
.end method

.method private o()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    iput-object v4, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "v"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v1, Lcom/admob/android/ads/am;

    iget-object v2, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-direct {v1, v2, p0}, Lcom/admob/android/ads/am;-><init>(Lcom/admob/android/ads/k;Lcom/admob/android/ads/w;)V

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/admob/android/ads/w;->a(Lorg/json/JSONObject;Lcom/admob/android/ads/am;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    invoke-virtual {v0}, Lcom/admob/android/ads/ai;->a()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput-object v4, p0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    :cond_2
    return-void

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :try_start_2
    sget-object v0, Lcom/admob/android/ads/AdView;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "AdMobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "AdMobSDK"

    const-string v2, "couldn\'t construct the views."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    invoke-virtual {v0}, Lcom/admob/android/ads/ai;->a()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private p()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/ab;

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput-object v3, p0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    :cond_2
    iput-object v3, p0, Lcom/admob/android/ads/w;->z:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/admob/android/ads/w;->v:Lcom/admob/android/ads/ai;

    invoke-virtual {v0}, Lcom/admob/android/ads/ai;->a()V

    :cond_3
    return-void
.end method


# virtual methods
.method final a()D
    .locals 2

    iget-wide v0, p0, Lcom/admob/android/ads/w;->E:D

    return-wide v0
.end method

.method final a(I)I
    .locals 6

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/admob/android/ads/w;->F:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/admob/android/ads/w;->F:D

    mul-double/2addr v0, v2

    :cond_0
    double-to-int v0, v0

    return v0
.end method

.method final a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-wide v1, p0, Lcom/admob/android/ads/w;->F:D

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_0

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/w;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/w;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/w;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Lcom/admob/android/ads/w;->a(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-object v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Landroid/view/View;
    .locals 5

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    new-instance v1, Lcom/admob/android/ads/a/a;

    invoke-direct {v1, p1, v0, p3, p0}, Lcom/admob/android/ads/a/a;-><init>(Landroid/content/Context;Landroid/widget/RelativeLayout;Ljava/lang/String;Lcom/admob/android/ads/w;)V

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/a/a;->setBackgroundColor(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/a/a;->setId(I)V

    invoke-virtual {p0, p4}, Lcom/admob/android/ads/w;->a(I)I

    move-result v2

    invoke-virtual {p0, p5}, Lcom/admob/android/ads/w;->a(I)I

    move-result v3

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#sdk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/admob/android/ads/a/a;->b:Ljava/lang/String;

    const-string v2, "http://mm.admob.com/static/android/canvas.html"

    invoke-virtual {v1, v2}, Lcom/admob/android/ads/a/a;->loadUrl(Ljava/lang/String;)V

    return-object v0
.end method

.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/admob/android/ads/ab;)V
    .locals 4

    invoke-virtual {p1}, Lcom/admob/android/ads/ab;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/admob/android/ads/ab;->d()[B

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/admob/android/ads/w;->A:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/admob/android/ads/w;->B:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-direct {p0}, Lcom/admob/android/ads/w;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/admob/android/ads/w;->o()V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_2
    const-string v1, "AdMobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed reading asset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") for ad"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/admob/android/ads/w;->p()V

    goto :goto_0
.end method

.method public final a(Lcom/admob/android/ads/ab;Ljava/lang/Exception;)V
    .locals 6

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    const-string v0, "AdMobSDK"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/admob/android/ads/ab;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/admob/android/ads/ab;->f()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed downloading assets for ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/admob/android/ads/w;->p()V

    return-void

    :cond_1
    const-string v0, "AdMobSDK"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/admob/android/ads/ab;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/admob/android/ads/ab;->f()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    const-string v2, "AdMobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed downloading assets for ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move-object v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    move-object v1, v2

    goto :goto_2

    :cond_4
    move-object v1, v0

    move-object v0, v2

    goto :goto_0

    :cond_5
    move-object v0, v2

    move-object v1, v2

    goto :goto_0
.end method

.method public final a(Lcom/admob/android/ads/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/admob/android/ads/w;->D:Lcom/admob/android/ads/ah;

    return-void
.end method

.method public final a(Lcom/admob/android/ads/k;)V
    .locals 0

    iput-object p1, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 7

    iget-boolean v0, p0, Lcom/admob/android/ads/w;->m:Z

    if-eqz v0, :cond_3

    const-string v0, "AdMobSDK"

    const-string v1, "Ad clicked again.  Stats on admob.com will only reflect the first click."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/admob/android/ads/ar;->a:[I

    iget-object v1, p0, Lcom/admob/android/ads/w;->q:Lcom/admob/android/ads/ak;

    invoke-virtual {v1}, Lcom/admob/android/ads/ak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0}, Lcom/admob/android/ads/w;->j()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/admob/android/ads/w;->D:Lcom/admob/android/ads/ah;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/admob/android/ads/w;->D:Lcom/admob/android/ads/ah;

    invoke-interface {v0}, Lcom/admob/android/ads/ah;->d()V

    :cond_2
    return-void

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admob/android/ads/w;->m:Z

    const-string v0, "AdMobSDK"

    const-string v1, "Ad clicked."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/admob/android/ads/w;->p:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admob/android/ads/al;

    new-instance v3, Lcom/admob/android/ads/aq;

    invoke-direct {v3, p0}, Lcom/admob/android/ads/aq;-><init>(Lcom/admob/android/ads/w;)V

    const/4 v4, 0x0

    iget-boolean v5, v0, Lcom/admob/android/ads/al;->b:Z

    if-eqz v5, :cond_4

    move-object v4, p1

    :cond_4
    iget-object v0, v0, Lcom/admob/android/ads/al;->a:Ljava/lang/String;

    const-string v5, "click_time_tracking"

    invoke-static {v1}, Lcom/admob/android/ads/aj;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v5, v6, v4, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/admob/android/ads/m;)Lcom/admob/android/ads/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admob/android/ads/ab;->g()V

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/admob/android/ads/w;->n:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/admob/android/ads/w;->k:Ljava/lang/String;

    sget-object v0, Lcom/admob/android/ads/AdView;->a:Landroid/os/Handler;

    if-eqz v0, :cond_1

    sget-object v6, Lcom/admob/android/ads/AdView;->a:Landroid/os/Handler;

    new-instance v0, Lcom/admob/android/ads/an;

    const/16 v3, 0x140

    const/16 v4, 0x127

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/admob/android/ads/an;-><init>(Ljava/lang/String;Ljava/lang/String;IILcom/admob/android/ads/w;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lcom/admob/android/ads/k;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    return-object v0
.end method

.method public final b(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/admob/android/ads/w;->s:J

    return-wide v0
.end method

.method final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/admob/android/ads/w;->l:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/admob/android/ads/w;->t:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/admob/android/ads/w;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/admob/android/ads/w;

    invoke-virtual {p0}, Lcom/admob/android/ads/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/admob/android/ads/w;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/admob/android/ads/w;->u:I

    return v0
.end method

.method public final g()Landroid/graphics/Rect;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/admob/android/ads/w;->r:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/admob/android/ads/w;->t:I

    iget v2, p0, Lcom/admob/android/ads/w;->u:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/admob/android/ads/w;->r:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/admob/android/ads/w;->r:Landroid/graphics/Rect;

    return-object v0
.end method

.method final h()V
    .locals 3

    iget-object v0, p0, Lcom/admob/android/ads/w;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/admob/android/ads/w;->C:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/admob/android/ads/w;->G:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_4
    return-void
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/admob/android/ads/w;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method final i()V
    .locals 4

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admob/android/ads/w;->b:Lcom/admob/android/ads/k;

    invoke-virtual {v0}, Lcom/admob/android/ads/k;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/admob/android/ads/w;->o:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v2, "impression_request"

    invoke-static {v0}, Lcom/admob/android/ads/aj;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/admob/android/ads/ab;->g()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/admob/android/ads/w;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method
