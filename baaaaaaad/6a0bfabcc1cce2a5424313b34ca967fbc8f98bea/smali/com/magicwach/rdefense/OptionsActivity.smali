.class public Lcom/magicwach/rdefense/OptionsActivity;
.super Landroid/app/Activity;
.source "OptionsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private check_boxes:[Landroid/widget/CheckBox;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private addOptions()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    .line 34
    new-array v4, v5, [Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/magicwach/rdefense/OptionsActivity;->check_boxes:[Landroid/widget/CheckBox;

    .line 35
    const v4, 0x7f06002a

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/OptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableLayout;

    .line 36
    .local v2, "list":Landroid/widget/TableLayout;
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 37
    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/OptionsActivity;->createOption(I)Landroid/widget/TableRow;

    move-result-object v3

    .line 38
    .local v3, "tr":Landroid/widget/TableRow;
    invoke-virtual {v2, v3}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 39
    invoke-virtual {v3}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 41
    .local v1, "layout":Landroid/widget/LinearLayout$LayoutParams;
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 42
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 43
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 44
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v3    # "tr":Landroid/widget/TableRow;
    .end local v1    # "layout":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private createOption(I)Landroid/widget/TableRow;
    .locals 5
    .param p1, "option_idx"    # I

    .prologue
    .line 48
    new-instance v2, Landroid/widget/TableRow;

    invoke-direct {v2, p0}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    .line 49
    .local v2, "tr":Landroid/widget/TableRow;
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 50
    .local v3, "tv":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/magicwach/rdefense/OptionsData;->optionName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 52
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
    new-instance v0, Landroid/widget/CheckBox;

    invoke-direct {v0, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, "cb":Landroid/widget/CheckBox;
    invoke-static {p1}, Lcom/magicwach/rdefense/OptionsData;->optionValue(I)Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    invoke-virtual {v2, v0}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    .line 60
    iget-object v4, p0, Lcom/magicwach/rdefense/OptionsActivity;->check_boxes:[Landroid/widget/CheckBox;

    aput-object v0, v4, p1

    .line 61
    return-object v2
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 65
    .local v2, "id":I
    const v4, 0x7f06002b

    if-ne v2, v4, :cond_1

    .line 66
    const/4 v0, 0x0

    .line 67
    .local v0, "commit":Z
    iget-object v4, p0, Lcom/magicwach/rdefense/OptionsActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 68
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    .line 69
    iget-object v4, p0, Lcom/magicwach/rdefense/OptionsActivity;->check_boxes:[Landroid/widget/CheckBox;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/magicwach/rdefense/OptionsData;->setOptionValue(IZLandroid/content/SharedPreferences$Editor;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_0
    if-eqz v0, :cond_1

    .line 72
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 75
    .end local v0    # "commit":Z
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "idx":I
    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/magicwach/rdefense/GameActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/OptionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    invoke-virtual {p0}, Lcom/magicwach/rdefense/OptionsActivity;->finish()V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v2, 0x7f030004

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/OptionsActivity;->setContentView(I)V

    .line 24
    const-string v2, "AndroidDefense"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/magicwach/rdefense/OptionsActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/magicwach/rdefense/OptionsActivity;->settings:Landroid/content/SharedPreferences;

    .line 25
    iget-object v2, p0, Lcom/magicwach/rdefense/OptionsActivity;->settings:Landroid/content/SharedPreferences;

    invoke-static {v2}, Lcom/magicwach/rdefense/OptionsData;->init(Landroid/content/SharedPreferences;)V

    .line 26
    const v2, 0x7f06002b

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/OptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 27
    .local v1, "save_button":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v2, 0x7f060005

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/OptionsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 29
    .local v0, "back_button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    invoke-direct {p0}, Lcom/magicwach/rdefense/OptionsActivity;->addOptions()V

    .line 31
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/OptionsActivity;->setRequestedOrientation(I)V

    .line 32
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 80
    packed-switch p1, :pswitch_data_0

    .line 86
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 82
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/OptionsActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/magicwach/rdefense/OptionsActivity;->finish()V

    goto :goto_0

    .line 80
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
