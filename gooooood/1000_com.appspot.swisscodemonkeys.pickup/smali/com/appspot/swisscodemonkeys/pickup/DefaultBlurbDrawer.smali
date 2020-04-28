.class public Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;
.super Ljava/lang/Object;
.source "DefaultBlurbDrawer.java"

# interfaces
.implements Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;


# static fields
.field private static drawable_cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private imageLoading:Z

.field private limitLength:Z

.field private resources:Landroid/content/res/Resources;

.field private textColor:Ljava/lang/Integer;

.field private truncateCharacters:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->drawable_cache:Ljava/util/Map;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0xc8

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->truncateCharacters:I

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->imageLoading:Z

    .line 41
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->resources:Landroid/content/res/Resources;

    .line 42
    return-void
.end method

.method static synthetic access$0()Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->drawable_cache:Ljava/util/Map;

    return-object v0
.end method

.method public static configTextViewFromHtmlBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/widget/TextView;)V
    .locals 3
    .param p0, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p1, "text"    # Landroid/widget/TextView;

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer$1;

    invoke-direct {v1, p1}, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer$1;-><init>(Landroid/widget/TextView;)V

    .line 188
    const/4 v2, 0x0

    .line 168
    invoke-static {v0, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 191
    return-void
.end method


# virtual methods
.method public fillViewWithBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/view/View;)V
    .locals 20
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 55
    const v16, 0x7f0b0054

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 57
    .local v14, "titleView":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getColor()I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    :cond_0
    const v16, 0x7f0b0055

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 62
    .local v6, "commentScore":Landroid/widget/TextView;
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCategory()J

    move-result-wide v16

    const-wide/16 v18, 0x2

    cmp-long v16, v16, v18

    if-nez v16, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getRatings()I

    move-result v16

    if-eqz v16, :cond_7

    .line 63
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAverageRating()F

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 64
    .local v11, "score":I
    if-ltz v11, :cond_6

    .line 65
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "+"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    :goto_0
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    .end local v11    # "score":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIsHtml()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 75
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->configTextViewFromHtmlBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/widget/TextView;)V

    .line 87
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor()Z

    move-result v16

    if-eqz v16, :cond_a

    .line 88
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getTextColor()I

    move-result v16

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    :cond_1
    :goto_3
    const v16, 0x7f0b004b

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 94
    .local v7, "countView":Landroid/widget/TextView;
    const v16, 0x7f0b000a

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 95
    .local v9, "nickname":Landroid/widget/TextView;
    const v16, 0x7f0b0056

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/RatingBar;

    .line 96
    .local v10, "ratingBar":Landroid/widget/RatingBar;
    const v16, 0x7f0b0053

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 98
    .local v8, "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getIsHtml()Z

    move-result v16

    if-nez v16, :cond_11

    .line 99
    const/16 v16, 0x3

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 100
    const/16 v16, 0x0

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getRatings()I

    move-result v16

    if-gtz v16, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCommentCount()I

    move-result v16

    if-lez v16, :cond_d

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCategory()J

    move-result-wide v16

    const-wide/16 v18, 0x2

    cmp-long v16, v16, v18

    if-eqz v16, :cond_d

    .line 102
    const/16 v16, 0x0

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    const/16 v16, 0x0

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 104
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getAverageRating()F

    move-result v16

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCommentCount()I

    move-result v16

    if-nez v16, :cond_b

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->resources:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f070027

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getRatings()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_4
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor()Z

    move-result v16

    if-eqz v16, :cond_c

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getTextColor()I

    move-result v16

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 123
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->resources:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getBlurbAuthorInfo(Landroid/content/res/Resources;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Ljava/lang/String;

    move-result-object v13

    .line 124
    .local v13, "text":Ljava/lang/String;
    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasTextColor()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getTextColor()I

    move-result v16

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    :cond_4
    :goto_6
    if-eqz v8, :cond_5

    .line 131
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->imageLoading:Z

    move/from16 v16, v0

    if-eqz v16, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasImageUrl()Z

    move-result v16

    if-eqz v16, :cond_10

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImageUrl()Ljava/lang/String;

    move-result-object v16

    const-string v17, "http://"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImageUrl()Ljava/lang/String;

    move-result-object v15

    .line 139
    .local v15, "url":Ljava/lang/String;
    :goto_7
    const/16 v16, 0x0

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v17, 0x28

    const/16 v18, 0x28

    invoke-direct/range {v16 .. v18}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    const/16 v16, 0x4

    const/16 v17, 0x4

    const/16 v18, 0x4

    const/16 v19, 0x4

    move-object v0, v8

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 143
    invoke-static {v8, v15}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->downloadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 154
    .end local v13    # "text":Ljava/lang/String;
    .end local v15    # "url":Ljava/lang/String;
    :cond_5
    :goto_8
    return-void

    .line 67
    .end local v7    # "countView":Landroid/widget/TextView;
    .end local v8    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "nickname":Landroid/widget/TextView;
    .end local v10    # "ratingBar":Landroid/widget/RatingBar;
    .restart local v11    # "score":I
    :cond_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 71
    .end local v11    # "score":I
    :cond_7
    const/16 v16, 0x8

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 77
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->limitLength:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->truncateCharacters:I

    move/from16 v16, v0

    if-eqz v16, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->truncateCharacters:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->resources:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f07003a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "clickForMore":Ljava/lang/String;
    new-instance v12, Landroid/text/SpannableString;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->truncateCharacters:I

    move/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v17, "...\n"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 80
    .local v12, "span":Landroid/text/SpannableString;
    new-instance v16, Landroid/text/style/StyleSpan;

    const/16 v17, 0x3

    invoke-direct/range {v16 .. v17}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    sub-int v17, v17, v18

    invoke-virtual {v12}, Landroid/text/SpannableString;->length()I

    move-result v18

    const/16 v19, 0x0

    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 81
    invoke-virtual {v14, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 83
    .end local v5    # "clickForMore":Ljava/lang/String;
    .end local v12    # "span":Landroid/text/SpannableString;
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 89
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->textColor:Ljava/lang/Integer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1

    .line 90
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->textColor:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    .line 109
    .restart local v7    # "countView":Landroid/widget/TextView;
    .restart local v8    # "imageView":Landroid/widget/ImageView;
    .restart local v9    # "nickname":Landroid/widget/TextView;
    .restart local v10    # "ratingBar":Landroid/widget/RatingBar;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->resources:Landroid/content/res/Resources;

    move-object/from16 v16, v0

    const v17, 0x7f070028

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getRatings()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getCommentCount()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    .line 109
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 115
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->textColor:Ljava/lang/Integer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->textColor:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_5

    .line 119
    :cond_d
    const/16 v16, 0x8

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 120
    const/16 v16, 0x8

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 127
    .restart local v13    # "text":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->textColor:Ljava/lang/Integer;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->textColor:Ljava/lang/Integer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 137
    :cond_f
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "http://androidpickup.appspot.com"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getImageUrl()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "url":Ljava/lang/String;
    goto/16 :goto_7

    .line 145
    .end local v15    # "url":Ljava/lang/String;
    :cond_10
    const/16 v16, 0x8

    move-object v0, v8

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    .line 149
    .end local v13    # "text":Ljava/lang/String;
    :cond_11
    const/16 v16, 0x8

    move-object v0, v7

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    const/16 v16, 0x8

    move-object v0, v9

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    const/16 v16, 0x8

    move-object v0, v10

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 152
    const/16 v16, 0x11

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_8
.end method

.method public getViewId()I
    .locals 1

    .prologue
    .line 158
    const v0, 0x7f03000e

    return v0
.end method

.method public loadPreferences(Landroid/content/SharedPreferences;Z)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "limitDefault"    # Z

    .prologue
    .line 45
    const-string v0, "truncate"

    const-string v1, "200"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->truncateCharacters:I

    .line 46
    const-string v0, "limit_length"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->limitLength:Z

    .line 47
    return-void
.end method

.method public setImageLoading(Z)V
    .locals 0
    .param p1, "imageLoading"    # Z

    .prologue
    .line 194
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->imageLoading:Z

    .line 195
    return-void
.end method

.method public setLimitLength(Z)V
    .locals 0
    .param p1, "limitLength"    # Z

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->limitLength:Z

    .line 51
    return-void
.end method

.method public setTextColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/DefaultBlurbDrawer;->textColor:Ljava/lang/Integer;

    .line 163
    return-void
.end method
