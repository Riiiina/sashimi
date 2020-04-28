.class Lcom/magicwach/rdefense/RewardActivity$RewardUI;
.super Ljava/lang/Object;
.source "RewardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/RewardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RewardUI"
.end annotation


# instance fields
.field button:Landroid/widget/Button;

.field text_view:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "b"    # Landroid/widget/Button;
    .param p2, "tv"    # Landroid/widget/TextView;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/magicwach/rdefense/RewardActivity$RewardUI;->button:Landroid/widget/Button;

    .line 108
    iput-object p2, p0, Lcom/magicwach/rdefense/RewardActivity$RewardUI;->text_view:Landroid/widget/TextView;

    .line 109
    return-void
.end method


# virtual methods
.method public setup(I)V
    .locals 11
    .param p1, "reward_idx"    # I

    .prologue
    const/16 v9, 0x21

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "]\n   "

    .line 111
    invoke-static {p1}, Lcom/magicwach/rdefense/RewardData;->nextLevelRewardCost(I)I

    move-result v0

    .line 112
    .local v0, "cost":I
    invoke-static {p1}, Lcom/magicwach/rdefense/RewardData;->isUnlockable(I)Z

    move-result v4

    .line 113
    .local v4, "unlockable":Z
    if-eqz v4, :cond_0

    invoke-static {p1}, Lcom/magicwach/rdefense/RewardData;->rewardLevel(I)I

    move-result v5

    if-lez v5, :cond_0

    move v2, v8

    .line 115
    .local v2, "max_level":Z
    :goto_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 116
    .local v3, "span":Landroid/text/SpannableStringBuilder;
    invoke-static {p1}, Lcom/magicwach/rdefense/RewardData;->name(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 117
    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    .line 118
    .local v1, "mark":I
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const/16 v6, -0x100

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3, v5, v7, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 120
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v8}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3, v5, v7, v1, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 122
    if-eqz v4, :cond_2

    .line 123
    iget-object v5, p0, Lcom/magicwach/rdefense/RewardActivity$RewardUI;->button:Landroid/widget/Button;

    const-string v6, "\u89e3\u9501"

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 124
    if-eqz v2, :cond_1

    .line 125
    const-string v5, "   [\u6ca1\u6709\u9501"

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    :goto_1
    const-string v5, "]\n   "

    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 138
    :goto_2
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const v6, -0x5f5f01

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    invoke-virtual {v3, v5, v1, v6, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 140
    invoke-static {p1}, Lcom/magicwach/rdefense/RewardData;->nextLevelRewardString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 141
    iget-object v5, p0, Lcom/magicwach/rdefense/RewardActivity$RewardUI;->text_view:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v5, p0, Lcom/magicwach/rdefense/RewardActivity$RewardUI;->button:Landroid/widget/Button;

    if-nez v2, :cond_3

    invoke-static {}, Lcom/magicwach/rdefense/RewardData;->getRewardPoints()I

    move-result v6

    if-gt v0, v6, :cond_3

    move v6, v8

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 143
    return-void

    .end local v2    # "max_level":Z
    .end local v3    # "span":Landroid/text/SpannableStringBuilder;
    .end local v1    # "mark":I
    :cond_0
    move v2, v7

    .line 113
    goto :goto_0

    .line 127
    .restart local v1    # "mark":I
    .restart local v2    # "max_level":Z
    .restart local v3    # "span":Landroid/text/SpannableStringBuilder;
    :cond_1
    const-string v5, "  [\u70b9\u6570: "

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 128
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 132
    :cond_2
    const-string v5, "   [\u7b49\u7ea7: "

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 133
    invoke-static {p1}, Lcom/magicwach/rdefense/RewardData;->rewardLevel(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 134
    const-string v5, "  \u70b9\u6570: "

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 135
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 136
    const-string v5, "]\n   "

    invoke-virtual {v3, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_3
    move v6, v7

    .line 142
    goto :goto_3
.end method
