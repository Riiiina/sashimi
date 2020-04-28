.class public Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;
.super Landroid/widget/RelativeLayout;
.source "IHRViewSearch.java"


# static fields
.field public static sFill:Landroid/graphics/Bitmap;


# instance fields
.field protected mFind:Landroid/widget/TextView;

.field protected mList:Landroid/view/View;

.field protected mSearch:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->setWillNotDraw(Z)V

    .line 26
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->mFind:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->addView(Landroid/view/View;)V

    .line 27
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->mSearch:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->addView(Landroid/view/View;)V

    .line 29
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->sFill:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020061

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->sFill:Landroid/graphics/Bitmap;

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->mFind:Landroid/widget/TextView;

    const-string v1, "Find:"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v5, 0x0

    .line 40
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 42
    .local v0, "rect":Landroid/graphics/Rect;
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewSearch;->sFill:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v5, v0, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 44
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 57
    return-void
.end method
