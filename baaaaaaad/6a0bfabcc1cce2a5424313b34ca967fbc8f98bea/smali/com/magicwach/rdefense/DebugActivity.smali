.class public Lcom/magicwach/rdefense/DebugActivity;
.super Landroid/app/Activity;
.source "DebugActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MAX_SAVE_SLOT:I = 0x4


# instance fields
.field private down_button:Landroid/widget/ImageButton;

.field private level_text:Landroid/widget/TextView;

.field private save_slot:I

.field private settings:Landroid/content/SharedPreferences;

.field private up_button:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setDifficultyUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    iget-object v0, p0, Lcom/magicwach/rdefense/DebugActivity;->level_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Save Slot "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/magicwach/rdefense/DebugActivity;->down_button:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    if-lez v1, :cond_0

    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/magicwach/rdefense/DebugActivity;->up_button:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 72
    return-void

    :cond_0
    move v1, v3

    .line 70
    goto :goto_0

    :cond_1
    move v1, v3

    .line 71
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const-string v3, "ADDebugSaveSlot"

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 67
    :goto_0
    return-void

    .line 44
    :sswitch_0
    iget-object v1, p0, Lcom/magicwach/rdefense/DebugActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 45
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ADDebugSaveSlot"

    iget v1, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 47
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/DebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/magicwach/rdefense/DebugActivity;->finish()V

    goto :goto_0

    .line 51
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :sswitch_1
    iget-object v1, p0, Lcom/magicwach/rdefense/DebugActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ADDebugSaveSlot"

    iget v1, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 53
    const-string v1, "ADDebugSaveFlag"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 54
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 55
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/magicwach/rdefense/GameActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/DebugActivity;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0}, Lcom/magicwach/rdefense/DebugActivity;->finish()V

    goto :goto_0

    .line 59
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :sswitch_2
    iget v1, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    .line 60
    invoke-direct {p0}, Lcom/magicwach/rdefense/DebugActivity;->setDifficultyUI()V

    goto :goto_0

    .line 63
    :sswitch_3
    iget v1, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    .line 64
    invoke-direct {p0}, Lcom/magicwach/rdefense/DebugActivity;->setDifficultyUI()V

    goto :goto_0

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060005 -> :sswitch_0
        0x7f060009 -> :sswitch_2
        0x7f06000b -> :sswitch_3
        0x7f060015 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->setContentView(I)V

    .line 19
    const-string v4, "AndroidDefense"

    const/4 v5, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/magicwach/rdefense/DebugActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/magicwach/rdefense/DebugActivity;->settings:Landroid/content/SharedPreferences;

    .line 20
    const v4, 0x7f060005

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, "back_button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    const v4, 0x7f060015

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 23
    .local v2, "start_button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v4, 0x7f060009

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/magicwach/rdefense/DebugActivity;->down_button:Landroid/widget/ImageButton;

    .line 25
    iget-object v4, p0, Lcom/magicwach/rdefense/DebugActivity;->down_button:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    const v4, 0x7f06000b

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageButton;

    iput-object v4, p0, Lcom/magicwach/rdefense/DebugActivity;->up_button:Landroid/widget/ImageButton;

    .line 27
    iget-object v4, p0, Lcom/magicwach/rdefense/DebugActivity;->up_button:Landroid/widget/ImageButton;

    invoke-virtual {v4, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v4, 0x7f060006

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 29
    .local v3, "title":Landroid/widget/TextView;
    const-string v4, "Set/Load Debug Save Slot"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    const v4, 0x7f06000a

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/magicwach/rdefense/DebugActivity;->level_text:Landroid/widget/TextView;

    .line 31
    const v4, 0x7f06000d

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 32
    const v4, 0x7f06000c

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 33
    iget-object v4, p0, Lcom/magicwach/rdefense/DebugActivity;->settings:Landroid/content/SharedPreferences;

    const-string v5, "ADDebugSaveSlot"

    invoke-interface {v4, v5, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/magicwach/rdefense/DebugActivity;->save_slot:I

    .line 34
    const v4, 0x7f060012

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/DebugActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 35
    .local v1, "cb":Landroid/widget/CheckBox;
    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 37
    invoke-direct {p0}, Lcom/magicwach/rdefense/DebugActivity;->setDifficultyUI()V

    .line 38
    invoke-virtual {p0, v7}, Lcom/magicwach/rdefense/DebugActivity;->setRequestedOrientation(I)V

    .line 39
    return-void
.end method
