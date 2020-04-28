.class public Lcom/magicwach/rdefense/AchievementActivity;
.super Landroid/app/Activity;
.source "AchievementActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addAchievements()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 39
    const v4, 0x7f06002f

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/AchievementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 40
    .local v2, "list":Landroid/widget/TableLayout;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    const/16 v4, 0x39

    if-ge v0, v4, :cond_0

    .line 41
    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/AchievementActivity;->createAchievement(I)Landroid/widget/TableRow;

    move-result-object v3

    .line 42
    .local v3, "tr":Landroid/widget/TableRow;
    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 43
    invoke-virtual {v3}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 45
    .local v1, "layout":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 46
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 47
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 48
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    .end local v3    # "tr":Landroid/widget/TableRow;
    .end local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private createAchievement(I)Landroid/widget/TableRow;
    .locals 6
    .param p1, "idx"    # I

    .prologue
    .line 52
    invoke-static {p1}, Lcom/magicwach/rdefense/AchievementData;->isAchieved(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const v5, 0x7f020002

    move v0, v5

    .line 54
    .local v0, "image_id":I
    :goto_0
    new-instance v3, Landroid/widget/TableRow;

    invoke-direct {v3, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 55
    .local v3, "tr":Landroid/widget/TableRow;
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v4, "tv":Landroid/widget/TextView;
    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/TableRow;->setGravity(I)V

    .line 57
    invoke-direct {p0, v4, p1}, Lcom/magicwach/rdefense/AchievementActivity;->setupAchievementText(Landroid/widget/TextView;I)V

    .line 58
    invoke-virtual {v3, v4}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 59
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 61
    .local v2, "layout":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x41200000    # 10.0f

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 62
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 63
    .local v1, "iv":Landroid/widget/ImageView;
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-virtual {v3, v1}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 65
    return-object v3

    .line 52
    .end local v0    # "image_id":I
    .end local v3    # "tr":Landroid/widget/TableRow;
    .end local v4    # "tv":Landroid/widget/TextView;
    .end local v2    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "iv":Landroid/widget/ImageView;
    :cond_0
    const v5, 0x7f020003

    move v0, v5

    goto :goto_0
.end method

.method private setAchievementTitle()V
    .locals 4

    .prologue
    .line 82
    const v3, 0x7f06002c

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/AchievementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, "title":Landroid/widget/TextView;
    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->totalCount()I

    move-result v1

    .line 84
    .local v1, "points":I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v0, "buff":Ljava/lang/StringBuffer;
    const-string v3, "\u60a8\u6709"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 87
    const-string v3, " \u6210\u5c31\u70b9"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    .line 89
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    return-void
.end method

.method private setupAchievementText(Landroid/widget/TextView;I)V
    .locals 7
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "idx"    # I

    .prologue
    const/16 v6, 0x21

    const/4 v5, 0x0

    .line 68
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 69
    .local v2, "span":Landroid/text/SpannableStringBuilder;
    invoke-static {p2}, Lcom/magicwach/rdefense/AchievementData;->isAchieved(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, -0x100

    move v0, v3

    .line 71
    .local v0, "color":I
    :goto_0
    invoke-static {p2}, Lcom/magicwach/rdefense/AchievementData;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 72
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 73
    .local v1, "mark":I
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2, v3, v5, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 75
    new-instance v3, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v2, v3, v5, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 77
    const-string v3, "\n   "

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 78
    invoke-static {p2}, Lcom/magicwach/rdefense/AchievementData;->getDescription(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 79
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-void

    .line 69
    .end local v0    # "color":I
    .end local v1    # "mark":I
    :cond_0
    const v3, -0x7f7f80

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 95
    .local v0, "id":I
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/AchievementActivity;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-virtual {p0}, Lcom/magicwach/rdefense/AchievementActivity;->finish()V

    .line 97
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    const v2, 0x7f030005

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/AchievementActivity;->setContentView(I)V

    .line 28
    const-string v2, "AndroidDefense"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/magicwach/rdefense/AchievementActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/magicwach/rdefense/AchievementActivity;->settings:Landroid/content/SharedPreferences;

    .line 29
    iget-object v2, p0, Lcom/magicwach/rdefense/AchievementActivity;->settings:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/magicwach/rdefense/AchievementData;->init(Landroid/content/SharedPreferences;)V

    .line 30
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/AchievementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 31
    .local v0, "back_button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    invoke-direct {p0}, Lcom/magicwach/rdefense/AchievementActivity;->setAchievementTitle()V

    .line 33
    const v2, 0x7f06002d

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/AchievementActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 34
    .local v1, "tv":Landroid/widget/TextView;
    const-string v2, " \u60a8\u5f00\u542f\u7684\u6bcf\u4e2a\u6210\u5c31\u5c06\u6dfb\u52a0\u5230\u4f60\u7684\u6e38\u620f\u7684\u5956\u91d1\u4e2d\uff01"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-direct {p0}, Lcom/magicwach/rdefense/AchievementActivity;->addAchievements()V

    .line 36
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/AchievementActivity;->setRequestedOrientation(I)V

    .line 37
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    packed-switch p1, :pswitch_data_0

    .line 106
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 102
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/AchievementActivity;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/magicwach/rdefense/AchievementActivity;->finish()V

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
