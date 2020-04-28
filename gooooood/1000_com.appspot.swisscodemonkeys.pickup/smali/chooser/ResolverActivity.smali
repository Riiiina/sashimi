.class public Lchooser/ResolverActivity;
.super Lcmn/SCMApp;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lchooser/ResolverActivity$DisplayResolveInfo;,
        Lchooser/ResolverActivity$ResolveListAdapter;
    }
.end annotation


# static fields
.field public static final APP_URL:Ljava/lang/String; = "app_url"

.field public static final SAVE_TO_GALLERY:Ljava/lang/String; = "save_to_gallery"

.field public static final TWITTER_TEXT:Ljava/lang/String; = "twitter_text"

.field public static final URL_PLACEHOLDER:Ljava/lang/String; = "%%URL%%"

.field public static final URL_REPLACEMENT:Ljava/lang/String; = "REPL_URL"


# instance fields
.field private mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

.field private mAlwaysCheck:Landroid/widget/CheckBox;

.field private mClearDefaultHint:Landroid/widget/TextView;

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcmn/SCMApp;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lchooser/ResolverActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lchooser/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1(Lchooser/ResolverActivity;)Landroid/widget/CheckBox;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lchooser/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .prologue
    .line 549
    invoke-virtual {p0}, Lchooser/ResolverActivity;->finish()V

    .line 550
    return-void
.end method

