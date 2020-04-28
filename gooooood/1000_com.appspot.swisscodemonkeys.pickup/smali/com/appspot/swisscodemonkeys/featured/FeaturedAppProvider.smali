.class public Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;
.super Lvw/ViewProvider;
.source "FeaturedAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;,
        Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    }
.end annotation


# static fields
.field private static final AD_FORMAT_THUMBS:Ljava/lang/String; = "thumbs"

.field private static final AD_FORMAT_WEB:Ljava/lang/String; = "web"

.field public static final FETCH_ICONS:Ljava/lang/String; = "fetch_icons"

.field private static final GRADIENT_BACKGROUND_COLOR:I = -0x1

.field private static final GRADIENT_STOP:D = 0.7

.field private static final GRADIENT_TOP_ALPHA:I = 0x0

.field private static final JSON_AD_FORMAT:Ljava/lang/String; = "format"

.field public static final JSON_APPS:Ljava/lang/String; = "apps"

.field private static final JSON_CLICK_PARAMS:Ljava/lang/String; = "clickParams"

.field private static final JSON_CLICK_URL:Ljava/lang/String; = "clickUrl"

.field public static final JSON_ICONS:Ljava/lang/String; = "icons"

.field private static final JSON_INSTALL_PARAMS:Ljava/lang/String; = "installParams"

.field public static final JSON_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field private static final JSON_SELECT_PARAMS:Ljava/lang/String; = "selectParams"

.field private static final JSON_WEB_URL:Ljava/lang/String; = "webUrl"

.field private static final PREF_NAME:Ljava/lang/String; = "promoted_apps"

.field private static final PROVIDER_NAME:Ljava/lang/String; = "App"

.field static final SERVER:Ljava/lang/String; = "http://p.appbrain.com"

.field private static iconJsonRpc:Lcmn/JsonRpc;


# instance fields
.field private background:I

