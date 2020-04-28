.class final Lchooser/ResolverActivity$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lchooser/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mIntent:Landroid/content/Intent;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lchooser/ResolverActivity$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lchooser/ResolverActivity;


# direct methods
.method public constructor <init>(Lchooser/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V
    .locals 21
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;

    .prologue
    .line 419
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lchooser/ResolverActivity$ResolveListAdapter;->this$0:Lchooser/ResolverActivity;

    .line 317
    invoke-direct/range {p0 .. p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 318
    new-instance v4, Landroid/content/Intent;

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lchooser/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 320
    const-string v4, "layout_inflater"

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "context":Landroid/content/Context;
    check-cast p2, Landroid/view/LayoutInflater;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lchooser/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 322
    invoke-static/range {p1 .. p1}, Lchooser/ResolverActivity;->access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 323
    const/high16 v5, 0x10000

    .line 324
    invoke-static/range {p1 .. p1}, Lchooser/ResolverActivity;->access$1(Lchooser/ResolverActivity;)Landroid/widget/CheckBox;

    move-result-object v6

    if-eqz v6, :cond_4

    const/16 v6, 0x40

    .line 323
    :goto_0
    or-int/2addr v5, v6

    .line 322
    move-object v0, v4

    move-object/from16 v1, p3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 326
    .local v11, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "N":I
    if-lez v16, :cond_3

    .line 329
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 330
    .local v14, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v18, 0x1

    .local v18, "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v16

    if-lt v0, v1, :cond_5

    .line 349
    const/4 v4, 0x1

    move/from16 v0, v16

    move v1, v4

    if-le v0, v1, :cond_0

    .line 350
    new-instance v19, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    .line 351
    invoke-static/range {p1 .. p1}, Lchooser/ResolverActivity;->access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 350
    move-object/from16 v0, v19

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 352
    .local v19, "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object v0, v11

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 355
    .end local v19    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    .line 357
    const-string v4, "save_to_gallery"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 359
    new-instance v3, Lchooser/ResolverActivity$DisplayResolveInfo;

    .line 360
    new-instance v5, Landroid/content/pm/ResolveInfo;

    .line 359
    invoke-direct {v5}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 361
    invoke-virtual/range {p1 .. p1}, Lchooser/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v6, 0x7f070000

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v4, p1

    .line 359
    invoke-direct/range {v3 .. v8}, Lchooser/ResolverActivity$DisplayResolveInfo;-><init>(Lchooser/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 363
    .local v3, "gallery":Lchooser/ResolverActivity$DisplayResolveInfo;
    invoke-virtual/range {p1 .. p1}, Lchooser/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x108003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 362
    iput-object v4, v3, Lchooser/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v3    # "gallery":Lchooser/ResolverActivity$DisplayResolveInfo;
    :cond_1
    if-eqz p4, :cond_2

    .line 369
    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, p4

    array-length v0, v0

    move v4, v0

    move/from16 v0, v18

    move v1, v4

    if-lt v0, v1, :cond_a

    .line 396
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v14, Landroid/content/pm/ResolveInfo;

    .line 397
    .restart local v14    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v12, 0x0

    .line 398
    .local v12, "start":I
    invoke-static/range {p1 .. p1}, Lchooser/ResolverActivity;->access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 399
    .local v15, "r0Label":Ljava/lang/CharSequence;
    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    .line 417
    const/4 v4, 0x1

    sub-int v13, v16, v4

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lchooser/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .end local v12    # "start":I
    .end local v14    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v15    # "r0Label":Ljava/lang/CharSequence;
    .end local v16    # "N":I
    .end local v18    # "i":I
    :cond_3
    return-void

    .line 324
    .end local v11    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 331
    .restart local v11    # "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v14    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v16    # "N":I
    .restart local v18    # "i":I
    :cond_5
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 336
    .local v6, "ri":Landroid/content/pm/ResolveInfo;
    iget v4, v14, Landroid/content/pm/ResolveInfo;->priority:I

    iget v5, v6, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v4, v5, :cond_6

    iget-boolean v4, v14, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v5, v6, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v4, v5, :cond_7

    .line 337
    :cond_6
    :goto_4
    move/from16 v0, v18

    move/from16 v1, v16

    if-lt v0, v1, :cond_9

    .line 343
    :cond_7
    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_8

    .line 344
    invoke-virtual/range {p1 .. p1}, Lchooser/ResolverActivity;->getApplication()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 345
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 346
    add-int/lit8 v16, v16, -0x1

    .line 330
    :cond_8
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .line 338
    :cond_9
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 339
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 370
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_a
    aget-object v9, p4, v18

    .line 371
    .local v9, "ii":Landroid/content/Intent;
    if-nez v9, :cond_b

    .line 369
    :goto_5
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 374
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lchooser/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v9, v4, v5}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v17

    .line 375
    .local v17, "ai":Landroid/content/pm/ActivityInfo;
    if-nez v17, :cond_c

    .line 376
    const-string v4, "ResolverActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "No activity found for "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 379
    :cond_c
    new-instance v6, Landroid/content/pm/ResolveInfo;

    invoke-direct {v6}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 380
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v17

    move-object v1, v6

    iput-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v10, v0

    new-instance v4, Lchooser/ResolverActivity$DisplayResolveInfo;

    invoke-virtual/range {p1 .. p1}, Lchooser/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 389
    const/4 v8, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Lchooser/ResolverActivity$DisplayResolveInfo;-><init>(Lchooser/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 388
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 400
    .end local v6    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "ii":Landroid/content/Intent;
    .end local v17    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v12    # "start":I
    .restart local v15    # "r0Label":Ljava/lang/CharSequence;
    :cond_d
    if-nez v15, :cond_e

    .line 401
    iget-object v4, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v15, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 403
    :cond_e
    move-object v0, v11

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 404
    .restart local v6    # "ri":Landroid/content/pm/ResolveInfo;
    invoke-static/range {p1 .. p1}, Lchooser/ResolverActivity;->access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 405
    .local v20, "riLabel":Ljava/lang/CharSequence;
    if-nez v20, :cond_f

    .line 406
    iget-object v4, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v0, v4

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 408
    :cond_f
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 399
    :goto_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 411
    :cond_10
    const/4 v4, 0x1

    sub-int v13, v18, v4

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lchooser/ResolverActivity$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 412
    move-object v14, v6

    .line 413
    move-object/from16 v15, v20

    .line 414
    move/from16 v12, v18

    goto :goto_6
.end method

.method static synthetic access$0(Lchooser/ResolverActivity$ResolveListAdapter;)Ljava/util/List;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    return-object v0
.end method

.method private final bindView(Landroid/view/View;Lchooser/ResolverActivity$DisplayResolveInfo;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lchooser/ResolverActivity$DisplayResolveInfo;

    .prologue
    .line 514
    const v3, 0x7f0b0034

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 515
    .local v1, "text":Landroid/widget/TextView;
    const v3, 0x7f0b0035

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 516
    .local v2, "text2":Landroid/widget/TextView;
    const v3, 0x7f0b0030

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 517
    .local v0, "icon":Landroid/widget/ImageView;
    iget-object v3, p2, Lchooser/ResolverActivity$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v3, p2, Lchooser/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 519
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object v3, p2, Lchooser/ResolverActivity$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    :goto_0
    iget-object v3, p2, Lchooser/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 525
    iget-object v3, p2, Lchooser/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v4, p0, Lchooser/ResolverActivity$ResolveListAdapter;->this$0:Lchooser/ResolverActivity;

    invoke-static {v4}, Lchooser/ResolverActivity;->access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p2, Lchooser/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 527
    :cond_0
    iget-object v3, p2, Lchooser/ResolverActivity$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 528
    return-void

    .line 522
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v2, p3, p2

    add-int/lit8 v13, v2, 0x1

    .line 425
    .local v13, "num":I
    const/4 v2, 0x1

    if-ne v13, v2, :cond_1

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v8, v0

    new-instance v2, Lchooser/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->this$0:Lchooser/ResolverActivity;

    move-object v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lchooser/ResolverActivity$DisplayResolveInfo;-><init>(Lchooser/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    :cond_0
    return-void

    .line 429
    :cond_1
    const/4 v15, 0x0

    .line 430
    .local v15, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v2, v0

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->this$0:Lchooser/ResolverActivity;

    move-object v3, v0

    invoke-static {v3}, Lchooser/ResolverActivity;->access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 431
    .local v14, "startApp":Ljava/lang/CharSequence;
    if-nez v14, :cond_2

    .line 432
    const/4 v15, 0x1

    .line 434
    :cond_2
    if-nez v15, :cond_3

    .line 436
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 437
    .local v8, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v8, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v9, p2, 0x1

    .local v9, "j":I
    :goto_0
    move v0, v9

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    .line 449
    :goto_1
    invoke-virtual {v8}, Ljava/util/HashSet;->clear()V

    .line 451
    .end local v8    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v9    # "j":I
    :cond_3
    move/from16 v12, p2

    .local v12, "k":I
    :goto_2
    move v0, v12

    move/from16 v1, p3

    if-gt v0, v1, :cond_0

    .line 452
    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 453
    .local v4, "add":Landroid/content/pm/ResolveInfo;
    if-eqz v15, :cond_7

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v8, v0

    new-instance v2, Lchooser/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->this$0:Lchooser/ResolverActivity;

    move-object v3, v0

    .line 457
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lchooser/ResolverActivity$DisplayResolveInfo;-><init>(Lchooser/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 456
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 439
    .end local v4    # "add":Landroid/content/pm/ResolveInfo;
    .end local v12    # "k":I
    .restart local v8    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v9    # "j":I
    :cond_4
    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 440
    .local v11, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v2, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->this$0:Lchooser/ResolverActivity;

    move-object v3, v0

    invoke-static {v3}, Lchooser/ResolverActivity;->access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 441
    .local v10, "jApp":Ljava/lang/CharSequence;
    if-eqz v10, :cond_5

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 442
    :cond_5
    const/4 v15, 0x1

    .line 443
    goto :goto_1

    .line 445
    :cond_6
    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 460
    .end local v8    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v9    # "j":I
    .end local v10    # "jApp":Ljava/lang/CharSequence;
    .end local v11    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v4    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v12    # "k":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    move-object v8, v0

    new-instance v2, Lchooser/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->this$0:Lchooser/ResolverActivity;

    move-object v3, v0

    .line 461
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity$ResolveListAdapter;->this$0:Lchooser/ResolverActivity;

    move-object v6, v0

    invoke-static {v6}, Lchooser/ResolverActivity;->access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v5, p5

    invoke-direct/range {v2 .. v7}, Lchooser/ResolverActivity$DisplayResolveInfo;-><init>(Lchooser/ResolverActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    .line 460
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 495
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 499
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 504
    if-nez p2, :cond_0

    .line 505
    iget-object v1, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030007

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 509
    .local v0, "view":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchooser/ResolverActivity$DisplayResolveInfo;

    invoke-direct {p0, v0, v1}, Lchooser/ResolverActivity$ResolveListAdapter;->bindView(Landroid/view/View;Lchooser/ResolverActivity$DisplayResolveInfo;)V

    .line 510
    return-object v0

    .line 507
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 476
    iget-object v3, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v3, :cond_0

    .line 477
    const/4 v3, 0x0

    .line 487
    :goto_0
    return-object v3

    .line 480
    :cond_0
    iget-object v3, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lchooser/ResolverActivity$DisplayResolveInfo;

    .line 482
    .local v1, "dri":Lchooser/ResolverActivity$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lchooser/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lchooser/ResolverActivity$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_1
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 483
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 485
    iget-object v3, v1, Lchooser/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 486
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-object v3, v2

    .line 487
    goto :goto_0

    .line 482
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_1
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 468
    iget-object v0, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 469
    const/4 v0, 0x0

    .line 472
    .end local p0    # "this":Lchooser/ResolverActivity$ResolveListAdapter;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lchooser/ResolverActivity$ResolveListAdapter;
    :cond_0
    iget-object v0, p0, Lchooser/ResolverActivity$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lchooser/ResolverActivity$ResolveListAdapter;
    check-cast p0, Lchooser/ResolverActivity$DisplayResolveInfo;

    iget-object v0, p0, Lchooser/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    goto :goto_0
.end method
