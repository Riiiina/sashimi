.class Lvw/Util$3;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lvw/SCMView$ViewResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/Util;->createViewResultFromHTML(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Lvw/SCMView$ViewResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$background:I

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$finalListener:Landroid/view/View$OnClickListener;

.field private final synthetic val$foreground:I

.field private final synthetic val$ninepatch:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$spanned:Landroid/text/Spanned;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/text/Spanned;Landroid/view/View$OnClickListener;IILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/Util$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lvw/Util$3;->val$spanned:Landroid/text/Spanned;

    iput-object p3, p0, Lvw/Util$3;->val$finalListener:Landroid/view/View$OnClickListener;

    iput p4, p0, Lvw/Util$3;->val$foreground:I

    iput p5, p0, Lvw/Util$3;->val$background:I

    iput-object p6, p0, Lvw/Util$3;->val$ninepatch:Landroid/graphics/drawable/Drawable;

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v1, -0x2

    .line 189
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lvw/Util$3;->val$context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 190
    .local v6, "enclosing":Landroid/widget/FrameLayout;
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v8, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 192
    .local v8, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 193
    const/4 v7, 0x0

    .line 194
    .local v7, "listener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lvw/Util$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lvw/Util$3;->val$spanned:Landroid/text/Spanned;

    iget-object v2, p0, Lvw/Util$3;->val$finalListener:Landroid/view/View$OnClickListener;

    .line 195
    iget v3, p0, Lvw/Util$3;->val$foreground:I

    iget v4, p0, Lvw/Util$3;->val$background:I

    iget-object v5, p0, Lvw/Util$3;->val$ninepatch:Landroid/graphics/drawable/Drawable;

    .line 194
    invoke-static/range {v0 .. v5}, Lvw/Util;->createViewFromHTML(Landroid/content/Context;Landroid/text/Spanned;Landroid/view/View$OnClickListener;IILandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v9

    .line 196
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v6, v9, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 197
    iget v0, p0, Lvw/Util$3;->val$background:I

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 198
    if-eqz v7, :cond_0

    .line 199
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 202
    invoke-direct {v0, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 201
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    return-object v6
.end method
