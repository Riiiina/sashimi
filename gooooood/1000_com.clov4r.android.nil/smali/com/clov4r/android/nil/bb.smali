.class Lcom/clov4r/android/nil/bb;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    const/4 v3, 0x2

    const/16 v2, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->e(Lcom/clov4r/android/nil/MainActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->V:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900d6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f4

    const/16 v4, 0x1770

    invoke-static {v0, v1, v2, v3, v4}, Lcom/clov4r/android/nil/bp;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    sget-boolean v1, Lcom/clov4r/android/nil/MainActivity;->t:Z

    if-nez v1, :cond_4

    move v1, v8

    :goto_1
    sput-boolean v1, Lcom/clov4r/android/nil/MainActivity;->t:Z

    sget-boolean v1, Lcom/clov4r/android/nil/MainActivity;->t:Z

    if-eqz v1, :cond_6

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f020020

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->y:Lcom/clov4r/android/nil/ee;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ee;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/MainActivity;->d()V

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    move v1, v7

    goto :goto_1

    :cond_5
    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_6
    if-ne v0, v3, :cond_8

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->y:Lcom/clov4r/android/nil/ee;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ee;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->i(Lcom/clov4r/android/nil/MainActivity;)V

    goto/16 :goto_0

    :cond_8
    if-ne v0, v8, :cond_7

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->F:Landroid/widget/ImageView;

    const v1, 0x7f02001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->P:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->Q:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    :pswitch_2
    invoke-static {}, Lcom/clov4r/android/nil/MainActivity;->g()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    const-class v3, Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Lcom/clov4r/android/nil/MainActivity;->aC:I

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v1, v1, Lcom/clov4r/android/nil/MainActivity;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/MainActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    const-class v3, Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Lcom/clov4r/android/nil/MainActivity;->aB:I

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    const-class v3, Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Lcom/clov4r/android/nil/MainActivity;->aC:I

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    :pswitch_4
    new-array v0, v3, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v7

    aget v3, v0, v8

    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const-string v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v0, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v7

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v0, v0, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    new-instance v2, Lcom/clov4r/android/nil/ct;

    iget-object v3, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {v2, v3, p1, v1}, Lcom/clov4r/android/nil/ct;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)V

    iput-object v2, v0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    iget-object v1, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900c8

    new-instance v3, Lcom/clov4r/android/nil/dl;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/dl;-><init>(Lcom/clov4r/android/nil/bb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    iget-object v1, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900c9

    new-instance v3, Lcom/clov4r/android/nil/dk;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/dk;-><init>(Lcom/clov4r/android/nil/bb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    iget-object v1, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900cb

    new-instance v3, Lcom/clov4r/android/nil/di;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/di;-><init>(Lcom/clov4r/android/nil/bb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    iget-object v1, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v1}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09010c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/clov4r/android/nil/dh;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/dh;-><init>(Lcom/clov4r/android/nil/bb;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/MainActivity;->az:Lcom/clov4r/android/nil/ct;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ct;->a()V

    goto/16 :goto_0

    :pswitch_5
    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->A:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-static {v0}, Lcom/clov4r/android/nil/MainActivity;->j(Lcom/clov4r/android/nil/MainActivity;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/bb;->a:Lcom/clov4r/android/nil/MainActivity;

    const-class v3, Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget v2, Lcom/clov4r/android/nil/MainActivity;->aB:I

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0b00b3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
