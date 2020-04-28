.class public Lcom/lonelycatgames/App/App;
.super Landroid/app/Activity;
.source "App.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lonelycatgames/App/App$EditTextHelper;,
        Lcom/lonelycatgames/App/App$KbHideTimer;,
        Lcom/lonelycatgames/App/App$Alarm;,
        Lcom/lonelycatgames/App/App$MyTimer;,
        Lcom/lonelycatgames/App/App$DelayHandler;,
        Lcom/lonelycatgames/App/App$MyView;,
        Lcom/lonelycatgames/App/App$MyAbsoluteLayout;,
        Lcom/lonelycatgames/App/App$MyLayoutParams;
    }
.end annotation


# instance fields
.field delay_hanlder:Lcom/lonelycatgames/App/App$DelayHandler;

.field eat_menu:Z

.field protected jni_app:I

.field protected jni_obs:I

.field kb_hide_timer:Lcom/lonelycatgames/App/App$KbHideTimer;

.field public main_view:Lcom/lonelycatgames/App/App$MyView;

.field num_alarms:I

.field ted_active:Lcom/lonelycatgames/App/App$EditTextHelper;

.field timer:Lcom/lonelycatgames/App/App$MyTimer;

.field private tmp_rect:Landroid/graphics/Rect;

.field protected view_group:Lcom/lonelycatgames/App/App$MyAbsoluteLayout;

.field wake_lock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 123
    const-string v0, "app"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    iput v1, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    .line 17
    iput v1, p0, Lcom/lonelycatgames/App/App;->jni_app:I

    .line 152
    new-instance v0, Lcom/lonelycatgames/App/App$DelayHandler;

    invoke-direct {v0, p0}, Lcom/lonelycatgames/App/App$DelayHandler;-><init>(Lcom/lonelycatgames/App/App;)V

    iput-object v0, p0, Lcom/lonelycatgames/App/App;->delay_hanlder:Lcom/lonelycatgames/App/App$DelayHandler;

    .line 189
    iput-boolean v1, p0, Lcom/lonelycatgames/App/App;->eat_menu:Z

    .line 261
    iput-object v2, p0, Lcom/lonelycatgames/App/App;->timer:Lcom/lonelycatgames/App/App$MyTimer;

    .line 262
    iput-object v2, p0, Lcom/lonelycatgames/App/App;->wake_lock:Landroid/os/PowerManager$WakeLock;

    .line 263
    iput v1, p0, Lcom/lonelycatgames/App/App;->num_alarms:I

    .line 381
    iput-object v2, p0, Lcom/lonelycatgames/App/App;->ted_active:Lcom/lonelycatgames/App/App$EditTextHelper;

    .line 395
    iput-object v2, p0, Lcom/lonelycatgames/App/App;->kb_hide_timer:Lcom/lonelycatgames/App/App$KbHideTimer;

    .line 567
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/lonelycatgames/App/App;->tmp_rect:Landroid/graphics/Rect;

    return-void
.end method

