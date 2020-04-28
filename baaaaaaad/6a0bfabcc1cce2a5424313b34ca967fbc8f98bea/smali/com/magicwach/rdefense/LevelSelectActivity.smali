.class public Lcom/magicwach/rdefense/LevelSelectActivity;
.super Landroid/app/Activity;
.source "LevelSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private level:I

.field private level_down_b:Landroid/widget/ImageButton;

.field private level_text:Landroid/widget/TextView;

.field private level_up_b:Landroid/widget/ImageButton;

.field private map:I

.field private map_down_b:Landroid/widget/ImageButton;

.field private map_text:Landroid/widget/TextView;

.field private map_up_b:Landroid/widget/ImageButton;

.field private max_difficulty_level:I

.field private settings:Landroid/content/SharedPreferences;

.field private stored_level:I

.field private stored_map:I

.field private stored_sound:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setDifficultyUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    iget-object v0, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u7b49\u7ea7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level_down_b:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    if-lez v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level_up_b:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->max_difficulty_level:I

    if-ge v1, v2, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 99
    return-void

    :cond_0
    move v1, v3

    .line 97
    goto :goto_0

    :cond_1
    move v1, v3

    .line 98
    goto :goto_1
.end method

.method private setMapUI()V
    .locals 2

    .prologue
    .line 101
    iget v0, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    if-gez v0, :cond_1

    .line 102
    const/4 v0, 0x4

    iput v0, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map_text:Landroid/widget/TextView;

    iget v1, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    invoke-static {v1}, Lcom/magicwach/rdefense/LevelData;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void

    .line 103
    :cond_1
    iget v0, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 94
    :goto_0
    return-void

    .line 56
    :sswitch_0
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/LevelSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    invoke-virtual {p0}, Lcom/magicwach/rdefense/LevelSelectActivity;->finish()V

    goto :goto_0

    .line 60
    :sswitch_1
    const v2, 0x7f060012

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    .line 61
    .local v1, "sound_enabled":Z
    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->stored_level:I

    iget v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->stored_map:I

    iget v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->stored_sound:Z

    if-eq v1, v2, :cond_1

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 65
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "ADMapSelection"

    iget v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 66
    const-string v2, "ADDifficultyLevel"

    iget v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    const/4 v2, 0x0

    invoke-static {v2, v1, v0}, Lcom/magicwach/rdefense/OptionsData;->setOptionValue(IZLandroid/content/SharedPreferences$Editor;)Z

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 70
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 71
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/magicwach/rdefense/MixerSelectActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/LevelSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 75
    :goto_1
    invoke-virtual {p0}, Lcom/magicwach/rdefense/LevelSelectActivity;->finish()V

    goto :goto_0

    .line 73
    :cond_2
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/magicwach/rdefense/GameActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/LevelSelectActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 78
    .end local v1    # "sound_enabled":Z
    :sswitch_2
    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    .line 79
    invoke-direct {p0}, Lcom/magicwach/rdefense/LevelSelectActivity;->setDifficultyUI()V

    goto :goto_0

    .line 82
    :sswitch_3
    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    .line 83
    invoke-direct {p0}, Lcom/magicwach/rdefense/LevelSelectActivity;->setDifficultyUI()V

    goto :goto_0

    .line 86
    :sswitch_4
    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    .line 87
    invoke-direct {p0}, Lcom/magicwach/rdefense/LevelSelectActivity;->setMapUI()V

    goto :goto_0

    .line 90
    :sswitch_5
    iget v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    .line 91
    invoke-direct {p0}, Lcom/magicwach/rdefense/LevelSelectActivity;->setMapUI()V

    goto/16 :goto_0

    .line 54
    :sswitch_data_0
    .sparse-switch
        0x7f060005 -> :sswitch_0
        0x7f060009 -> :sswitch_2
        0x7f06000b -> :sswitch_3
        0x7f06000e -> :sswitch_4
        0x7f060010 -> :sswitch_5
        0x7f060015 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v3, 0x7f030001

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->setContentView(I)V

    .line 18
    const-string v3, "AndroidDefense"

    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/magicwach/rdefense/LevelSelectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->settings:Landroid/content/SharedPreferences;

    .line 19
    iget-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->settings:Landroid/content/SharedPreferences;

    const-string v4, "ADMaxLevelWon"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0xa

    add-int/lit8 v3, v3, 0xa

    iput v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->max_difficulty_level:I

    .line 20
    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "back_button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v3, 0x7f060015

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 23
    .local v2, "start_button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v3, 0x7f060009

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level_down_b:Landroid/widget/ImageButton;

    .line 25
    iget-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level_down_b:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v3, 0x7f06000b

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level_up_b:Landroid/widget/ImageButton;

    .line 27
    iget-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level_up_b:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level_text:Landroid/widget/TextView;

    .line 29
    const v3, 0x7f06000f

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map_text:Landroid/widget/TextView;

    .line 30
    iget-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->settings:Landroid/content/SharedPreferences;

    const-string v4, "ADDifficultyLevel"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    .line 31
    iget v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    iput v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->stored_level:I

    .line 32
    iget v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    iget v4, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->max_difficulty_level:I

    if-le v3, v4, :cond_0

    .line 33
    iget v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->max_difficulty_level:I

    iput v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->level:I

    .line 35
    :cond_0
    iget-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->settings:Landroid/content/SharedPreferences;

    const-string v4, "ADMapSelection"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    .line 36
    iget v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map:I

    iput v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->stored_map:I

    .line 37
    iget-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->settings:Landroid/content/SharedPreferences;

    invoke-static {v3}, Lcom/magicwach/rdefense/OptionsData;->init(Landroid/content/SharedPreferences;)V

    .line 38
    invoke-static {v5}, Lcom/magicwach/rdefense/OptionsData;->optionValue(I)Z

    move-result v3

    iput-boolean v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->stored_sound:Z

    .line 39
    const v3, 0x7f060012

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iget-boolean v4, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->stored_sound:Z

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 40
    const v3, 0x7f06000e

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map_down_b:Landroid/widget/ImageButton;

    .line 41
    iget-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map_down_b:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v3, 0x7f060010

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map_up_b:Landroid/widget/ImageButton;

    .line 43
    iget-object v3, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->map_up_b:Landroid/widget/ImageButton;

    invoke-virtual {v3, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Lcom/magicwach/rdefense/LevelSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 45
    .local v1, "level_msg":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6700\u9ad8\u7b49\u7ea7\u662f "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->max_difficulty_level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u3002\u5b8c\u6210\u80dc\u5229\u7b49\u7ea7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->max_difficulty_level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u540e\u589e\u52a0\u6700\u9ad8\u7b49\u7ea7\u5230"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/magicwach/rdefense/LevelSelectActivity;->max_difficulty_level:I

    add-int/lit8 v4, v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-direct {p0}, Lcom/magicwach/rdefense/LevelSelectActivity;->setDifficultyUI()V

    .line 50
    invoke-direct {p0}, Lcom/magicwach/rdefense/LevelSelectActivity;->setMapUI()V

    .line 51
    invoke-virtual {p0, v5}, Lcom/magicwach/rdefense/LevelSelectActivity;->setRequestedOrientation(I)V

    .line 52
    return-void
.end method
