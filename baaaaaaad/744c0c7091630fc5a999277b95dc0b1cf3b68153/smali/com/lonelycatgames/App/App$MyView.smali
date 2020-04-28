.class public Lcom/lonelycatgames/App/App$MyView;
.super Landroid/view/View;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyView"
.end annotation


# instance fields
.field dirty:Z

.field has_focus:Z

.field final synthetic this$0:Lcom/lonelycatgames/App/App;


# direct methods
.method constructor <init>(Lcom/lonelycatgames/App/App;Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 77
    iput-object p1, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    .line 78
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$MyView;->dirty:Z

    .line 76
    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$MyView;->has_focus:Z

    .line 79
    invoke-virtual {p0, v1}, Lcom/lonelycatgames/App/App$MyView;->setFocusable(Z)V

    .line 80
    invoke-virtual {p0, v1}, Lcom/lonelycatgames/App/App$MyView;->setFocusableInTouchMode(Z)V

    .line 81
    return-void
.end method


# virtual methods
.method protected _ENABLED_STATE_SET()[I
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/lonelycatgames/App/App$MyView;->ENABLED_STATE_SET:[I

    return-object v0
.end method

.method protected _FOCUSED_STATE_SET()[I
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/lonelycatgames/App/App$MyView;->PRESSED_FOCUSED_STATE_SET:[I

    return-object v0
.end method

.method protected _PRESSED_STATE_SET()[I
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/lonelycatgames/App/App$MyView;->PRESSED_WINDOW_FOCUSED_STATE_SET:[I

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$MyView;->dirty:Z

    .line 96
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->invalidate(IIII)V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$MyView;->dirty:Z

    .line 92
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lonelycatgames/App/App$MyView;->dirty:Z

    .line 84
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget v0, v0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, v1, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {v0, v1, p1}, Lcom/lonelycatgames/App/App;->JniViewDraw(ILandroid/graphics/Canvas;)V

    .line 88
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 99
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    const-string v1, "Zero view size"

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->LOGRUN(Ljava/lang/String;)V

    .line 109
    :cond_1
    :goto_0
    return-void

    .line 103
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 104
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget v0, v0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, v1, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->JniReinitScreen(I)V

    .line 106
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v0, v0, Lcom/lonelycatgames/App/App;->ted_active:Lcom/lonelycatgames/App/App$EditTextHelper;

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, v1, Lcom/lonelycatgames/App/App;->ted_active:Lcom/lonelycatgames/App/App$EditTextHelper;

    iget v1, v1, Lcom/lonelycatgames/App/App$EditTextHelper;->jni_ted:I

    invoke-virtual {v0, v1}, Lcom/lonelycatgames/App/App;->JniTedUpdateRect(I)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 112
    iput-boolean p1, p0, Lcom/lonelycatgames/App/App$MyView;->has_focus:Z

    .line 113
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget v0, v0, Lcom/lonelycatgames/App/App;->jni_obs:I

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget-object v1, p0, Lcom/lonelycatgames/App/App$MyView;->this$0:Lcom/lonelycatgames/App/App;

    iget v1, v1, Lcom/lonelycatgames/App/App;->jni_obs:I

    invoke-virtual {v0, v1, p1}, Lcom/lonelycatgames/App/App;->JniFocusChange(IZ)V

    .line 115
    :cond_0
    return-void
.end method
