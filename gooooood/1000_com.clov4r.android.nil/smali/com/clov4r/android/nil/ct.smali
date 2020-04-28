.class public Lcom/clov4r/android/nil/ct;
.super Landroid/widget/PopupWindow;

# interfaces
.implements Landroid/view/KeyEvent$Callback;


# instance fields
.field a:Landroid/view/View;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/LayoutInflater;

.field private final d:Landroid/view/WindowManager;

.field private e:I

.field private f:I

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/view/ViewGroup;

.field private j:Landroid/view/animation/Animation;

.field private k:Landroid/view/View;

.field private l:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x2

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/clov4r/android/nil/ct;->k:Landroid/view/View;

    iput-object p3, p0, Lcom/clov4r/android/nil/ct;->l:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/clov4r/android/nil/ct;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/clov4r/android/nil/ct;->d:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->b:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/ct;->c:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030016

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/ct;->a:Landroid/view/View;

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->a:Landroid/view/View;

    invoke-super {p0, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->d:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/ct;->e:I

    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lcom/clov4r/android/nil/ct;->setWindowLayoutMode(II)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/ct;->f:I

    invoke-virtual {p0, v3}, Lcom/clov4r/android/nil/ct;->setWidth(I)V

    invoke-virtual {p0, v3}, Lcom/clov4r/android/nil/ct;->setHeight(I)V

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ct;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->a:Landroid/view/View;

    const v1, 0x7f0b00d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ct;->g:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->a:Landroid/view/View;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ct;->h:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->a:Landroid/view/View;

    const v1, 0x7f0b00ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/clov4r/android/nil/ct;->i:Landroid/view/ViewGroup;

    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/ct;->setFocusable(Z)V

    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/ct;->setTouchable(Z)V

    invoke-virtual {p0, v4}, Lcom/clov4r/android/nil/ct;->setOutsideTouchable(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->b:Landroid/content/Context;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/ct;->j:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->j:Landroid/view/animation/Animation;

    new-instance v1, Lcom/clov4r/android/nil/o;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/o;-><init>(Lcom/clov4r/android/nil/ct;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method private a(II)V
    .locals 4

    const v1, 0x7f0b00d0

    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->g:Landroid/widget/ImageView;

    :goto_0
    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/clov4r/android/nil/ct;->h:Landroid/widget/ImageView;

    :goto_1
    iget-object v2, p0, Lcom/clov4r/android/nil/ct;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    div-int/lit8 v0, v2, 0x2

    sub-int v0, p2, v0

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v0, 0x4

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->h:Landroid/widget/ImageView;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/clov4r/android/nil/ct;->g:Landroid/widget/ImageView;

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->l:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ct;->a(I)V

    return-void
.end method

.method public a(I)V
    .locals 6

    const/4 v1, 0x0

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->k:Landroid/view/View;

    invoke-super {p0, v0, v1, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ct;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ct;->getContentView()Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ct;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Lcom/clov4r/android/nil/ct;->f:I

    neg-int v1, v1

    iget-object v2, p0, Lcom/clov4r/android/nil/ct;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le v2, v0, :cond_1

    const v2, 0x7f0b00d1

    invoke-direct {p0, v2, p1}, Lcom/clov4r/android/nil/ct;->a(II)V

    iget-object v2, p0, Lcom/clov4r/android/nil/ct;->l:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int v0, v2, v0

    const/high16 v2, 0x7f0a0000

    move v5, v2

    move v2, v0

    move v0, v5

    :goto_0
    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ct;->setAnimationStyle(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->i:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/clov4r/android/nil/ct;->j:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v1, v2, v4, v4}, Lcom/clov4r/android/nil/ct;->update(IIII)V

    :cond_0
    return-void

    :cond_1
    const v0, 0x7f0b00d0

    invoke-direct {p0, v0, p1}, Lcom/clov4r/android/nil/ct;->a(II)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->l:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    const v2, 0x7f0a0001

    move v5, v2

    move v2, v0

    move v0, v5

    goto :goto_0
.end method

.method public a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/ct;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030017

    iget-object v2, p0, Lcom/clov4r/android/nil/ct;->i:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/QuickActionItem;

    invoke-virtual {v0, v3}, Lcom/clov4r/android/nil/QuickActionItem;->setChecked(Z)V

    invoke-virtual {v0, p1}, Lcom/clov4r/android/nil/QuickActionItem;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, p2}, Lcom/clov4r/android/nil/QuickActionItem;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/clov4r/android/nil/cs;

    invoke-direct {v1, p0, p3}, Lcom/clov4r/android/nil/cs;-><init>(Lcom/clov4r/android/nil/ct;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/QuickActionItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/ct;->i:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/clov4r/android/nil/ct;->i:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ct;->dismiss()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
