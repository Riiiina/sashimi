.class Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;
.super Ljava/lang/Object;
.source "MixerSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/MixerSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MixerDigit"
.end annotation


# static fields
.field private static final DOWN_BUTTON:I = 0x8002

.field private static final UP_BUTTON:I = 0x8001


# instance fields
.field private alpha:Z

.field private down_b:Landroid/widget/ImageButton;

.field private layout:Landroid/widget/LinearLayout;

.field private text_view:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/magicwach/rdefense/MixerSelectActivity;

.field private up_b:Landroid/widget/ImageButton;

.field private value:I


# direct methods
.method public constructor <init>(Lcom/magicwach/rdefense/MixerSelectActivity;Landroid/content/Context;Z)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "alpha"    # Z

    .prologue
    const/high16 v2, -0x1000000

    .line 95
    iput-object p1, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->this$0:Lcom/magicwach/rdefense/MixerSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-boolean p3, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->alpha:Z

    .line 97
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->layout:Landroid/widget/LinearLayout;

    .line 98
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 99
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->up_b:Landroid/widget/ImageButton;

    .line 100
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->up_b:Landroid/widget/ImageButton;

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 101
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->up_b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 102
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->up_b:Landroid/widget/ImageButton;

    const v1, 0x8001

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 103
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->up_b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->up_b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->text_view:Landroid/widget/TextView;

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->setValue(I)V

    .line 107
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->text_view:Landroid/widget/TextView;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->text_view:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 109
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->text_view:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 110
    new-instance v0, Landroid/widget/ImageButton;

    invoke-direct {v0, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->down_b:Landroid/widget/ImageButton;

    .line 111
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->down_b:Landroid/widget/ImageButton;

    const v1, 0x7f02000e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->down_b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 113
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->down_b:Landroid/widget/ImageButton;

    const v1, 0x8002

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setId(I)V

    .line 114
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->down_b:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->down_b:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    return-void
.end method


# virtual methods
.method public getLayout()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->layout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->value:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    return-void

    .line 141
    :pswitch_0
    iget v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->value:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->setValue(I)V

    goto :goto_0

    .line 144
    :pswitch_1
    iget v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->value:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->setValue(I)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x8001
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setValue(I)V
    .locals 3
    .param p1, "digit"    # I

    .prologue
    const/4 v1, 0x1

    .line 121
    iget-boolean v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->alpha:Z

    if-eqz v0, :cond_1

    .line 122
    if-gez p1, :cond_0

    .line 123
    invoke-static {}, Lcom/magicwach/rdefense/MixerSelectActivity;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int p1, v0, v1

    .line 125
    :cond_0
    invoke-static {}, Lcom/magicwach/rdefense/MixerSelectActivity;->access$000()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    rem-int v0, p1, v0

    iput v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->value:I

    .line 126
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->text_view:Landroid/widget/TextView;

    invoke-static {}, Lcom/magicwach/rdefense/MixerSelectActivity;->access$000()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->value:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_1
    if-gez p1, :cond_2

    .line 129
    invoke-static {}, Lcom/magicwach/rdefense/MixerSelectActivity;->access$100()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    sub-int p1, v0, v1

    .line 131
    :cond_2
    invoke-static {}, Lcom/magicwach/rdefense/MixerSelectActivity;->access$100()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    rem-int v0, p1, v0

    iput v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->value:I

    .line 132
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->text_view:Landroid/widget/TextView;

    invoke-static {}, Lcom/magicwach/rdefense/MixerSelectActivity;->access$100()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->value:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