.field private foreground:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 90
    new-instance v0, Lcmn/JsonRpc;

    const-string v1, "http://p.appbrain.com"

    const-string v2, "/api/apps?action="

    const-string v3, "AppBrain"

    invoke-direct {v0, v1, v2, v3}, Lcmn/JsonRpc;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->iconJsonRpc:Lcmn/JsonRpc;

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lvw/ViewProvider;-><init>(Landroid/content/Context;)V

    .line 88
    const v0, -0xaaaaab

    iput v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->foreground:I

    const v0, -0x99009a

    iput v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->background:I

    .line 112
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 113
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->trackClick(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    return-void
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;
    .locals 1

    .prologue
    .line 474
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->createThumbnailsView(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;
    .locals 1

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->createFeaturedAppView(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;)I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->background:I

    return v0
.end method

.method static synthetic access$5(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 587
    invoke-direct {p0, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private createClickListener(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p1, "response"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    .param p2, "app"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .prologue
    .line 196
    new-instance v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;

    invoke-direct {v0, p0, p2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$1;-><init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    return-object v0
.end method

.method private createFeaturedAppView(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;
    .locals 24
    .param p1, "response"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    .prologue
    .line 391
    new-instance v10, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$4;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$4;-><init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Landroid/content/Context;)V

    .line 403
    .local v10, "layout":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v17, v0

    .line 404
    .local v17, "s":F
    const/high16 v20, 0x40000000    # 2.0f

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x40000000    # 2.0f

    mul-float v21, v21, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x40000000    # 2.0f

    mul-float v22, v22, v17

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object v0, v10

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 405
    const/16 v20, 0x0

    move-object v0, v10

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 407
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget-object v5, v20, v21

    .line 409
    .local v5, "app":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 410
    .local v8, "icon":Landroid/widget/ImageView;
    move-object v0, v5

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 411
    move-object v0, v5

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    :goto_0
    const/high16 v20, 0x40c00000    # 6.0f

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move v11, v0

    .line 416
    .local v11, "p":I
    invoke-virtual {v8, v11, v11, v11, v11}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 417
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v20, 0x42400000    # 48.0f

    mul-float v20, v20, v17

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42400000    # 48.0f

    mul-float v21, v21, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object v0, v9

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 418
    .local v9, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v10, v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 421
    .local v6, "appLayout":Landroid/widget/LinearLayout;
    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 423
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x1

    .line 424
    const/16 v21, -0x2

    .line 423
    move-object v0, v7

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 425
    .local v7, "appLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v20, 0x3f800000    # 1.0f

    move/from16 v0, v20

    move-object v1, v7

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 426
    invoke-virtual {v10, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    new-instance v19, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 429
    .local v19, "title":Landroid/widget/TextView;
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "<b>"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getTitle()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "</b>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    const/high16 v20, 0x41700000    # 15.0f

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextSize(F)V

    .line 431
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setLines(I)V

    .line 432
    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->foreground:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTextColor(I)V

    .line 434
    new-instance v18, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 435
    .local v18, "subtitle":Landroid/widget/TextView;
    const/high16 v20, 0x41500000    # 13.0f

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 436
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 437
    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getSnippet()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->foreground:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 440
    move-object v0, v6

    move-object/from16 v1, v19

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    move-object v0, v6

    move-object/from16 v1, v18

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 443
    new-instance v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 444
    .local v13, "priceLayout":Landroid/widget/LinearLayout;
    const/16 v20, 0x1

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 445
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    .line 446
    const/16 v21, -0x2

    .line 445
    move-object v0, v14

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 447
    .local v14, "priceLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x11

    move/from16 v0, v20

    move-object v1, v14

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 448
    new-instance v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 449
    .local v12, "price":Landroid/widget/TextView;
    const/16 v20, 0x1

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    .line 450
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "<b>"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getPrice()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->formatCurrency(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "</b>"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    const/high16 v20, 0x41400000    # 12.0f

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 452
    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->foreground:I

    move/from16 v20, v0

    move-object v0, v12

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v20, -0x2

    .line 455
    const/16 v21, -0x2

    .line 454
    move-object v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 456
    .local v15, "priceTextLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 457
    invoke-virtual {v13, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    invoke-virtual {v10, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    invoke-virtual {v13, v11, v11, v11, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 460
    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getRating()D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v20, v20, v22

    if-ltz v20, :cond_0

    .line 461
    new-instance v16, Landroid/widget/RatingBar;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x101007d

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/RatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 462
    .local v16, "rating":Landroid/widget/RatingBar;
    const/16 v20, 0x5

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setMax(I)V

    .line 463
    const/high16 v20, 0x3f000000    # 0.5f

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setStepSize(F)V

    .line 464
    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getRating()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 466
    move-object v0, v13

    move-object/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 468
    .end local v16    # "rating":Landroid/widget/RatingBar;
    :cond_0
    move-object v0, v5

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->clickUrl:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    .line 469
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->createClickListener(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)Landroid/view/View$OnClickListener;

    move-result-object v20

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 471
    :cond_1
    return-object v10

    .line 413
    .end local v6    # "appLayout":Landroid/widget/LinearLayout;
    .end local v7    # "appLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v9    # "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v11    # "p":I
    .end local v12    # "price":Landroid/widget/TextView;
    .end local v13    # "priceLayout":Landroid/widget/LinearLayout;
    .end local v14    # "priceLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v15    # "priceTextLayoutParam":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "subtitle":Landroid/widget/TextView;
    .end local v19    # "title":Landroid/widget/TextView;
    :cond_2
    const v20, 0x108000c

    move-object v0, v8

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0
.end method

.method private createThumbnailsView(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)Landroid/view/View;
    .locals 14
    .param p1, "response"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    .prologue
    .line 475
    new-instance v6, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$5;

    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    invoke-direct {v6, p0, v10}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$5;-><init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Landroid/content/Context;)V

    .line 488
    .local v6, "layout":Landroid/widget/LinearLayout;
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v8, v10, Landroid/util/DisplayMetrics;->density:F

    .line 489
    .local v8, "s":F
    const/high16 v10, 0x40000000    # 2.0f

    mul-float/2addr v10, v8

    float-to-int v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v11, v8

    float-to-int v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v12, v8

    float-to-int v12, v12

    const/4 v13, 0x0

    invoke-virtual {v6, v10, v11, v12, v13}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 490
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 492
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v10, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    array-length v10, v10

    if-lt v3, v10, :cond_0

    .line 531
    return-object v6

    .line 493
    :cond_0
    iget-object v10, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    aget-object v0, v10, v3

    .line 494
    .local v0, "app":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 495
    .local v1, "appLayout":Landroid/widget/LinearLayout;
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 497
    new-instance v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 498
    .local v9, "title":Landroid/widget/TextView;
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    new-instance v4, Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    invoke-direct {v4, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 502
    .local v4, "icon":Landroid/widget/ImageView;
    iget-object v10, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_2

    .line 503
    iget-object v10, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 508
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x42100000    # 36.0f

    mul-float/2addr v10, v8

    float-to-int v10, v10

    const/high16 v11, 0x42100000    # 36.0f

    mul-float/2addr v11, v8

    float-to-int v11, v11

    invoke-direct {v5, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 509
    .local v5, "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x11

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 511
    invoke-virtual {v1, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    .line 514
    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 513
    invoke-virtual {v1, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    iget-object v10, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->clickUrl:Ljava/lang/String;

    if-eqz v10, :cond_1

    .line 517
    invoke-direct {p0, p1, v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->createClickListener(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 518
    .local v2, "click":Landroid/view/View$OnClickListener;
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 521
    .end local v2    # "click":Landroid/view/View$OnClickListener;
    :cond_1
    const/high16 v10, 0x41400000    # 12.0f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 522
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 523
    iget v10, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->foreground:I

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 525
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    .line 526
    const/4 v11, -0x1

    .line 525
    invoke-direct {v7, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 527
    .local v7, "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v10, 0x11

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 528
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 529
    invoke-virtual {v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 492
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 505
    .end local v5    # "iconParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v7    # "layoutParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_2
    const v10, 0x108000c

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method private static drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V
    .locals 12
    .param p0, "c"    # Landroid/graphics/Canvas;
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "backgroundColor"    # I
    .param p3, "color"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 560
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 561
    .local v1, "paint":Landroid/graphics/Paint;
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 562
    invoke-virtual {v1, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 563
    invoke-virtual {p0, p1, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 568
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v8

    .line 569
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 568
    invoke-static {v10, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    .line 570
    .local v6, "topColor":I
    const/4 v7, 0x2

    new-array v0, v7, [I

    aput v6, v0, v10

    aput p3, v0, v11

    .line 571
    .local v0, "gradientColors":[I
    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    sget-object v7, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v4, v7, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 574
    .local v4, "shine":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-double v7, v7

    const-wide v9, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v7, v9

    double-to-int v7, v7

    iget v8, p1, Landroid/graphics/Rect;->top:I

    add-int v5, v7, v8

    .line 575
    .local v5, "stop":I
    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->top:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v7, v8, v9, v5}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 576
    invoke-virtual {v4, p0}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 581
    new-instance v3, Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->left:I

    iget v8, p1, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v3, v7, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 582
    .local v3, "shadowRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 583
    .local v2, "shadowPaint":Landroid/graphics/Paint;
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 584
    invoke-virtual {p0, v3, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 585
    return-void
.end method

.method private fetchIcons([Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V
    .locals 19
    .param p1, "appIconsToFetch"    # [Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 354
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 355
    .local v14, "request":Lorg/json/JSONObject;
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 356
    .local v10, "icons":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 357
    .local v6, "c":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 358
    .local v5, "assetToApp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move v0, v9

    move/from16 v1, v16

    if-lt v0, v1, :cond_0

    .line 363
    const-string v16, "icons"

    move-object v0, v14

    move-object/from16 v1, v16

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    sget-object v16, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->iconJsonRpc:Lcmn/JsonRpc;

    const-string v17, "fetch_icons"

    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lcmn/JsonRpc;->postData(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 367
    .local v15, "response":Lorg/apache/http/HttpResponse;
    :try_start_0
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v16

    const/16 v17, 0xc8

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 368
    new-instance v16, Ljava/io/IOException;

    const-string v17, "icon fetch failed"

    invoke-direct/range {v16 .. v17}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    :catchall_0
    move-exception v16

    .line 386
    invoke-static {v15}, Lcmn/JsonRpc;->finishResponse(Lorg/apache/http/HttpResponse;)V

    .line 387
    throw v16

    .line 359
    .end local v15    # "response":Lorg/apache/http/HttpResponse;
    :cond_0
    aget-object v16, p1, v9

    invoke-virtual/range {v16 .. v16}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getAssetId()Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "assetId":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "c":I
    .local v7, "c":I
    invoke-virtual {v10, v6, v4}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 361
    aget-object v16, p1, v9

    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    add-int/lit8 v9, v9, 0x1

    move v6, v7

    .end local v7    # "c":I
    .restart local v6    # "c":I
    goto :goto_0

    .line 370
    .end local v4    # "assetId":Ljava/lang/String;
    .restart local v15    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    new-instance v11, Ljava/io/DataInputStream;

    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v16

    move-object v0, v11

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 371
    .local v11, "input":Ljava/io/DataInputStream;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    .line 372
    .local v13, "numIcons":I
    const/4 v9, 0x0

    :goto_1
    if-lt v9, v13, :cond_2

    .line 386
    invoke-static {v15}, Lcmn/JsonRpc;->finishResponse(Lorg/apache/http/HttpResponse;)V

    .line 388
    return-void

    .line 373
    :cond_2
    :try_start_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 374
    .restart local v4    # "assetId":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v12

    .line 375
    .local v12, "len":I
    new-array v8, v12, [B

    .line 376
    .local v8, "data":[B
    invoke-virtual {v11, v8}, Ljava/io/DataInputStream;->readFully([B)V

    .line 378
    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .line 379
    .local v3, "app":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    if-nez v3, :cond_3

    .line 380
    const-string v16, ""

    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "icon "

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " received but not requested"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 383
    :cond_3
    new-instance v16, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v17, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 v18, v0

    move-object v0, v8

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v16

    move-object v1, v3

    iput-object v0, v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private generateBackgroundDrawable(Landroid/graphics/Rect;II)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "r"    # Landroid/graphics/Rect;
    .param p2, "backgroundColor"    # I
    .param p3, "color"    # I

    .prologue
    .line 588
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 589
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 590
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-static {v1, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Rect;II)V

    .line 591
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v2
.end method

.method public static register()V
    .locals 2

    .prologue
    .line 595
    const-string v0, "App"

    invoke-static {v0}, Lvw/ViewProvider;->isFactoryRegistered(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    const-string v0, "App"

    new-instance v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$6;

    invoke-direct {v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$6;-><init>()V

    invoke-static {v0, v1}, Lvw/ViewProvider;->addFactory(Ljava/lang/String;Lvw/ViewProvider$ViewProviderFactory;)V

    .line 603
    :cond_0
    return-void
.end method

.method public static reportAppInstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 276
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->reportPackageChange(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 277
    return-void
.end method

.method public static reportAppUninstall(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 280
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->reportPackageChange(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 281
    return-void
.end method

.method static reportEvents(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "extraUrlParameters"    # Ljava/lang/String;

    .prologue
    .line 222
    const-string v0, "promoted_apps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 223
    .local v5, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    .line 224
    .local p0, "prefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 225
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 227
    .local v1, "error":Z
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    .end local p0    # "prefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v1

    .line 271
    .end local v1    # "error":Z
    .local p0, "error":Z
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 272
    if-eqz p0, :cond_6

    const/4 p0, 0x0

    .end local p0    # "error":Z
    :goto_2
    return p0

    .line 227
    .restart local v1    # "error":Z
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 228
    .local v2, "key":Ljava/lang/String;
    const/4 p0, 0x0

    invoke-interface {v5, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 229
    .local p0, "data":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 236
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 238
    .local v3, "obj":Lorg/json/JSONObject;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-string p0, "t"

    .end local p0    # "data":Ljava/lang/String;
    invoke-virtual {v3, p0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/32 v12, 0xf731400

    add-long/2addr v10, v12

    cmp-long p0, v8, v10

    if-lez p0, :cond_2

    const/4 p0, 0x1

    .line 241
    .local p0, "old":Z
    :goto_3
    const-string v4, "sent"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 242
    if-eqz p0, :cond_0

    .line 243
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 266
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local p0    # "old":Z
    :catch_0
    move-exception p0

    .line 267
    .local p0, "e1":Lorg/json/JSONException;
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 268
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 238
    .end local p0    # "e1":Lorg/json/JSONException;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :cond_2
    const/4 p0, 0x0

    goto :goto_3

    .line 247
    .local p0, "old":Z
    :cond_3
    :try_start_1
    const-string v4, "type"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 248
    .local v6, "type":Ljava/lang/String;
    const-string v4, "click"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "clkp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 251
    .local v4, "params":Ljava/lang/String;
    :goto_4
    :try_start_2
    sget-object v8, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->jsonRpc:Lcmn/JsonRpc;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "?action="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 252
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .end local v4    # "params":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    .line 251
    invoke-virtual {v8, v4, v9}, Lcmn/JsonRpc;->requestData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 253
    .local v4, "rpcResult":Ljava/lang/String;
    const-string v8, "OK"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .end local v4    # "rpcResult":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 254
    const-string v4, "click"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez p0, :cond_5

    .line 255
    const-string p0, "sent"

    .end local p0    # "old":Z
    const/4 v4, 0x1

    invoke-virtual {v3, p0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 261
    :catch_1
    move-exception p0

    .line 262
    .local p0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    const/4 p0, 0x1

    .end local v1    # "error":Z
    .local p0, "error":Z
    goto/16 :goto_1

    .line 249
    .restart local v1    # "error":Z
    .local p0, "old":Z
    :cond_4
    const-string v4, "instp"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v4

    goto :goto_4

    .line 258
    :cond_5
    :try_start_4
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0

    .line 272
    .end local v1    # "error":Z
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v6    # "type":Ljava/lang/String;
    .local p0, "error":Z
    :cond_6
    const/4 p0, 0x1

    goto/16 :goto_2
.end method

.method private static reportPackageChange(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "install"    # Z

    .prologue
    .line 285
    const-string v0, "promoted_apps"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 288
    .local v0, "prefs":Landroid/content/SharedPreferences;
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 289
    .local v0, "data":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 311
    .end local v0    # "data":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "install":Z
    :goto_0
    return-void

    .line 293
    .restart local v0    # "data":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "install":Z
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v0, "t"

    .end local v0    # "data":Ljava/lang/String;
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 295
    .local v0, "clickTime":J
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&time="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v4, 0x3e8

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&delta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 296
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    .end local v0    # "clickTime":J
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 297
    const-string v1, "instp"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "params":Ljava/lang/String;
    if-eqz p2, :cond_1

    const-string p2, "install"

    .end local p2    # "install":Z
    move-object v0, p2

    .line 301
    .local v0, "eventType":Ljava/lang/String;
    :goto_1
    const-string p2, ""

    .line 300
    invoke-static {p0, p1, v0, v1, p2}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->createAppEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 302
    .local p2, "event":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "params":Ljava/lang/String;
    const-class v2, Lcom/appspot/swisscodemonkeys/featured/SendService;

    .end local v2    # "obj":Lorg/json/JSONObject;
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "event"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    const-string p2, "key"

    .end local p2    # "event":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .end local v0    # "eventType":Ljava/lang/String;
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 306
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception p0

    .line 307
    .local p0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0

    .line 299
    .local v1, "params":Ljava/lang/String;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .local p0, "context":Landroid/content/Context;
    .restart local p1    # "packageName":Ljava/lang/String;
    .local p2, "install":Z
    :cond_1
    :try_start_1
    const-string p2, "uninstall"
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p2

    goto :goto_1

    .line 308
    .end local v1    # "params":Ljava/lang/String;
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "install":Z
    :catch_1
    move-exception p0

    .line 309
    .local p0, "e":Lorg/json/JSONException;
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private retrieveFeaturedApps(Lcmn/AppProperties;)Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    .locals 14
    .param p1, "props"    # Lcmn/AppProperties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x0

    .line 128
    new-instance v9, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    invoke-direct {v9}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;-><init>()V

    .line 130
    .local v9, "response":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->createUrlParameters(Lcmn/AppProperties;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->extraUrlParameters:Ljava/lang/String;

    .line 131
    sget-object v10, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->jsonRpc:Lcmn/JsonRpc;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "?action=fetch"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    iget-object v12, v9, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->extraUrlParameters:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 131
    invoke-virtual {v10, v11, v13}, Lcmn/JsonRpc;->requestJson(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v4

    .line 135
    .local v4, "json":Lorg/json/JSONObject;
    const-string v10, "scmpconf"

    invoke-virtual {v4, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "newConfig":Ljava/lang/String;
    const-string v10, "scmset"

    invoke-virtual {v4, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 138
    .local v7, "newSettings":Ljava/lang/String;
    if-nez v6, :cond_0

    if-eqz v7, :cond_3

    .line 139
    :cond_0
    iget-object v10, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 140
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    if-eqz v6, :cond_1

    .line 141
    const-string v10, "scmpconf"

    invoke-interface {v2, v10, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 143
    :cond_1
    if-eqz v7, :cond_2

    .line 144
    const-string v10, "scmset"

    invoke-interface {v2, v10, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    invoke-static {}, Lcmn/AdConfig;->touchConfig()V

    .line 150
    .end local v2    # "edit":Landroid/content/SharedPreferences$Editor;
    :cond_3
    const-string v10, "format"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->format:Ljava/lang/String;

    .line 151
    const-string v10, "selectParams"

    const-string v11, ""

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selectParams:Ljava/lang/String;

    .line 152
    const-string v10, "apps"

    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 155
    .local v1, "apps":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lt v3, v10, :cond_4

    .line 167
    return-object v9

    .line 156
    :cond_4
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 157
    .local v5, "jsonApp":Lorg/json/JSONObject;
    new-instance v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;-><init>()V

    .line 158
    .local v0, "app":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    const-string v10, "pkg"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 159
    .local v8, "packageName":Ljava/lang/String;
    invoke-static {v0, v8, v5}, Lcom/appspot/swisscodemonkeys/apps/model/AppItemParser;->convertFromJson(Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 161
    const-string v10, "clickUrl"

    invoke-virtual {v5, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->clickUrl:Ljava/lang/String;

    .line 162
    const-string v10, "clickParams"

    invoke-virtual {v5, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->clickParams:Ljava/lang/String;

    .line 163
    const-string v10, "installParams"

    invoke-virtual {v5, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->installParams:Ljava/lang/String;

    .line 164
    const-string v10, "webUrl"

    invoke-virtual {v5, v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->webUrl:Ljava/lang/String;

    .line 165
    iget-object v10, v9, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method static saveEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;

    .prologue
    .line 216
    const-string v1, "promoted_apps"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 217
    .local v0, "edit":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 218
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 219
    return-void
.end method

.method private selectFeaturedApp(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)V
    .locals 9
    .param p1, "response"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 171
    const-string v5, "thumbs"

    iget-object v6, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->format:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x4

    move v2, v5

    .line 172
    .local v2, "numApps":I
    :goto_0
    new-array v5, v2, [Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    iput-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .line 173
    const/4 v3, 0x0

    .line 174
    .local v3, "pos":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v1, v5, :cond_3

    .line 183
    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 184
    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    array-length v5, v5

    if-le v5, v8, :cond_0

    .line 185
    const-string v5, "default"

    iput-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->format:Ljava/lang/String;

    .line 186
    new-array v5, v8, [Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    iget-object v6, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    aget-object v6, v6, v7

    aput-object v6, v5, v7

    iput-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .line 188
    :cond_0
    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    aget-object v5, v5, v7

    if-nez v5, :cond_1

    .line 189
    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    iget-object v6, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;
    check-cast p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    aput-object p0, v5, v7

    .line 192
    :cond_1
    return-void

    .end local v1    # "i":I
    .end local v2    # "numApps":I
    .end local v3    # "pos":I
    .restart local p0    # "this":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;
    :cond_2
    move v2, v8

    .line 171
    goto :goto_0

    .line 175
    .restart local v1    # "i":I
    .restart local v2    # "numApps":I
    .restart local v3    # "pos":I
    :cond_3
    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .line 176
    .local v0, "app":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->installed:Z

    .line 177
    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    array-length v5, v5

    if-ge v3, v5, :cond_4

    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    aget-object v5, v5, v3

    if-nez v5, :cond_4

    iget-boolean v5, v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;->installed:Z

    if-nez v5, :cond_4

    .line 178
    iget-object v5, p1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .local v4, "pos":I
    aput-object v0, v5, v3

    move v3, v4

    .line 174
    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private trackClick(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V
    .locals 1
    .param p1, "app"    # Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppUtil;->trackClick(Landroid/content/Context;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    .line 210
    return-void
.end method


# virtual methods
.method protected configure(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-super {p0, p1}, Lvw/ViewProvider;->configure(Lorg/json/JSONObject;)V

    .line 118
    return-void
.end method

.method public getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
    .locals 6
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    const/4 v5, 0x0

    .line 316
    :try_start_0
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->retrieveFeaturedApps(Lcmn/AppProperties;)Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;

    move-result-object v1

    .line 317
    .local v1, "response":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    iget-object v3, v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v5

    .line 348
    .end local v1    # "response":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    :goto_0
    return-object v3

    .line 320
    .restart local v1    # "response":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    :cond_0
    invoke-direct {p0, v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->selectFeaturedApp(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)V

    .line 322
    const-string v3, "web"

    iget-object v4, v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->format:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 323
    iget-object v3, v1, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;

    invoke-direct {p0, v3}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->fetchIcons([Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;)V

    .line 326
    :cond_1
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$2;

    invoke-direct {v4, p0, v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$2;-><init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 331
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 333
    new-instance v2, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;

    invoke-direct {v2, p0, v1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$3;-><init>(Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v2, "result":Lvw/SCMView$ViewResult;
    move-object v3, v2

    .line 344
    goto :goto_0

    .line 345
    .end local v1    # "response":Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
    .end local v2    # "result":Lvw/SCMView$ViewResult;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v5

    .line 348
    goto :goto_0
.end method

.method public needsIP()Z
    .locals 1

    .prologue
    .line 536
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferredColors(II)V
    .locals 0
    .param p1, "foreground"    # I
    .param p2, "background"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->foreground:I

    .line 123
    iput p2, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->background:I

    .line 124
    return-void
.end method
