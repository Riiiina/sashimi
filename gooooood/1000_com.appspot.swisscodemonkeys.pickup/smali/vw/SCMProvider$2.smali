.class Lvw/SCMProvider$2;
.super Ljava/lang/Object;
.source "SCMProvider.java"

# interfaces
.implements Lvw/SCMView$ViewResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/SCMProvider;->getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvw/SCMProvider;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$email:Ljava/lang/String;

.field private final synthetic val$emailContents:Ljava/lang/String;

.field private final synthetic val$finalNinepatchDrawable:Landroid/graphics/drawable/Drawable;

.field private final synthetic val$finalSpanned:Landroid/text/Spanned;

.field private final synthetic val$html:Ljava/lang/String;

.field private final synthetic val$pingUrl:Ljava/lang/String;

.field private final synthetic val$text:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvw/SCMProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/Spanned;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    iput-object p2, p0, Lvw/SCMProvider$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lvw/SCMProvider$2;->val$email:Ljava/lang/String;

    iput-object p4, p0, Lvw/SCMProvider$2;->val$html:Ljava/lang/String;

    iput-object p5, p0, Lvw/SCMProvider$2;->val$finalSpanned:Landroid/text/Spanned;

    iput-object p6, p0, Lvw/SCMProvider$2;->val$finalNinepatchDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p7, p0, Lvw/SCMProvider$2;->val$text:Ljava/lang/String;

    iput-object p8, p0, Lvw/SCMProvider$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p9, p0, Lvw/SCMProvider$2;->val$pingUrl:Ljava/lang/String;

    iput-object p10, p0, Lvw/SCMProvider$2;->val$emailContents:Ljava/lang/String;

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lvw/SCMProvider$2;)Lvw/SCMProvider;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    return-object v0
.end method


# virtual methods
.method public createView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v4, -0x2

    .line 217
    const/4 v2, 0x0

    .line 218
    .local v2, "listener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lvw/SCMProvider$2;->val$url:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 219
    new-instance v2, Lvw/SCMProvider$2$1;

    .end local v2    # "listener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lvw/SCMProvider$2;->val$url:Ljava/lang/String;

    iget-object v1, p0, Lvw/SCMProvider$2;->val$pingUrl:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1}, Lvw/SCMProvider$2$1;-><init>(Lvw/SCMProvider$2;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    .restart local v2    # "listener":Landroid/view/View$OnClickListener;
    :cond_0
    :goto_0
    new-instance v6, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    iget-object v0, v0, Lvw/SCMProvider;->context:Landroid/content/Context;

    invoke-direct {v6, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 246
    .local v6, "enclosing":Landroid/widget/FrameLayout;
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 248
    .local v7, "params":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v0, 0x11

    iput v0, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 249
    const/4 v8, 0x0

    .line 250
    .local v8, "view":Landroid/view/View;
    iget-object v0, p0, Lvw/SCMProvider$2;->val$html:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 251
    iget-object v0, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    iget-object v0, v0, Lvw/SCMProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lvw/SCMProvider$2;->val$finalSpanned:Landroid/text/Spanned;

    iget-object v3, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    invoke-static {v3}, Lvw/SCMProvider;->access$1(Lvw/SCMProvider;)I

    move-result v3

    .line 252
    iget-object v4, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    invoke-static {v4}, Lvw/SCMProvider;->access$2(Lvw/SCMProvider;)I

    move-result v4

    iget-object v5, p0, Lvw/SCMProvider$2;->val$finalNinepatchDrawable:Landroid/graphics/drawable/Drawable;

    .line 251
    invoke-static/range {v0 .. v5}, Lvw/Util;->createViewFromHTML(Landroid/content/Context;Landroid/text/Spanned;Landroid/view/View$OnClickListener;IILandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v8

    .line 261
    :cond_1
    :goto_1
    if-nez v8, :cond_5

    .line 262
    const/4 v0, 0x0

    .line 271
    :goto_2
    return-object v0

    .line 228
    .end local v6    # "enclosing":Landroid/widget/FrameLayout;
    .end local v7    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "view":Landroid/view/View;
    :cond_2
    iget-object v0, p0, Lvw/SCMProvider$2;->val$email:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 229
    new-instance v2, Lvw/SCMProvider$2$2;

    .end local v2    # "listener":Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lvw/SCMProvider$2;->val$email:Ljava/lang/String;

    iget-object v1, p0, Lvw/SCMProvider$2;->val$emailContents:Ljava/lang/String;

    iget-object v3, p0, Lvw/SCMProvider$2;->val$pingUrl:Ljava/lang/String;

    invoke-direct {v2, p0, v0, v1, v3}, Lvw/SCMProvider$2$2;-><init>(Lvw/SCMProvider$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "listener":Landroid/view/View$OnClickListener;
    goto :goto_0

    .line 253
    .restart local v6    # "enclosing":Landroid/widget/FrameLayout;
    .restart local v7    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v8    # "view":Landroid/view/View;
    :cond_3
    iget-object v0, p0, Lvw/SCMProvider$2;->val$text:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 254
    iget-object v0, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    iget-object v0, v0, Lvw/SCMProvider;->context:Landroid/content/Context;

    iget-object v1, p0, Lvw/SCMProvider$2;->val$text:Ljava/lang/String;

    iget-object v3, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    invoke-static {v3}, Lvw/SCMProvider;->access$1(Lvw/SCMProvider;)I

    move-result v3

    .line 255
    iget-object v4, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    invoke-static {v4}, Lvw/SCMProvider;->access$2(Lvw/SCMProvider;)I

    move-result v4

    iget-object v5, p0, Lvw/SCMProvider$2;->val$finalNinepatchDrawable:Landroid/graphics/drawable/Drawable;

    .line 254
    invoke-static/range {v0 .. v5}, Lvw/Util;->createViewFromText(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;IILandroid/graphics/drawable/Drawable;)Landroid/view/View;

    move-result-object v8

    goto :goto_1

    .line 256
    :cond_4
    iget-object v0, p0, Lvw/SCMProvider$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    iget-object v0, v0, Lvw/SCMProvider;->context:Landroid/content/Context;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lvw/SCMProvider$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 258
    iget-object v3, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    invoke-static {v3}, Lvw/SCMProvider;->access$1(Lvw/SCMProvider;)I

    move-result v3

    iget-object v4, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    invoke-static {v4}, Lvw/SCMProvider;->access$2(Lvw/SCMProvider;)I

    move-result v4

    .line 257
    invoke-static {v0, v1, v2, v3, v4}, Lvw/Util;->createViewFromImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;II)Landroid/view/View;

    move-result-object v8

    goto :goto_1

    .line 264
    :cond_5
    invoke-virtual {v6, v8, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Lvw/SCMProvider$2;->this$0:Lvw/SCMProvider;

    invoke-static {v0}, Lvw/SCMProvider;->access$2(Lvw/SCMProvider;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 266
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 267
    invoke-direct {v0, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 266
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    if-eqz v2, :cond_6

    .line 269
    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    move-object v0, v6

    .line 271
    goto :goto_2
.end method
