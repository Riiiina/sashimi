.class public Lcom/lonelycatgames/App/App$EditTextHelper;
.super Landroid/widget/EditText;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EditTextHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;,
        Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;
    }
.end annotation


# instance fields
.field active:Z

.field final debug:Z

.field ic:Landroid/view/inputmethod/InputConnection;

.field jni_ted:I

.field long_t_timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;

.field multi_line:Z

.field reset_vis:Z

.field final synthetic this$0:Lcom/lonelycatgames/App/App;

.field timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;


# direct methods
.method public constructor <init>(Lcom/lonelycatgames/App/App;Landroid/content/Context;IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 416
    iput-object p1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    .line 417
    invoke-direct {p0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 398
    iput v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    .line 399
    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->debug:Z

    .line 400
    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->reset_vis:Z

    .line 414
    iput-object v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;

    .line 478
    iput-object v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->long_t_timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;

    .line 503
    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    .line 504
    iput-object v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->ic:Landroid/view/inputmethod/InputConnection;

    .line 418
    iput p3, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    .line 419
    iput-boolean p4, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->multi_line:Z

    .line 420
    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App$EditTextHelper;->setClickable(Z)V

    .line 421
    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App$EditTextHelper;->setLongClickable(Z)V

    .line 422
    invoke-virtual {p0, v1}, Lcom/lonelycatgames/App/App$EditTextHelper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 423
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App$EditTextHelper;->setImeOptions(I)V

    .line 424
    return-void
.end method


# virtual methods
.method public Activate(Z)V
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 511
    iget-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    if-eq v0, p1, :cond_0

    .line 512
    iput-boolean p1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    .line 513
    iget-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    if-eqz v0, :cond_1

    .line 514
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iput-object v1, v0, Lcom/lonelycatgames/App/App;->kb_hide_timer:Lcom/lonelycatgames/App/App$KbHideTimer;

    .line 515
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iput-object p0, v0, Lcom/lonelycatgames/App/App;->ted_active:Lcom/lonelycatgames/App/App$EditTextHelper;

    .line 516
    new-instance v0, Lcom/lonelycatgames/App/App$MyLayoutParams;

    invoke-direct {v0, v3, v3, v2, v2}, Lcom/lonelycatgames/App/App$MyLayoutParams;-><init>(IIII)V

    .line 517
    iget-object v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, v1, Lcom/lonelycatgames/App/App;->view_group:Lcom/lonelycatgames/App/App$MyAbsoluteLayout;

    invoke-virtual {v1, p0, v0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 518
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$EditTextHelper;->requestFocus()Z

    .line 519
    new-instance v0, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;

    const/16 v1, 0x32

    invoke-direct {v0, p0, v1}, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;-><init>(Lcom/lonelycatgames/App/App$EditTextHelper;I)V

    iput-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$EditTextHelper;->ClickEnd()V

    .line 522
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;

    invoke-virtual {v0}, Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;->cancel()V

    .line 523
    iput-object v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedTimer;

    .line 524
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iput-object v1, v0, Lcom/lonelycatgames/App/App;->ted_active:Lcom/lonelycatgames/App/App$EditTextHelper;

    .line 526
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v0, v0, Lcom/lonelycatgames/App/App;->view_group:Lcom/lonelycatgames/App/App$MyAbsoluteLayout;

    invoke-virtual {v0, p0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->removeView(Landroid/view/View;)V

    .line 529
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v0, v0, Lcom/lonelycatgames/App/App;->kb_hide_timer:Lcom/lonelycatgames/App/App$KbHideTimer;

    if-nez v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    new-instance v1, Lcom/lonelycatgames/App/App$KbHideTimer;

    iget-object v2, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    invoke-direct {v1, v2}, Lcom/lonelycatgames/App/App$KbHideTimer;-><init>(Lcom/lonelycatgames/App/App;)V

    iput-object v1, v0, Lcom/lonelycatgames/App/App;->kb_hide_timer:Lcom/lonelycatgames/App/App$KbHideTimer;

    goto :goto_0
.end method

.method ClickBegin()V
    .locals 1

    .prologue
    .line 480
    new-instance v0, Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;

    invoke-direct {v0, p0}, Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;-><init>(Lcom/lonelycatgames/App/App$EditTextHelper;)V

    iput-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->long_t_timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;

    .line 481
    return-void
.end method

.method ClickEnd()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->long_t_timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->long_t_timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;

    invoke-virtual {v0}, Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;->cancel()V

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->long_t_timer:Lcom/lonelycatgames/App/App$EditTextHelper$TedLongTouchTimer;

    .line 487
    :cond_0
    return-void
.end method

.method public SetRect(IIII)V
    .locals 2

    .prologue
    .line 428
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$EditTextHelper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/lonelycatgames/App/App$MyLayoutParams;

    .line 429
    iput p1, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->x:I

    .line 430
    iput p2, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->y:I

    .line 431
    iput p3, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->width:I

    .line 432
    iput p4, v0, Lcom/lonelycatgames/App/App$MyLayoutParams;->height:I

    .line 434
    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/lonelycatgames/App/App$EditTextHelper;->layout(IIII)V

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->reset_vis:Z

    .line 436
    return-void
.end method

.method protected UpdateSelection(II)J
    .locals 8

    .prologue
    const/4 v5, -0x1

    .line 535
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 536
    const-wide/16 v2, 0x0

    .line 537
    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 541
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App$EditTextHelper;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 542
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_1

    .line 543
    check-cast v1, Landroid/text/Spannable;

    .line 544
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v4

    .line 545
    invoke-static {v1}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v1

    .line 546
    if-le v4, v5, :cond_0

    if-le v1, v5, :cond_0

    .line 547
    int-to-long v2, v4

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    int-to-long v5, v1

    or-long/2addr v2, v5

    move v5, v1

    move-wide v6, v2

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    .line 549
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    move-wide v0, v6

    .line 552
    :goto_1
    return-wide v0

    :cond_0
    move v5, v1

    move-wide v6, v2

    goto :goto_0

    :cond_1
    move v4, v5

    move-wide v6, v2

    goto :goto_0

    :cond_2
    move-wide v0, v2

    goto :goto_1
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 506
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->ic:Landroid/view/inputmethod/InputConnection;

    .line 507
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->ic:Landroid/view/inputmethod/InputConnection;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 438
    sparse-switch p1, :sswitch_data_0

    .line 469
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    :sswitch_1
    move v0, v1

    .line 441
    goto :goto_1

    .line 443
    :sswitch_2
    iget v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    const/4 v3, -0x2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lonelycatgames/App/App;->JniTedTextChanged(ILjava/lang/CharSequence;III)V

    goto :goto_0

    .line 448
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 450
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->reset_vis:Z

    goto :goto_0

    .line 462
    :sswitch_4
    iget v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    move v3, v4

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/lonelycatgames/App/App;->JniTedTextChanged(ILjava/lang/CharSequence;III)V

    goto :goto_0

    .line 466
    :sswitch_5
    iget-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->multi_line:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 467
    goto :goto_1

    .line 438
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_5
        0x43 -> :sswitch_4
        0x52 -> :sswitch_3
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onSelectionChanged(II)V
    .locals 2

    .prologue
    .line 555
    iget v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/lonelycatgames/App/App;->JniTedSelectionChanged(III)V

    .line 557
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6

    .prologue
    .line 559
    iget v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->active:Z

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, p0, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/lonelycatgames/App/App;->JniTedTextChanged(ILjava/lang/CharSequence;III)V

    .line 561
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    return v0
.end method
