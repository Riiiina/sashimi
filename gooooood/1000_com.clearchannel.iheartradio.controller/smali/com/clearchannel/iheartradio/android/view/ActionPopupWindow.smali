.class public Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;
.super Ljava/lang/Object;
.source "ActionPopupWindow.java"


# instance fields
.field protected final anchor:Landroid/view/View;

.field private background:Landroid/graphics/drawable/Drawable;

.field private focusable:Z

.field protected root:Landroid/view/View;

.field protected final window:Landroid/widget/PopupWindow;

.field private final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "focusable"    # Ljava/lang/Boolean;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->background:Landroid/graphics/drawable/Drawable;

    .line 43
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->anchor:Landroid/view/View;

    .line 44
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    .line 45
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->focusable:Z

    .line 50
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow$1;-><init>(Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 65
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->windowManager:Landroid/view/WindowManager;

    .line 67
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 217
    return-void
.end method

.method public getWindow()Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method protected onCreate()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method protected preShow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->root:Landroid/view/View;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setContentView was not called with a view to display."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->onShow()V

    .line 89
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->background:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 99
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 100
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 101
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->focusable:Z

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 102
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 104
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->root:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 107
    return-void

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->background:Landroid/graphics/drawable/Drawable;

    .line 111
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 131
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 132
    .local v0, "inflator":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->setContentView(Landroid/view/View;)V

    .line 133
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "root"    # Landroid/view/View;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->root:Landroid/view/View;

    .line 121
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 142
    return-void
.end method

.method public showLikePopDownMenu()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-virtual {p0, v0, v0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->showLikePopDownMenu(II)V

    .line 149
    return-void
.end method

.method public showLikePopDownMenu(II)V
    .locals 2
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->preShow()V

    .line 162
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 164
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v0, v1, p1, p2}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 165
    return-void
.end method

.method public showLikeQuickAction()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0, v0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->showLikeQuickAction(II)V

    .line 172
    return-void
.end method

.method public showLikeQuickAction(II)V
    .locals 13
    .param p1, "xOffset"    # I
    .param p2, "yOffset"    # I

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->preShow()V

    .line 185
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    const v9, 0x7f080001

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 187
    const/4 v8, 0x2

    new-array v1, v8, [I

    .line 188
    .local v1, "location":[I
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v8, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    new-instance v0, Landroid/graphics/Rect;

    const/4 v8, 0x0

    aget v8, v1, v8

    const/4 v9, 0x1

    aget v9, v1, v9

    const/4 v10, 0x0

    aget v10, v1, v10

    iget-object v11, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v1, v11

    .line 192
    iget-object v12, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    .line 191
    invoke-direct {v0, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 194
    .local v0, "anchorRect":Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->root:Landroid/view/View;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 196
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->root:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 197
    .local v3, "rootWidth":I
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->root:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 199
    .local v2, "rootHeight":I
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 200
    .local v5, "screenWidth":I
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 202
    .local v4, "screenHeight":I
    sub-int v8, v5, v3

    div-int/lit8 v8, v8, 0x2

    add-int v6, v8, p1

    .line 203
    .local v6, "xPos":I
    iget v8, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v2

    add-int v7, v8, p2

    .line 206
    .local v7, "yPos":I
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v2, v8, :cond_0

    .line 207
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    add-int v7, v8, p2

    .line 208
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    const v9, 0x7f080002

    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 211
    :cond_0
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->window:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->anchor:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 212
    return-void
.end method
