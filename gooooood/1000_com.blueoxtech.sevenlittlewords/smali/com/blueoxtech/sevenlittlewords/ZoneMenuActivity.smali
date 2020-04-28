.class public Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:[Landroid/widget/RelativeLayout;

.field private j:Lcom/blueoxtech/sevenlittlewords/v;

.field private k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

.field private l:Ljava/util/Set;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    iput-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->f:[Ljava/lang/String;

    iput-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->g:[Ljava/lang/String;

    iput-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->h:[Ljava/lang/String;

    iput-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->i:[Landroid/widget/RelativeLayout;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->l:Ljava/util/Set;

    return-void
.end method

.method private a(II)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;
    .locals 1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    return-object v0
.end method

.method private a(I)V
    .locals 14

    const/high16 v13, 0x3f800000    # 1.0f

    const v9, 0x7f0a001e

    const v12, 0x7f0a001f

    const/4 v11, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->i:[Landroid/widget/RelativeLayout;

    aget-object v3, v0, p1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->f:[Ljava/lang/String;

    aget-object v5, v0, p1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->g:[Ljava/lang/String;

    aget-object v4, v0, p1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->h:[Ljava/lang/String;

    aget-object v6, v0, p1

    sget-object v1, Lcom/blueoxtech/sevenlittlewords/c;->c:Lcom/blueoxtech/sevenlittlewords/c;

    const-string v0, "FREE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/c;->a:Lcom/blueoxtech/sevenlittlewords/c;

    move-object v2, v0

    :goto_0
    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/c;->c:Lcom/blueoxtech/sevenlittlewords/c;

    if-ne v2, v0, :cond_5

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->c:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    sget-object v0, Lcom/blueoxtech/sevenlittlewords/c;->d:Lcom/blueoxtech/sevenlittlewords/c;

    if-ne v2, v0, :cond_7

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x40

    invoke-static {v1, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v11, v11, v11, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x40

    invoke-static {v1, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v11, v11, v11, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_3
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f020009

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    :goto_4
    new-instance v0, Lcom/blueoxtech/sevenlittlewords/o;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/blueoxtech/sevenlittlewords/o;-><init>(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;Lcom/blueoxtech/sevenlittlewords/c;Landroid/widget/RelativeLayout;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v0, "COMING_SOON"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/c;->d:Lcom/blueoxtech/sevenlittlewords/c;

    move-object v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_a

    sget-object v0, Lcom/blueoxtech/sevenlittlewords/c;->b:Lcom/blueoxtech/sevenlittlewords/c;

    move-object v2, v0

    goto/16 :goto_0

    :cond_3
    move v0, v8

    goto :goto_5

    :cond_4
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->d:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/blueoxtech/sevenlittlewords/c;->d:Lcom/blueoxtech/sevenlittlewords/c;

    if-ne v2, v0, :cond_6

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "Coming Soon!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_6
    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v7, 0xbf

    invoke-static {v7, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v13, v11, v13, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v7, 0xff

    const/16 v8, 0x55

    const/16 v9, 0x55

    const/16 v10, 0x55

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v3, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v13, v11, v13, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto/16 :goto_3

    :cond_8
    sget-object v0, Lcom/blueoxtech/sevenlittlewords/c;->d:Lcom/blueoxtech/sevenlittlewords/c;

    if-ne v2, v0, :cond_9

    const v0, 0x7f020004

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_4

    :cond_9
    const v0, 0x7f020008

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto/16 :goto_4

    :cond_a
    move-object v2, v1

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Lcom/blueoxtech/sevenlittlewords/billing/BillingService;
    .locals 1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    return-object v0
.end method

.method private b()Z
    .locals 1

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    :try_start_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->l:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->h:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v4, v4, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const/4 v5, -0x1

    invoke-interface {v4, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->l:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    return v0
.end method

.method static synthetic d(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const-string v3, "lastLicenseCheck"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const-string v3, "initialized"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->b()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "rechecking license"

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->b()Z

    goto :goto_0
.end method

.method static synthetic e(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    return v0
.end method

.method static synthetic f(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notify:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0, v0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->setVolumeControlStream(I)V

    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->setContentView(I)V

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->n:Landroid/view/LayoutInflater;

    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->c:Ljava/lang/String;

    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->g:[Ljava/lang/String;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->j:[Ljava/lang/String;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->h:[Ljava/lang/String;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const-string v1, "lastZoneNamePlayed"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->b:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->d:Landroid/content/res/AssetManager;

    const-string v1, "Puzzles"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->f:[Ljava/lang/String;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->f:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->i:[Landroid/widget/RelativeLayout;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v0, Lcom/blueoxtech/sevenlittlewords/v;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/blueoxtech/sevenlittlewords/v;-><init>(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->j:Lcom/blueoxtech/sevenlittlewords/v;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-direct {v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-virtual {v0, p0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->j:Lcom/blueoxtech/sevenlittlewords/v;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/billing/f;->a(Lcom/blueoxtech/sevenlittlewords/billing/a;)V

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-static {v10, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v3, v0

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, 0x43a00000    # 320.0f

    invoke-static {v10, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    const/high16 v4, 0x420c0000    # 35.0f

    invoke-static {v10, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v10, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-static {v10, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    move v4, v0

    :goto_1
    move v5, v11

    move-object v0, v12

    :goto_2
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->f:[Ljava/lang/String;

    array-length v1, v1

    if-ge v5, v1, :cond_2

    rem-int/lit8 v1, v5, 0x2

    if-nez v1, :cond_1

    new-instance v0, Landroid/widget/TableRow;

    invoke-direct {v0, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v6, v3

    move v7, v4

    move-object v8, v0

    :goto_3
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->n:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    invoke-virtual {v8, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->i:[Landroid/widget/RelativeLayout;

    aput-object v0, v1, v5

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v9, 0x42f00000    # 120.0f

    invoke-static {v10, v9, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v9, 0x42700000    # 60.0f

    invoke-static {v10, v9, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v9

    float-to-int v9, v9

    iput v9, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    invoke-virtual {v1, v7, v3, v6, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, v5}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(I)V

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v0, v8

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_0
    float-to-int v0, v4

    move v4, v0

    goto :goto_1

    :cond_1
    move v6, v4

    move v7, v3

    move-object v8, v0

    goto :goto_3

    :cond_2
    new-instance v1, Landroid/widget/TableRow;

    invoke-direct {v1, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->n:Landroid/view/LayoutInflater;

    const v5, 0x7f03000c

    invoke-virtual {v0, v5, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v5, 0x7f0a0020

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow$LayoutParams;

    const/high16 v5, 0x437a0000    # 250.0f

    invoke-static {v10, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/TableRow$LayoutParams;->width:I

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v10, v5, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->height:I

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/TableRow$LayoutParams;->setMargins(IIII)V

    const/4 v2, 0x2

    iput v2, v1, Landroid/widget/TableRow$LayoutParams;->span:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/n;

    invoke-direct {v1, p0, v0}, Lcom/blueoxtech/sevenlittlewords/n;-><init>(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-boolean v10, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->b()Z

    move-result v0

    if-nez v0, :cond_3

    iput-boolean v11, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a()V

    :cond_3
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iput-boolean v11, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a()V

    :cond_4
    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/m;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/m;-><init>(Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    const v1, 0x7f070007

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f070008

    invoke-direct {p0, v1, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f070005

    const v1, 0x7f070006

    invoke-direct {p0, v0, v1}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    const v0, 0x7f070009

    invoke-direct {p0, v1, v0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a(II)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->c()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const-string v1, "lastZoneNamePlayed"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->b:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    :cond_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->k:Lcom/blueoxtech/sevenlittlewords/billing/BillingService;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/billing/BillingService;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iput-boolean v3, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->e:Z

    :cond_1
    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->a()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->j:Lcom/blueoxtech/sevenlittlewords/v;

    invoke-static {v0}, Lcom/blueoxtech/sevenlittlewords/billing/f;->a(Lcom/blueoxtech/sevenlittlewords/billing/a;)V

    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/ZoneMenuActivity;->c()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/blueoxtech/sevenlittlewords/billing/f;->a()V

    return-void
.end method
