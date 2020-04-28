.class public Lcom/magicwach/rdefense/RewardActivity;
.super Landroid/app/Activity;
.source "RewardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/RewardActivity$RewardUI;
    }
.end annotation


# instance fields
.field private reward_ui:[Lcom/magicwach/rdefense/RewardActivity$RewardUI;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 103
    return-void
.end method

.method private addRewards()V
    .locals 7

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x5

    .line 36
    new-array v4, v6, [Lcom/magicwach/rdefense/RewardActivity$RewardUI;

    iput-object v4, p0, Lcom/magicwach/rdefense/RewardActivity;->reward_ui:[Lcom/magicwach/rdefense/RewardActivity$RewardUI;

    .line 37
    const v4, 0x7f06002f

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/RewardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 38
    .local v2, "list":Landroid/widget/TableLayout;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 39
    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/RewardActivity;->createReward(I)Landroid/widget/TableRow;

    move-result-object v3

    .line 40
    .local v3, "tr":Landroid/widget/TableRow;
    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 41
    invoke-virtual {v3}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    .local v1, "layout":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 44
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 45
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 46
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 38
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    .end local v3    # "tr":Landroid/widget/TableRow;
    .end local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private applyUpgrade(I)V
    .locals 2
    .param p1, "reward_idx"    # I

    .prologue
    .line 86
    invoke-static {p1}, Lcom/magicwach/rdefense/RewardData;->tryReward(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/magicwach/rdefense/RewardActivity;->setRewardTitle()V

    .line 88
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/magicwach/rdefense/RewardActivity;->reward_ui:[Lcom/magicwach/rdefense/RewardActivity$RewardUI;

    aget-object v1, v1, v0

    invoke-virtual {v1, v0}, Lcom/magicwach/rdefense/RewardActivity$RewardUI;->setup(I)V

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "idx":I
    :cond_0
    return-void
.end method

.method private createReward(I)Landroid/widget/TableRow;
    .locals 6
    .param p1, "reward_idx"    # I

    .prologue
    .line 50
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 51
    .local v2, "tr":Landroid/widget/TableRow;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 52
    .local v3, "tv":Landroid/widget/TextView;
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->setGravity(I)V

    .line 53
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 54
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    .local v1, "layout":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v4, 0x41200000    # 10.0f

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 57
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "b":Landroid/widget/Button;
    const v4, 0x8000

    add-int/2addr v4, p1

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setId(I)V

    .line 59
    const-string v4, "\u5347\u7ea7"

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 61
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v4, p0, Lcom/magicwach/rdefense/RewardActivity;->reward_ui:[Lcom/magicwach/rdefense/RewardActivity$RewardUI;

    new-instance v5, Lcom/magicwach/rdefense/RewardActivity$RewardUI;

    invoke-direct {v5, v0, v3}, Lcom/magicwach/rdefense/RewardActivity$RewardUI;-><init>(Landroid/widget/Button;Landroid/widget/TextView;)V

    aput-object v5, v4, p1

    .line 63
    iget-object v4, p0, Lcom/magicwach/rdefense/RewardActivity;->reward_ui:[Lcom/magicwach/rdefense/RewardActivity$RewardUI;

    aget-object v4, v4, p1

    invoke-virtual {v4, p1}, Lcom/magicwach/rdefense/RewardActivity$RewardUI;->setup(I)V

    .line 64
    return-object v2
.end method

.method private setRewardTitle()V
    .locals 4

    .prologue
    .line 67
    const v2, 0x7f06002c

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/RewardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 68
    .local v1, "reward_title":Landroid/widget/TextView;
    invoke-static {}, Lcom/magicwach/rdefense/RewardData;->getRewardPoints()I

    move-result v0

    .line 69
    .local v0, "reward_points":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u60a8\u6709"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u5956\u52b1\u70b9\u6570"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 73
    .local v0, "id":I
    const v2, 0x7f060005

    if-ne v0, v2, :cond_1

    .line 74
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/RewardActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    invoke-virtual {p0}, Lcom/magicwach/rdefense/RewardActivity;->finish()V

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_1
    const/16 v2, 0xb

    if-ge v1, v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/magicwach/rdefense/RewardActivity;->reward_ui:[Lcom/magicwach/rdefense/RewardActivity$RewardUI;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/magicwach/rdefense/RewardActivity$RewardUI;->button:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getId()I

    move-result v2

    if-ne v0, v2, :cond_2

    .line 79
    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/RewardActivity;->applyUpgrade(I)V

    goto :goto_0

    .line 77
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v1, 0x7f030005

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/RewardActivity;->setContentView(I)V

    .line 27
    const-string v1, "AndroidDefense"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/magicwach/rdefense/RewardActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/magicwach/rdefense/RewardActivity;->settings:Landroid/content/SharedPreferences;

    .line 28
    iget-object v1, p0, Lcom/magicwach/rdefense/RewardActivity;->settings:Landroid/content/SharedPreferences;

    invoke-static {v1}, Lcom/magicwach/rdefense/RewardData;->init(Landroid/content/SharedPreferences;)V

    .line 29
    const v1, 0x7f060005

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/RewardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 30
    .local v0, "back_button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-direct {p0}, Lcom/magicwach/rdefense/RewardActivity;->setRewardTitle()V

    .line 32
    invoke-direct {p0}, Lcom/magicwach/rdefense/RewardActivity;->addRewards()V

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/RewardActivity;->setRequestedOrientation(I)V

    .line 34
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 95
    packed-switch p1, :pswitch_data_0

    .line 101
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 97
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/RewardActivity;->startActivity(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {p0}, Lcom/magicwach/rdefense/RewardActivity;->finish()V

    .line 99
    const/4 v0, 0x1

    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
