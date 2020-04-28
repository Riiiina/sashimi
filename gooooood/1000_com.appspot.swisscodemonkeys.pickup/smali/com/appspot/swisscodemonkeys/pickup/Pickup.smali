.class public Lcom/appspot/swisscodemonkeys/pickup/Pickup;
.super Lcom/appspot/swisscodemonkeys/pickup/PickupApp;
.source "Pickup.java"


# static fields
.field private static final NEW_LINE_DIALOG:I = 0x2

.field protected static final UPDATED_PROFILE:I = 0x1


# instance fields
.field private authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

.field private drawer:Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;

.field private flipper:Landroid/widget/ViewFlipper;

.field protected parentBlurb:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;-><init>()V

    .line 38
    const-string v0, "pickup"

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->parentBlurb:Ljava/lang/String;

    .line 37
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->refreshBlurbs()V

    return-void
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)Landroid/widget/ViewFlipper;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->flipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method private createLoaderForList(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;I)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
    .locals 2
    .param p1, "pickupList"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
    .param p2, "category"    # I

    .prologue
    .line 47
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup$1;

    invoke-direct {v1, p0, p2}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;I)V

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    return-object v0
.end method

.method private refreshBlurbs()V
    .locals 5

    .prologue
    .line 344
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->flipper:Landroid/widget/ViewFlipper;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 345
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    if-eqz v3, :cond_1

    .line 346
    move-object v0, v2

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    move-object v1, v0

    .line 347
    .local v1, "b":Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->reload()V

    .line 351
    .end local v1    # "b":Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 348
    .restart local v2    # "view":Landroid/view/View;
    :cond_1
    instance-of v3, v2, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    if-eqz v3, :cond_0

    .line 349
    check-cast v2, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    .end local v2    # "view":Landroid/view/View;
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    goto :goto_0
.end method

.method public static sanitizeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xa

    const/4 v4, -0x1

    .line 59
    const-string v2, "\n\n"

    const-string v3, "\n"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 61
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 62
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    if-ne v1, v4, :cond_2

    .line 65
    :cond_0
    if-eq v1, v4, :cond_1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\n"

    const-string v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 68
    :cond_1
    return-object p0

    .line 63
    :cond_2
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected addAboutAuthor(Landroid/widget/ViewFlipper;)V
    .locals 2
    .param p1, "flipper"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 265
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    .line 266
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 268
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup$7;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$7;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->setAddMessageListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup$8;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$8;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->setEditProfileListener(Landroid/view/View$OnClickListener;)V

    .line 281
    return-void
.end method

.method protected addExtraMenuItems(ILandroid/view/Menu;)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x0

    .line 310
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v2, p1, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 311
    const v1, 0x7f020014

    .line 310
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 312
    add-int/lit8 v0, p1, 0x1

    const v1, 0x7f070023

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 313
    const v1, 0x108004d

    .line 312
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 314
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getAddBlurbMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 315
    const v1, 0x1080033

    .line 314
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 316
    add-int/lit8 v0, p1, 0x3

    const v1, 0x7f07003c

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 317
    const v1, 0x1080049

    .line 316
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 318
    return-void
.end method

