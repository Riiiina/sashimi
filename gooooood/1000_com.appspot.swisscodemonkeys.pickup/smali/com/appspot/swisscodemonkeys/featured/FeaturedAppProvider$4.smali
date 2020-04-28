.class Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$4;
.super Landroid/widget/LinearLayout;
.source "FeaturedAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->createFeaturedAppView(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Landroid/content/Context;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$4;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    .line 391
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v2, 0x0

    .line 394
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 395
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 396
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v2, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 397
    .local v1, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$4;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$4;->this$0:Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->access$4(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;)I

    move-result v3

    .line 398
    const/4 v4, -0x1

    .line 397
    invoke-static {v2, v1, v3, v4}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->access$5(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 399
    .local v0, "defaultBackground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$4;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 401
    .end local v0    # "defaultBackground":Landroid/graphics/drawable/Drawable;
    .end local v1    # "r":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method
