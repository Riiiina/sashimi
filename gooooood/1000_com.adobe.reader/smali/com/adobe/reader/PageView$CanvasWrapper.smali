.class Lcom/adobe/reader/PageView$CanvasWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/reader/PageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CanvasWrapper"
.end annotation


# instance fields
.field private m_canvas:Landroid/graphics/Canvas;

.field private m_destRect:Landroid/graphics/Rect;

.field private m_srcRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_canvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_srcRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_destRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method paintSurface(Lcom/adobe/reader/JSurface;IIIIIIII)V
    .locals 5

    sget-boolean v0, Lcom/adobe/reader/JSurface;->USE_TILES:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_srcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_destRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p6, p7, p8, p9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_canvas:Landroid/graphics/Canvas;

    iget-object v1, p1, Lcom/adobe/reader/JSurface;->m_bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_srcRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_destRect:Landroid/graphics/Rect;

    invoke-static {}, Lcom/adobe/reader/PageView;->access$1700()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public setCanvas(Landroid/graphics/Canvas;)V
    .locals 1

    iput-object p1, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_canvas:Landroid/graphics/Canvas;

    iget-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_srcRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_srcRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_destRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/reader/PageView$CanvasWrapper;->m_destRect:Landroid/graphics/Rect;

    :cond_1
    return-void
.end method
