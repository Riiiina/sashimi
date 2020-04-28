.class public Lcom/andoop/android/highscore/HighScoreActivity$RankListView;
.super Landroid/view/View;
.source "HighScoreActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/highscore/HighScoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RankListView"
.end annotation


# instance fields
.field json:Lorg/json/JSONObject;

.field paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 383
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 384
    invoke-direct {p0, p2}, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->initPaint(Landroid/util/AttributeSet;)V

    .line 385
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 388
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 389
    invoke-direct {p0, p2}, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->initPaint(Landroid/util/AttributeSet;)V

    .line 390
    return-void
.end method

.method private drawRow(Landroid/graphics/Canvas;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "rowY"    # F
    .param p3, "rank"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "score"    # Ljava/lang/String;

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->getWidth()I

    move-result v4

    .line 401
    .local v4, "width":I
    const/4 v2, 0x0

    .line 402
    .local v2, "rankPositionX":F
    const/high16 v0, 0x428c0000    # 70.0f

    .line 403
    .local v0, "namePositionX":F
    int-to-float v3, v4

    .line 405
    .local v3, "scorePositionX":F
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->paint:Landroid/graphics/Paint;

    .line 406
    .local v1, "p":Landroid/graphics/Paint;
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 407
    const/4 v5, 0x0

    invoke-virtual {p1, p3, v5, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 408
    const/high16 v5, 0x428c0000    # 70.0f

    invoke-virtual {p1, p4, v5, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 410
    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 411
    invoke-virtual {p1, p5, v3, p2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 412
    return-void
.end method

.method private initPaint(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 393
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->paint:Landroid/graphics/Paint;

    .line 394
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->paint:Landroid/graphics/Paint;

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 395
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "textColor"

    const/4 v3, -0x1

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 396
    .local v0, "color":I
    iget-object v1, p0, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 417
    const/high16 v12, 0x41400000    # 12.0f

    .line 418
    .local v12, "titleRowY":F
    const/high16 v2, 0x41400000    # 12.0f

    const-string v3, "Rank"

    const-string v4, "Name"

    const-string v5, "Score"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->drawRow(Landroid/graphics/Canvas;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->json:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->json:Lorg/json/JSONObject;

    const-string v1, "rank"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 423
    .local v10, "rank":I
    iget-object v0, p0, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->json:Lorg/json/JSONObject;

    const-string v1, "scores"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 424
    .local v6, "array":Lorg/json/JSONArray;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v8, v0, :cond_0

    const/4 v0, 0x5

    if-lt v8, v0, :cond_1

    .line 436
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v8    # "i":I
    .end local v10    # "rank":I
    :cond_0
    :goto_1
    return-void

    .line 425
    .restart local v6    # "array":Lorg/json/JSONArray;
    .restart local v8    # "i":I
    .restart local v10    # "rank":I
    :cond_1
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    .line 426
    .local v9, "obj":Lorg/json/JSONObject;
    const-string v0, "name"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 427
    .local v4, "name":Ljava/lang/String;
    const-string v0, "score"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 429
    .local v11, "score":I
    const/high16 v0, 0x420c0000    # 35.0f

    mul-int/lit8 v1, v8, 0x17

    int-to-float v1, v1

    add-float v2, v0, v1

    .line 430
    .local v2, "positionY":F
    new-instance v0, Ljava/lang/StringBuilder;

    add-int v1, v10, v8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/highscore/HighScoreActivity$RankListView;->drawRow(Landroid/graphics/Canvas;FLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 432
    .end local v2    # "positionY":F
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "array":Lorg/json/JSONArray;
    .end local v8    # "i":I
    .end local v9    # "obj":Lorg/json/JSONObject;
    .end local v10    # "rank":I
    .end local v11    # "score":I
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 433
    .local v7, "e":Lorg/json/JSONException;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "HIGHSCORE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->d(Ljava/lang/String;)V

    goto :goto_1
.end method
