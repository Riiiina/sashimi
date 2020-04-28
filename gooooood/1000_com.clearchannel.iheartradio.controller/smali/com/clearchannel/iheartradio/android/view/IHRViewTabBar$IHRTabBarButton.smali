.class public Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;
.super Landroid/widget/Button;
.source "IHRViewTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRTabBarButton"
.end annotation


# instance fields
.field protected mState:I

.field protected mType:I

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "type"    # I

    .prologue
    .line 146
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;

    .line 143
    invoke-direct {p0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 145
    iput p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mType:I

    return-void
.end method


# virtual methods
.method public isDown()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 156
    iget v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 167
    .local v4, "paint":Landroid/graphics/Paint;
    iget v6, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mState:I

    .line 169
    .local v6, "state":I
    const/4 v8, 0x3

    if-eq v6, v8, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 170
    const/4 v6, 0x0

    .line 173
    :cond_0
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 174
    .local v5, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->getHeight()I

    move-result v1

    .line 175
    .local v1, "h":I
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->getWidth()I

    move-result v7

    .line 177
    .local v7, "w":I
    iput v7, v5, Landroid/graphics/Rect;->right:I

    .line 178
    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 180
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->imageForBack(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 184
    iget v8, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mType:I

    if-lez v8, :cond_1

    .line 185
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;

    const/4 v9, -0x1

    invoke-virtual {v8, v6, v9}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->imageForBack(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 190
    :cond_1
    iget v8, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mType:I

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    .line 191
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->imageForBack(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    const/4 v8, 0x1

    sub-int v8, v7, v8

    int-to-float v8, v8

    const/4 v9, 0x0

    invoke-virtual {p1, v0, v8, v9, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 195
    :cond_2
    const/4 v8, 0x3

    iget v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mState:I

    if-ne v8, v9, :cond_3

    .line 196
    new-instance v4, Landroid/graphics/Paint;

    .end local v4    # "paint":Landroid/graphics/Paint;
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 197
    .restart local v4    # "paint":Landroid/graphics/Paint;
    const/16 v8, 0x80

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 200
    :cond_3
    const/4 v8, 0x2

    if-ne v8, v6, :cond_4

    const/4 v8, 0x1

    iget v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mState:I

    if-ne v8, v9, :cond_4

    .line 201
    const/4 v6, 0x1

    .line 205
    :cond_4
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;

    iget v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mType:I

    invoke-virtual {v8, v6, v9}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->imageForIcon(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 206
    const/4 v8, 0x4

    sub-int v3, v7, v8

    .line 208
    .local v3, "maxW":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .local v2, "iconW":I
    if-le v2, v3, :cond_5

    move v2, v3

    .line 210
    :cond_5
    sub-int v8, v7, v2

    div-int/lit8 v8, v8, 0x2

    iput v8, v5, Landroid/graphics/Rect;->left:I

    .line 211
    iget v8, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v2

    iput v8, v5, Landroid/graphics/Rect;->right:I

    .line 213
    const/4 v8, 0x0

    invoke-virtual {p1, v0, v8, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 215
    new-instance v4, Landroid/graphics/Paint;

    .end local v4    # "paint":Landroid/graphics/Paint;
    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 216
    .restart local v4    # "paint":Landroid/graphics/Paint;
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 217
    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 218
    sget-object v8, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->kTabBarButtonColors:[I

    aget v8, v8, v6

    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    sget-object v8, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->kTabBarButtonNames:[Ljava/lang/String;

    iget v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mType:I

    aget-object v8, v8, v9

    int-to-float v9, v7

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    int-to-float v10, v1

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v11

    const/high16 v12, 0x3f000000    # 0.5f

    mul-float/2addr v11, v12

    sub-float/2addr v10, v11

    const/high16 v11, 0x3f800000    # 1.0f

    add-float/2addr v10, v11

    invoke-virtual {p1, v8, v9, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    return-void
.end method

.method public setIsDown(Z)V
    .locals 1
    .param p1, "down"    # Z

    .prologue
    .line 157
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->setState(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setState(I)V
    .locals 1
    .param p1, "inState"    # I

    .prologue
    .line 149
    iget v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mState:I

    if-eq v0, p1, :cond_0

    .line 150
    iput p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mState:I

    .line 152
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->invalidate()V

    .line 154
    :cond_0
    return-void
.end method