.method protected addFavorites(Landroid/widget/ViewFlipper;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .param p1, "flipper"    # Landroid/widget/ViewFlipper;

    .prologue
    .line 285
    .local p2, "clickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    new-instance v2, Lcom/appspot/swisscodemonkeys/pickup/Pickup$9;

    invoke-direct {v2, p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$9;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V

    invoke-direct {v0, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    .line 292
    .local v0, "favLoader":Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;-><init>(Landroid/content/Context;)V

    .line 293
    .local v1, "listView":Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
    invoke-virtual {v1, p2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    invoke-virtual {v1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setBlurbLoader(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    .line 295
    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method protected applyTheme()V
    .locals 3

    .prologue
    const v2, 0x7f020017

    .line 224
    const v0, 0x7f0b0027

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f020002

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 225
    const v0, 0x7f0b0028

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    const v0, 0x7f0b0029

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 227
    const v0, 0x7f0b002a

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 228
    return-void
.end method

.method protected createTabs(Landroid/widget/ViewFlipper;)V
    .locals 7
    .param p1, "flipper"    # Landroid/widget/ViewFlipper;

    .prologue
    const/4 v6, 0x0

    .line 239
    const/4 v4, 0x3

    new-array v1, v4, [I

    const/4 v4, -0x2

    aput v4, v1, v6

    const/4 v4, 0x2

    const/4 v5, -0x3

    aput v5, v1, v4

    .line 241
    .local v1, "cat":[I
    new-instance v2, Lcom/appspot/swisscodemonkeys/pickup/Pickup$6;

    invoke-direct {v2, p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$6;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V

    .line 250
    .local v2, "clickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    array-length v4, v1

    move v5, v6

    :goto_0
    if-lt v5, v4, :cond_0

    .line 257
    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->addAboutAuthor(Landroid/widget/ViewFlipper;)V

    .line 259
    invoke-virtual {p0, p1, v2}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->addFavorites(Landroid/widget/ViewFlipper;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 260
    return-void

    .line 250
    :cond_0
    aget v0, v1, v5

    .line 251
    .local v0, "c":I
    new-instance v3, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-direct {v3, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;-><init>(Landroid/content/Context;)V

    .line 252
    .local v3, "listView":Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
    invoke-virtual {v3, v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 253
    invoke-direct {p0, v3, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->createLoaderForList(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;I)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setBlurbLoader(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    .line 254
    invoke-virtual {p1, v3}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method protected getAddBlurbMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    const v0, 0x7f070025

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAddButton()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f070020

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getMessageAfterBlurbWasAdded()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    const v0, 0x7f070024

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getReminderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const v0, 0x7f070021

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSections()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Daily Top"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "All-Time Top"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Recent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "My Profile"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "My Favorites"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 300
    invoke-super {p0, p1, p2, p3}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onActivityResult(IILandroid/content/Intent;)V

    .line 301
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->authorView:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 306
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super/range {p0 .. p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreate(Landroid/os/Bundle;)V

    .line 137
    if-eqz p1, :cond_1

    .line 138
    const-string v4, "showToast"

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    move/from16 v19, v4

    .line 140
    .local v19, "showReminder":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "category"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "category"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->parentBlurb:Ljava/lang/String;

    .line 143
    const/16 v19, 0x0

    .line 148
    :goto_1
    const v4, 0x7f030005

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->setContentView(I)V

    .line 149
    invoke-static {}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->register()V

    .line 150
    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;

    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;-><init>(Landroid/content/res/Resources;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->drawer:Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->drawer:Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;

    move-object v4, v0

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->setTextColor(Ljava/lang/Integer;)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->drawer:Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;

    move-object v4, v0

    sput-object v4, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->defaultDrawer:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    .line 154
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getSections()[Ljava/lang/String;

    move-result-object v7

    .line 156
    .local v7, "array":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->applyTheme()V

    .line 157
    const v4, 0x7f0b0029

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 158
    .local v6, "spinner1":Landroid/widget/Spinner;
    new-instance v16, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030010

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move v2, v4

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 159
    .local v16, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x1090009

    move-object/from16 v0, v16

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 160
    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 161
    const-string v4, "Select Category"

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 163
    const v4, 0x7f040002

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v15

    .line 164
    .local v15, "leftIn":Landroid/view/animation/Animation;
    const v4, 0x7f040003

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v14

    .line 165
    .local v14, "leftOut":Landroid/view/animation/Animation;
    const v4, 0x7f040004

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    .line 166
    .local v9, "rightIn":Landroid/view/animation/Animation;
    const v4, 0x7f040005

    move-object/from16 v0, p0

    move v1, v4

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v8

    .line 168
    .local v8, "rightOut":Landroid/view/animation/Animation;
    const v4, 0x7f0b002c

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    check-cast p1, Landroid/widget/ViewFlipper;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->flipper:Landroid/widget/ViewFlipper;

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->flipper:Landroid/widget/ViewFlipper;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ViewFlipper;->setAnimateFirstView(Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->flipper:Landroid/widget/ViewFlipper;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->createTabs(Landroid/widget/ViewFlipper;)V

    .line 172
    const v4, 0x7f0b0028

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    .line 173
    .local v18, "prev":Landroid/widget/Button;
    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/Pickup$3;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;Landroid/widget/Spinner;[Ljava/lang/String;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v4, 0x7f0b002a

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    .line 184
    .local v17, "next":Landroid/widget/Button;
    new-instance v10, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;

    move-object/from16 v11, p0

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v10 .. v15}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$4;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;Landroid/widget/Spinner;[Ljava/lang/String;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/Pickup$5;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$5;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V

    invoke-virtual {v6, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 218
    if-eqz v19, :cond_0

    .line 219
    invoke-virtual/range {p0 .. p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getReminderText()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 221
    :cond_0
    return-void

    .line 138
    .end local v6    # "spinner1":Landroid/widget/Spinner;
    .end local v7    # "array":[Ljava/lang/String;
    .end local v8    # "rightOut":Landroid/view/animation/Animation;
    .end local v9    # "rightIn":Landroid/view/animation/Animation;
    .end local v14    # "leftOut":Landroid/view/animation/Animation;
    .end local v15    # "leftIn":Landroid/view/animation/Animation;
    .end local v16    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v17    # "next":Landroid/widget/Button;
    .end local v18    # "prev":Landroid/widget/Button;
    .end local v19    # "showReminder":Z
    .restart local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_1
    const/4 v4, 0x1

    move/from16 v19, v4

    goto/16 :goto_0

    .line 146
    .restart local v19    # "showReminder":Z
    :cond_2
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->requestWindowFeature(I)Z

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v5, 0x5

    .line 73
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    .line 74
    .local v2, "dialog":Landroid/app/Dialog;
    if-eqz v2, :cond_0

    move-object v4, v2

    .line 120
    :goto_0
    return-object v4

    .line 77
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 78
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 125
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown dialog "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :pswitch_0
    new-instance v3, Landroid/widget/EditText;

    invoke-direct {v3, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 82
    .local v3, "text":Landroid/widget/EditText;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 83
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setMinLines(I)V

    .line 84
    invoke-virtual {v3, v5}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 85
    const/16 v4, 0x12c

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setWidth(I)V

    .line 86
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;

    invoke-direct {v1, p0, v3}, Lcom/appspot/swisscodemonkeys/pickup/Pickup$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;Landroid/widget/EditText;)V

    .line 120
    .local v1, "clicklistener":Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getAddButton()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 121
    const v5, 0x7f070017

    invoke-virtual {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 120
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 121
    const v5, 0x7f07001c

    invoke-virtual {p0, v5}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 122
    const v5, 0x1080033

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 355
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 356
    const-string v0, "showToast"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    return-void
.end method

.method protected readPreferences(Landroid/content/SharedPreferences;)V
    .locals 2
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 369
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->readPreferences(Landroid/content/SharedPreferences;)V

    .line 370
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->drawer:Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->loadPreferences(Landroid/content/SharedPreferences;Z)V

    .line 371
    return-void
.end method

.method protected selectMenuItem(II)V
    .locals 3
    .param p1, "startIndex"    # I
    .param p2, "index"    # I

    .prologue
    .line 322
    sub-int v0, p2, p1

    .line 323
    .local v0, "pos":I
    packed-switch v0, :pswitch_data_0

    .line 337
    :goto_0
    return-void

    .line 325
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/appspot/swisscodemonkeys/featured/OfferWall;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 328
    :pswitch_1
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->refreshBlurbs()V

    goto :goto_0

    .line 331
    :pswitch_2
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->showDialog(I)V

    goto :goto_0

    .line 334
    :pswitch_3
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->startPreferenceActivity()V

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected startPreferenceActivity()V
    .locals 1

    .prologue
    .line 340
    const-class v0, Lcom/appspot/swisscodemonkeys/pickup/PickupPreferences;

    invoke-static {p0, v0}, Lcmn/SCMPreferenceActivity;->startIntent(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 341
    return-void
.end method