.method protected static SetDrawableMultiply(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 574
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 575
    return-void

    .line 574
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0
.end method


# virtual methods
.method public CancelDelayedMessage(I)V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->delay_hanlder:Lcom/lonelycatgames/App/App$DelayHandler;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->delay_hanlder:Lcom/lonelycatgames/App/App$DelayHandler;

    invoke-virtual {v0, p1}, Lcom/lonelycatgames/App/App$DelayHandler;->removeMessages(I)V

    .line 160
    :cond_0
    return-void
.end method

.method protected CreateAlarm(IIIIIII)Lcom/lonelycatgames/App/App$Alarm;
    .locals 9

    .prologue
    .line 317
    iget v0, p0, Lcom/lonelycatgames/App/App;->num_alarms:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lonelycatgames/App/App;->num_alarms:I

    .line 318
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App;->ManageWakeLock()V

    .line 319
    new-instance v0, Lcom/lonelycatgames/App/App$Alarm;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/lonelycatgames/App/App$Alarm;-><init>(Lcom/lonelycatgames/App/App;IIIIIII)V

    return-object v0
.end method

.method protected CreateTedHelper(IZ)Lcom/lonelycatgames/App/App$EditTextHelper;
    .locals 1

    .prologue
    .line 564
    new-instance v0, Lcom/lonelycatgames/App/App$EditTextHelper;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/lonelycatgames/App/App$EditTextHelper;-><init>(Lcom/lonelycatgames/App/App;Landroid/content/Context;IZ)V

    return-object v0
.end method

.method protected DeleteAlarm(Lcom/lonelycatgames/App/App$Alarm;)V
    .locals 2

    .prologue
    .line 322
    iget v0, p0, Lcom/lonelycatgames/App/App;->num_alarms:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/lonelycatgames/App/App;->num_alarms:I

    .line 323
    invoke-virtual {p1}, Lcom/lonelycatgames/App/App$Alarm;->cancel()V

    .line 324
    invoke-virtual {p1}, Lcom/lonelycatgames/App/App$Alarm;->purge()I

    .line 325
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App;->ManageWakeLock()V

    .line 326
    return-void
.end method

.method public Fatal(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lonelycatgames/App/App;->Fatal(Ljava/lang/String;I)V

    return-void
.end method

.method public Fatal(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 170
    if-eqz p2, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/lonelycatgames/App/App;->InfoMessage(Ljava/lang/String;Z)V

    .line 173
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method protected FinishInit()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 329
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-nez v0, :cond_0

    .line 330
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 331
    iget-object v1, p0, Lcom/lonelycatgames/App/App;->main_view:Lcom/lonelycatgames/App/App$MyView;

    invoke-virtual {p0, v0, v1}, Lcom/lonelycatgames/App/App;->JniInit(ILandroid/view/View;)J

    move-result-wide v0

    .line 332
    and-long v2, v0, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    .line 333
    const/16 v2, 0x20

    shr-long/2addr v0, v2

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Lcom/lonelycatgames/App/App;->jni_app:I

    .line 335
    :cond_0
    return-void
.end method

.method protected GetPackedDrawablePadding(Landroid/graphics/drawable/Drawable;)J
    .locals 6

    .prologue
    const v5, 0xffff

    .line 569
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->tmp_rect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 570
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->tmp_rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    and-int/2addr v0, v5

    int-to-long v0, v0

    const/16 v2, 0x30

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/lonelycatgames/App/App;->tmp_rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    and-int/2addr v2, v5

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/lonelycatgames/App/App;->tmp_rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    and-int/2addr v2, v5

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/lonelycatgames/App/App;->tmp_rect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    and-int/2addr v2, v5

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public Info(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lonelycatgames/App/App;->Info(Ljava/lang/String;I)V

    return-void
.end method

.method public Info(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 164
    if-eqz p2, :cond_0

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/lonelycatgames/App/App;->InfoMessage(Ljava/lang/String;Z)V

    .line 167
    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public InfoMessage(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 338
    if-eqz p2, :cond_0

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App;->ManageTimer(I)V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lonelycatgames/App/App;->delay_hanlder:Lcom/lonelycatgames/App/App$DelayHandler;

    .line 342
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 343
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 344
    if-eqz p2, :cond_2

    const-string v1, "Fatal error"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 364
    new-instance v1, Lcom/lonelycatgames/App/App$1CFatal;

    invoke-direct {v1, p0, p2}, Lcom/lonelycatgames/App/App$1CFatal;-><init>(Lcom/lonelycatgames/App/App;Z)V

    .line 366
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 367
    const-string v2, "Ok"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 368
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 369
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 370
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 371
    if-eqz p2, :cond_1

    .line 372
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 373
    :cond_1
    return-void

    .line 344
    :cond_2
    const-string v1, "Info"

    goto :goto_0
.end method

.method public native JniAlarm(I)V
.end method

.method public native JniClose(I)V
.end method

.method public native JniFocusChange(IZ)V
.end method

.method public native JniInit(ILandroid/view/View;)J
.end method

.method public native JniReinitScreen(I)V
.end method

.method public native JniRunDelayed(I)V
.end method

.method public native JniSendKey(IILandroid/view/KeyEvent;Z)Z
.end method

.method public native JniSendTouch(ISSC)V
.end method

.method public native JniTedLongClick(I)V
.end method

.method public native JniTedSelectionChanged(III)V
.end method

.method public native JniTedTextChanged(ILjava/lang/CharSequence;III)V
.end method

.method public native JniTedTimer(I)V
.end method

.method public native JniTedUpdateRect(I)V
.end method

.method public native JniTimer(I)V
.end method

.method public native JniViewDraw(ILandroid/graphics/Canvas;)V
.end method

.method public native LOGRUN(Ljava/lang/String;)V
.end method

.method public LOGRUN_N(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 144
    const-string v0, "%s %d (0x%x)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App;->LOGRUN(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public ManageTimer(I)V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->timer:Lcom/lonelycatgames/App/App$MyTimer;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->timer:Lcom/lonelycatgames/App/App$MyTimer;

    invoke-virtual {v0}, Lcom/lonelycatgames/App/App$MyTimer;->cancel()V

    .line 267
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->timer:Lcom/lonelycatgames/App/App$MyTimer;

    invoke-virtual {v0}, Lcom/lonelycatgames/App/App$MyTimer;->purge()I

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lonelycatgames/App/App;->timer:Lcom/lonelycatgames/App/App$MyTimer;

    .line 270
    :cond_0
    if-eqz p1, :cond_1

    .line 271
    new-instance v0, Lcom/lonelycatgames/App/App$MyTimer;

    invoke-direct {v0, p0, p1}, Lcom/lonelycatgames/App/App$MyTimer;-><init>(Lcom/lonelycatgames/App/App;I)V

    iput-object v0, p0, Lcom/lonelycatgames/App/App;->timer:Lcom/lonelycatgames/App/App$MyTimer;

    .line 272
    :cond_1
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App;->ManageWakeLock()V

    .line 273
    return-void
.end method

.method ManageWakeLock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 276
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->timer:Lcom/lonelycatgames/App/App$MyTimer;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lonelycatgames/App/App;->num_alarms:I

    if-eqz v0, :cond_3

    :cond_0
    move v0, v3

    .line 277
    :goto_0
    if-eqz v0, :cond_4

    .line 278
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->wake_lock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 279
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 280
    const-string v1, "LCG timer"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/lonelycatgames/App/App;->wake_lock:Landroid/os/PowerManager$WakeLock;

    .line 281
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->wake_lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 285
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->wake_lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    :cond_2
    :goto_1
    return-void

    :cond_3
    move v0, v2

    .line 276
    goto :goto_0

    .line 290
    :cond_4
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->wake_lock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 293
    :try_start_1
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->wake_lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 294
    :catch_0
    move-exception v0

    goto :goto_1

    .line 286
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public PostDelayedMessage(I)V
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->delay_hanlder:Lcom/lonelycatgames/App/App$DelayHandler;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->delay_hanlder:Lcom/lonelycatgames/App/App$DelayHandler;

    invoke-virtual {v0, p1}, Lcom/lonelycatgames/App/App$DelayHandler;->sendEmptyMessage(I)Z

    .line 156
    :cond_0
    return-void
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0
.end method

.method protected getViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->view_group:Lcom/lonelycatgames/App/App$MyAbsoluteLayout;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 220
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 221
    new-instance v0, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;

    invoke-direct {v0, p0}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lonelycatgames/App/App;->view_group:Lcom/lonelycatgames/App/App$MyAbsoluteLayout;

    .line 223
    new-instance v0, Lcom/lonelycatgames/App/App$MyView;

    invoke-direct {v0, p0, p0}, Lcom/lonelycatgames/App/App$MyView;-><init>(Lcom/lonelycatgames/App/App;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/lonelycatgames/App/App;->main_view:Lcom/lonelycatgames/App/App$MyView;

    .line 224
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->main_view:Lcom/lonelycatgames/App/App$MyView;

    invoke-virtual {v0, p0}, Lcom/lonelycatgames/App/App$MyView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->view_group:Lcom/lonelycatgames/App/App$MyAbsoluteLayout;

    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App;->setContentView(Landroid/view/View;)V

    .line 228
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->view_group:Lcom/lonelycatgames/App/App$MyAbsoluteLayout;

    iget-object v1, p0, Lcom/lonelycatgames/App/App;->main_view:Lcom/lonelycatgames/App/App$MyView;

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App$MyAbsoluteLayout;->addView(Landroid/view/View;)V

    .line 229
    invoke-virtual {p0}, Lcom/lonelycatgames/App/App;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 234
    invoke-virtual {p0, v2}, Lcom/lonelycatgames/App/App;->setDefaultKeyMode(I)V

    .line 235
    invoke-virtual {p0, v2}, Lcom/lonelycatgames/App/App;->takeKeyEvents(Z)V

    .line 237
    iget-object v0, p0, Lcom/lonelycatgames/App/App;->main_view:Lcom/lonelycatgames/App/App$MyView;

    new-instance v1, Lcom/lonelycatgames/App/App$1;

    invoke-direct {v1, p0}, Lcom/lonelycatgames/App/App$1;-><init>(Lcom/lonelycatgames/App/App;)V

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App$MyView;->post(Ljava/lang/Runnable;)Z

    .line 242
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App;->ManageTimer(I)V

    .line 178
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-eqz v0, :cond_0

    .line 179
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {p0, v0}, Lcom/lonelycatgames/App/App;->JniClose(I)V

    .line 180
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 181
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 192
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 194
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/lonelycatgames/App/App;->eat_menu:Z

    move v0, v2

    .line 202
    :goto_1
    return v0

    :cond_0
    move v0, v2

    .line 194
    goto :goto_0

    .line 197
    :cond_1
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-eqz v0, :cond_2

    .line 198
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/lonelycatgames/App/App;->JniSendKey(IILandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 199
    goto :goto_1

    .line 202
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    const/16 v0, 0x52

    if-ne p1, v0, :cond_1

    .line 207
    iget-boolean v0, p0, Lcom/lonelycatgames/App/App;->eat_menu:Z

    if-nez v0, :cond_0

    .line 208
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {p0, v0, p1, p2, v2}, Lcom/lonelycatgames/App/App;->JniSendKey(IILandroid/view/KeyEvent;Z)Z

    :cond_0
    move v0, v1

    .line 215
    :goto_0
    return v0

    .line 211
    :cond_1
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-eqz v0, :cond_2

    .line 212
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/lonelycatgames/App/App;->JniSendKey(IILandroid/view/KeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 378
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 184
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-eqz v0, :cond_0

    .line 185
    iget v0, p0, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/lonelycatgames/App/App;->JniSendTouch(ISSC)V

    .line 186
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
