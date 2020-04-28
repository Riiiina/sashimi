.class public Lcom/magicwach/rdefense/MixerSelectActivity;
.super Landroid/app/Activity;
.source "MixerSelectActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;
    }
.end annotation


# static fields
.field private static final DEFAULT_VALUE:I = 0x5f5e100

.field private static final NUM_DIGITS:I = 0x5

.field private static final adigits:[Ljava/lang/String;

.field private static final digits:[Ljava/lang/String;


# instance fields
.field private digit:[Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

.field private rand:Ljava/util/Random;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 160
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "0"

    aput-object v1, v0, v3

    const-string v1, "1"

    aput-object v1, v0, v4

    const-string v1, "2"

    aput-object v1, v0, v5

    const-string v1, "3"

    aput-object v1, v0, v6

    const-string v1, "4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "5"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "6"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "9"

    aput-object v2, v0, v1

    sput-object v0, Lcom/magicwach/rdefense/MixerSelectActivity;->digits:[Ljava/lang/String;

    .line 161
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "A"

    aput-object v1, v0, v3

    const-string v1, "B"

    aput-object v1, v0, v4

    const-string v1, "C"

    aput-object v1, v0, v5

    const-string v1, "D"

    aput-object v1, v0, v6

    sput-object v0, Lcom/magicwach/rdefense/MixerSelectActivity;->adigits:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/magicwach/rdefense/MixerSelectActivity;->adigits:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/magicwach/rdefense/MixerSelectActivity;->digits:[Ljava/lang/String;

    return-object v0
.end method

.method private addMixerDigit(I)V
    .locals 3
    .param p1, "idx"    # I

    .prologue
    .line 89
    new-instance v0, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-direct {v0, p0, p0, v2}, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;-><init>(Lcom/magicwach/rdefense/MixerSelectActivity;Landroid/content/Context;Z)V

    .line 90
    .local v0, "md":Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;
    iget-object v2, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->digit:[Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    aput-object v0, v2, p1

    .line 91
    const v2, 0x7f060025

    invoke-virtual {p0, v2}, Lcom/magicwach/rdefense/MixerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 92
    .local v1, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->getLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 93
    return-void

    .line 89
    .end local v0    # "md":Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;
    .end local v1    # "parent":Landroid/widget/LinearLayout;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getValue()I
    .locals 4

    .prologue
    .line 77
    const/4 v1, 0x0

    .line 78
    .local v1, "value":I
    iget-object v2, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->digit:[Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 79
    mul-int/lit8 v2, v1, 0xa

    iget-object v3, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->digit:[Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->getValue()I

    move-result v3

    add-int v1, v2, v3

    .line 78
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 81
    :cond_0
    return v1
.end method

.method private saveValue()V
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AndroidDefenseMixerValue"

    invoke-direct {p0}, Lcom/magicwach/rdefense/MixerSelectActivity;->getValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method private setValue(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->digit:[Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->digit:[Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    aget-object v1, v1, v0

    rem-int/lit8 v2, p1, 0xa

    invoke-virtual {v1, v2}, Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;->setValue(I)V

    .line 73
    div-int/lit8 p1, p1, 0xa

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 59
    :goto_0
    return-void

    .line 46
    :sswitch_0
    invoke-direct {p0}, Lcom/magicwach/rdefense/MixerSelectActivity;->saveValue()V

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/LevelSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/MixerSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    invoke-virtual {p0}, Lcom/magicwach/rdefense/MixerSelectActivity;->finish()V

    goto :goto_0

    .line 51
    :sswitch_1
    invoke-direct {p0}, Lcom/magicwach/rdefense/MixerSelectActivity;->saveValue()V

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/MixerSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 53
    invoke-virtual {p0}, Lcom/magicwach/rdefense/MixerSelectActivity;->finish()V

    goto :goto_0

    .line 56
    :sswitch_2
    iget-object v0, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->rand:Ljava/util/Random;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/magicwach/rdefense/MixerSelectActivity;->setValue(I)V

    goto :goto_0

    .line 44
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f060005 -> :sswitch_0
        0x7f060015 -> :sswitch_1
        0x7f060027 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x5f5e100

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v5, 0x7f030003

    invoke-virtual {p0, v5}, Lcom/magicwach/rdefense/MixerSelectActivity;->setContentView(I)V

    .line 24
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    iput-object v5, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->rand:Ljava/util/Random;

    .line 25
    const-string v5, "AndroidDefense"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/magicwach/rdefense/MixerSelectActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->settings:Landroid/content/SharedPreferences;

    .line 26
    const v5, 0x7f060005

    invoke-virtual {p0, v5}, Lcom/magicwach/rdefense/MixerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 27
    .local v0, "back_button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    const v5, 0x7f060015

    invoke-virtual {p0, v5}, Lcom/magicwach/rdefense/MixerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 29
    .local v3, "start_button":Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    const v5, 0x7f060027

    invoke-virtual {p0, v5}, Lcom/magicwach/rdefense/MixerSelectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 31
    .local v2, "rand_button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v5, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->settings:Landroid/content/SharedPreferences;

    const-string v6, "AndroidDefenseMixerValue"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 33
    .local v4, "value":I
    if-ne v4, v7, :cond_0

    .line 34
    iget-object v5, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->rand:Ljava/util/Random;

    const v6, 0xf4240

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 36
    :cond_0
    const/4 v5, 0x5

    new-array v5, v5, [Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    iput-object v5, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->digit:[Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    .line 37
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/magicwach/rdefense/MixerSelectActivity;->digit:[Lcom/magicwach/rdefense/MixerSelectActivity$MixerDigit;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 38
    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/MixerSelectActivity;->addMixerDigit(I)V

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    invoke-direct {p0, v4}, Lcom/magicwach/rdefense/MixerSelectActivity;->setValue(I)V

    .line 41
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/magicwach/rdefense/MixerSelectActivity;->setRequestedOrientation(I)V

    .line 42
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 62
    packed-switch p1, :pswitch_data_0

    .line 68
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 64
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/LevelSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/MixerSelectActivity;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0}, Lcom/magicwach/rdefense/MixerSelectActivity;->finish()V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