.method protected create(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;

    .prologue
    const/high16 v7, 0x20000

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 103
    invoke-super {p0, p1}, Lcmn/SCMApp;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-virtual {p0, v6}, Lchooser/ResolverActivity;->setShowShare(Z)V

    .line 105
    invoke-virtual {p0}, Lchooser/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lchooser/ResolverActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 111
    new-instance v3, Lchooser/ResolverActivity$ResolveListAdapter;

    invoke-direct {v3, p0, p0, p2, p4}, Lchooser/ResolverActivity$ResolveListAdapter;-><init>(Lchooser/ResolverActivity;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;)V

    iput-object v3, p0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    .line 112
    iget-object v3, p0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lchooser/ResolverActivity$ResolveListAdapter;->getCount()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 113
    iget-object v3, p0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3, v6}, Lchooser/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lchooser/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Lchooser/ResolverActivity;->finish()V

    .line 148
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v3, p0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v3}, Lchooser/ResolverActivity$ResolveListAdapter;->getCount()I

    .line 119
    invoke-virtual {p0, v4}, Lchooser/ResolverActivity;->requestWindowFeature(I)Z

    .line 120
    invoke-virtual {p0}, Lchooser/ResolverActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 122
    const v3, 0x7f030006

    invoke-virtual {p0, v3}, Lchooser/ResolverActivity;->setContentView(I)V

    .line 123
    const v3, 0x7f0b0033

    invoke-virtual {p0, v3}, Lchooser/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 124
    .local v0, "contentPanel":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/ListView;

    invoke-direct {v2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 125
    .local v2, "view":Landroid/widget/ListView;
    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 126
    invoke-virtual {p0}, Lchooser/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 127
    iget-object v3, p0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 129
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    invoke-direct {v3, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 129
    invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 132
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v5, v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 131
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 134
    new-instance v3, Lchooser/ResolverActivity$1;

    invoke-direct {v3, p0}, Lchooser/ResolverActivity$1;-><init>(Lchooser/ResolverActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    const v3, 0x7f0b0031

    invoke-virtual {p0, v3}, Lchooser/ResolverActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 146
    .local v1, "mTitleView":Landroid/widget/TextView;
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 554
    invoke-virtual {p0}, Lchooser/ResolverActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lchooser/ResolverActivity;->finish()V

    .line 557
    :cond_0
    return-void
.end method

.method protected getExtraEmailLine()Ljava/lang/String;
    .locals 1

    .prologue
    .line 544
    const-string v0, ""

    return-object v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 532
    iget-object v0, p0, Lchooser/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 540
    :goto_0
    return-void

    .line 535
    :cond_0
    if-eqz p2, :cond_1

    .line 536
    iget-object v0, p0, Lchooser/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 538
    :cond_1
    iget-object v0, p0, Lchooser/ResolverActivity;->mClearDefaultHint:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 34
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lchooser/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v26

    .line 152
    .local v26, "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v31, v0

    if-nez v31, :cond_0

    .line 154
    invoke-virtual/range {p0 .. p0}, Lchooser/ResolverActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v31

    const v32, 0x7f070001

    invoke-virtual/range {v31 .. v32}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    .line 155
    invoke-virtual/range {p0 .. p0}, Lchooser/ResolverActivity;->finish()V

    .line 293
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    :goto_0
    return-void

    .line 159
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lchooser/ResolverActivity$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v19

    .line 161
    .local v19, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v31, v0

    if-eqz v31, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity;->mAlwaysCheck:Landroid/widget/CheckBox;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v31

    if-eqz v31, :cond_4

    .line 163
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 165
    .local v16, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_1

    .line 166
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    :cond_1
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v11

    .line 169
    .local v11, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v11, :cond_2

    .line 170
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-nez v32, :cond_8

    .line 174
    :cond_2
    const-string v31, "android.intent.category.DEFAULT"

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 176
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v31, v0

    const/high16 v32, 0xfff0000

    and-int v10, v31, v32

    .line 177
    .local v10, "cat":I
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v13

    .line 178
    .local v13, "data":Landroid/net/Uri;
    const/high16 v31, 0x600000

    move v0, v10

    move/from16 v1, v31

    if-ne v0, v1, :cond_9

    .line 179
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v20

    .line 180
    .local v20, "mimeType":Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 182
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v20    # "mimeType":Ljava/lang/String;
    :cond_3
    :goto_2
    if-eqz v16, :cond_4

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lchooser/ResolverActivity$ResolveListAdapter;->access$0(Lchooser/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v5

    .line 220
    .local v5, "N":I
    move v0, v5

    new-array v0, v0, [Landroid/content/ComponentName;

    move-object/from16 v27, v0

    .line 221
    .local v27, "set":[Landroid/content/ComponentName;
    const/4 v9, 0x0

    .line 222
    .local v9, "bestMatch":I
    const/16 v18, 0x0

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    .local v18, "i":I
    :goto_3
    move/from16 v0, v18

    move v1, v5

    if-lt v0, v1, :cond_f

    .line 228
    invoke-virtual/range {p0 .. p0}, Lchooser/ResolverActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v31

    .line 229
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v32

    .line 228
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    move v2, v9

    move-object/from16 v3, v27

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 235
    .end local v5    # "N":I
    .end local v9    # "bestMatch":I
    .end local v10    # "cat":I
    .end local v11    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "data":Landroid/net/Uri;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "i":I
    .end local v27    # "set":[Landroid/content/ComponentName;
    :cond_4
    if-eqz v19, :cond_7

    .line 236
    new-instance v29, Ljava/util/HashSet;

    const/16 v31, 0xc

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    .line 237
    const-string v33, "com.twidroidpro"

    aput-object v33, v31, v32

    const/16 v32, 0x1

    const-string v33, "com.thedevcats.twit2go"

    aput-object v33, v31, v32

    const/16 v32, 0x2

    const-string v33, "com.disretrospect.twidgit"

    aput-object v33, v31, v32

    const/16 v32, 0x3

    .line 238
    const-string v33, "com.code.twitter"

    aput-object v33, v31, v32

    const/16 v32, 0x4

    const-string v33, "com.twidroid"

    aput-object v33, v31, v32

    const/16 v32, 0x5

    const-string v33, "com.htc.htctwitter"

    aput-object v33, v31, v32

    const/16 v32, 0x6

    const-string v33, "com.seesmic"

    aput-object v33, v31, v32

    const/16 v32, 0x7

    .line 239
    const-string v33, "com.swift_app.app"

    aput-object v33, v31, v32

    const/16 v32, 0x8

    const-string v33, "com.xeeku_market.twitter.core"

    aput-object v33, v31, v32

    const/16 v32, 0x9

    const-string v33, "com.handmark.tweetcaster"

    aput-object v33, v31, v32

    const/16 v32, 0xa

    .line 240
    const-string v33, "com.hootsuite.droid.full"

    aput-object v33, v31, v32

    const/16 v32, 0xb

    const-string v33, "com.hootsuite.droid.lite"

    aput-object v33, v31, v32

    .line 236
    invoke-static/range {v31 .. v31}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 243
    .local v29, "twitterApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v31, "app_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "appUrl":Ljava/lang/String;
    if-eqz v8, :cond_11

    .line 245
    const-string v31, "app_url"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 250
    :goto_4
    const-string v31, "REPL_URL"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 251
    .local v30, "urlReplace":Ljava/lang/String;
    if-eqz v30, :cond_12

    .line 252
    const-string v31, "REPL_URL"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 258
    :goto_5
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v31

    const-string v32, "com.facebook.katana"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 260
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_5

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v31

    const-string v32, "image/"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_5

    const-string v31, "android.intent.extra.STREAM"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_6

    .line 261
    :cond_5
    const-string v31, "android.intent.extra.TEXT"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 262
    const-string v31, "android.intent.extra.TEXT"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    :cond_6
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lchooser/ResolverActivity;->startActivity(Landroid/content/Intent;)V

    .line 292
    .end local v8    # "appUrl":Ljava/lang/String;
    .end local v29    # "twitterApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v30    # "urlReplace":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lchooser/ResolverActivity;->finish()V

    goto/16 :goto_0

    .line 170
    .restart local v11    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v16    # "filter":Landroid/content/IntentFilter;
    .restart local p1    # "dialog":Landroid/content/DialogInterface;
    :cond_8
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 171
    .local v10, "cat":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 183
    .local v10, "cat":I
    .restart local v13    # "data":Landroid/net/Uri;
    .restart local v20    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 184
    .local v14, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v31, "ResolverActivity"

    move-object/from16 v0, v31

    move-object v1, v14

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 185
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 188
    .end local v14    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v20    # "mimeType":Ljava/lang/String;
    :cond_9
    if-eqz v13, :cond_3

    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v31

    if-eqz v31, :cond_3

    .line 189
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v7

    .line 194
    .local v7, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v7, :cond_b

    .line 195
    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-nez v31, :cond_d

    .line 205
    :cond_b
    :goto_7
    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v22

    .line 206
    .local v22, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v22, :cond_3

    .line 207
    invoke-virtual {v13}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 208
    .local v23, "path":Ljava/lang/String;
    :cond_c
    if-eqz v23, :cond_3

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 209
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/PatternMatcher;

    .line 210
    .local v21, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 211
    invoke-virtual/range {v21 .. v21}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v21 .. v21}, Landroid/os/PatternMatcher;->getType()I

    move-result v32

    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 196
    .end local v21    # "p":Landroid/os/PatternMatcher;
    .end local v22    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v23    # "path":Ljava/lang/String;
    :cond_d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/IntentFilter$AuthorityEntry;

    .line 197
    .local v6, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v6, v13}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v31

    if-ltz v31, :cond_a

    .line 198
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v24

    .line 199
    .local v24, "port":I
    invoke-virtual {v6}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v31

    if-ltz v24, :cond_e

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    :goto_8
    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 200
    :cond_e
    const/16 v32, 0x0

    goto :goto_8

    .line 223
    .end local v6    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v7    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v24    # "port":I
    .end local p1    # "dialog":Landroid/content/DialogInterface;
    .restart local v5    # "N":I
    .restart local v9    # "bestMatch":I
    .restart local v18    # "i":I
    .restart local v27    # "set":[Landroid/content/ComponentName;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lchooser/ResolverActivity;->mAdapter:Lchooser/ResolverActivity$ResolveListAdapter;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Lchooser/ResolverActivity$ResolveListAdapter;->access$0(Lchooser/ResolverActivity$ResolveListAdapter;)Ljava/util/List;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchooser/ResolverActivity$DisplayResolveInfo;

    move-object/from16 v0, p1

    iget-object v0, v0, Lchooser/ResolverActivity$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    move-object/from16 v25, v0

    .line 224
    .local v25, "r":Landroid/content/pm/ResolveInfo;
    new-instance v31, Landroid/content/ComponentName;

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    invoke-direct/range {v31 .. v33}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v31, v27, v18

    .line 225
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v31, v0

    move/from16 v0, v31

    move v1, v9

    if-le v0, v1, :cond_10

    .line 226
    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ResolveInfo;->match:I

    move v9, v0

    .line 222
    :cond_10
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 247
    .end local v5    # "N":I
    .end local v9    # "bestMatch":I
    .end local v10    # "cat":I
    .end local v11    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "data":Landroid/net/Uri;
    .end local v16    # "filter":Landroid/content/IntentFilter;
    .end local v18    # "i":I
    .end local v25    # "r":Landroid/content/pm/ResolveInfo;
    .end local v27    # "set":[Landroid/content/ComponentName;
    .restart local v8    # "appUrl":Ljava/lang/String;
    .restart local v29    # "twitterApps":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_11
    const-string v8, ""

    goto/16 :goto_4

    .line 254
    .restart local v30    # "urlReplace":Ljava/lang/String;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lchooser/ResolverActivity;->getApplication()Landroid/app/Application;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v31

    const-string v32, ".apps"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v31

    if-eqz v31, :cond_13

    const-string v31, "http://www.appbrain.com"

    move-object/from16 v30, v31

    :goto_9
    goto/16 :goto_5

    :cond_13
    move-object/from16 v30, v8

    goto :goto_9

    .line 264
    :cond_14
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 266
    const-string v31, "twitter_text"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 267
    .local v28, "text":Ljava/lang/String;
    if-nez v28, :cond_15

    .line 268
    const-string v31, "android.intent.extra.TEXT"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 270
    :cond_15
    move-object/from16 v15, v30

    .line 272
    .local v15, "extra":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v31

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    add-int v31, v31, v32

    const/16 v32, 0x87

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_17

    .line 273
    const/16 v31, 0x87

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v32

    sub-int v12, v31, v32

    .line 274
    .local v12, "cutIndex":I
    const-string v31, "Sent from"

    move-object/from16 v0, v28

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    .line 275
    .local v17, "footerIndex":I
    const/16 v31, -0x1

    move/from16 v0, v17

    move/from16 v1, v31

    if-eq v0, v1, :cond_16

    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_16

    .line 276
    move/from16 v12, v17

    .line 278
    :cond_16
    new-instance v31, Ljava/lang/StringBuilder;

    const/16 v32, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v32

    move v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v32, ".. "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 283
    .end local v12    # "cutIndex":I
    .end local v17    # "footerIndex":I
    :goto_a
    const-string v31, "android.intent.extra.SUBJECT"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 284
    const-string v31, "android.intent.extra.SUBJECT"

    const-string v32, ""

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v31, "android.intent.extra.TEXT"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 287
    const-string v31, "android.intent.extra.TEXT"

    move-object/from16 v0, v19

    move-object/from16 v1, v31

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_6

    .line 280
    :cond_17
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    invoke-direct/range {v31 .. v32}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v31

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto :goto_a
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-virtual {p0}, Lchooser/ResolverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 86
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.extra.INTENT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 87
    .local v3, "targetParcelable":Landroid/os/Parcelable;
    instance-of v5, v3, Landroid/content/Intent;

    if-nez v5, :cond_0

    .line 88
    const-string v5, "ChooseActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Target is not an intent: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Lchooser/ResolverActivity;->finish()V

    .line 99
    :goto_0
    return-void

    .line 92
    :cond_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent;

    move-object v2, v0

    .line 93
    .local v2, "target":Landroid/content/Intent;
    const-string v5, "android.intent.extra.TITLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 94
    .local v4, "title":Ljava/lang/CharSequence;
    if-nez v4, :cond_1

    .line 95
    const-string v4, "Choose destination"

    .line 97
    :cond_1
    invoke-super {p0, p1}, Lcmn/SCMApp;->onCreate(Landroid/os/Bundle;)V

    .line 98
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v6, "Complete action using"

    const/4 v7, 0x0

    invoke-virtual {p0, p1, v5, v6, v7}, Lchooser/ResolverActivity;->create(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)V

    goto :goto_0
.end method
