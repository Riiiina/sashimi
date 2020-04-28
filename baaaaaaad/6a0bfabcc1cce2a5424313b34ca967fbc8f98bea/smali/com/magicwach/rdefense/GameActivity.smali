.class public Lcom/magicwach/rdefense/GameActivity;
.super Landroid/app/Activity;
.source "GameActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/GameActivity$SampleView;
    }
.end annotation


# static fields
.field public static final DEBUG_SAVE_ID:I = 0x5

.field public static final EXIT_TO_TITLE_ID:I = 0x3

.field public static final NEW_GAME_ID:I = 0x1

.field public static final OPTIONS_ID:I = 0x2

.field public static final SAVE_AND_QUIT_ID:I = 0x4


# instance fields
.field private sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 116
    return-void
.end method

.method private tryQuickSave(Z)Z
    .locals 3
    .param p1, "debug_save"    # Z

    .prologue
    .line 87
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameActivity$SampleView;->getGameState()Lcom/magicwach/rdefense/GameState;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/magicwach/rdefense/QuickSave;->saveState(Lcom/magicwach/rdefense/GameState;Z)Z

    move-result v0

    .line 88
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameActivity$SampleView;->showStartupMessage()V

    .line 90
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    const-string v2, "Quick Save Failed (sorry)"

    invoke-virtual {v1, v2}, Lcom/magicwach/rdefense/GameActivity$SampleView;->showError(Ljava/lang/String;)V

    .line 92
    :cond_0
    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    const-string v1, "AndroidDefense"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/magicwach/rdefense/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->settings:Landroid/content/SharedPreferences;

    .line 30
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 31
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 32
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x12c

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x500

    if-gt v1, v2, :cond_0

    .line 33
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/magicwach/rdefense/C;->PIXEL_WIDTH:I

    .line 35
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v2, 0x400

    if-gt v1, v2, :cond_1

    .line 36
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/magicwach/rdefense/C;->PIXEL_HEIGHT:I

    .line 38
    :cond_1
    new-instance v1, Lcom/magicwach/rdefense/GameActivity$SampleView;

    iget-object v2, p0, Lcom/magicwach/rdefense/GameActivity;->settings:Landroid/content/SharedPreferences;

    invoke-direct {v1, p0, v2}, Lcom/magicwach/rdefense/GameActivity$SampleView;-><init>(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    iput-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    .line 39
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameActivity;->setContentView(Landroid/view/View;)V

    .line 40
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameActivity;->setRequestedOrientation(I)V

    .line 41
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameActivity;->setVolumeControlStream(I)V

    .line 42
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 46
    .local v0, "result":Z
    const/4 v1, 0x1

    const v2, 0x7f050004

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 47
    const/4 v1, 0x2

    const v2, 0x7f050002

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 48
    const/4 v1, 0x4

    const v2, 0x7f050003

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 49
    const/4 v1, 0x3

    const v2, 0x7f050001

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 50
    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x0

    .line 54
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameActivity$SampleView;->gameIsRunning()Z

    move-result v0

    .line 55
    .local v0, "is_running":Z
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 57
    :pswitch_0
    if-eqz v0, :cond_1

    .line 58
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameActivity$SampleView;->endGame()V

    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v1}, Lcom/magicwach/rdefense/GameActivity$SampleView;->resumeGame()V

    goto :goto_0

    .line 64
    :pswitch_1
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/magicwach/rdefense/GameActivity;->tryQuickSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 65
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/magicwach/rdefense/OptionsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameActivity;->finish()V

    goto :goto_0

    .line 70
    :pswitch_2
    if-eqz v0, :cond_3

    invoke-direct {p0, v2}, Lcom/magicwach/rdefense/GameActivity;->tryQuickSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameActivity;->finish()V

    goto :goto_0

    .line 75
    :pswitch_3
    if-eqz v0, :cond_4

    invoke-direct {p0, v2}, Lcom/magicwach/rdefense/GameActivity;->tryQuickSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/magicwach/rdefense/TitleActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/magicwach/rdefense/GameActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameActivity;->finish()V

    goto :goto_0

    .line 81
    :pswitch_4
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/magicwach/rdefense/GameActivity;->tryQuickSave(Z)Z

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameActivity$SampleView;->stopUpdating()V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 98
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameActivity$SampleView;->resumeUpdating()V

    .line 114
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 115
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v0, p0}, Lcom/magicwach/rdefense/GameActivity$SampleView;->reInit(Landroid/app/Activity;)V

    .line 108
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameActivity$SampleView;->getGameState()Lcom/magicwach/rdefense/GameState;

    move-result-object v0

    invoke-static {v0}, Lcom/magicwach/rdefense/QuickSave;->tryQuickLoad(Lcom/magicwach/rdefense/GameState;)Z

    .line 109
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 110
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameActivity$SampleView;->getGameState()Lcom/magicwach/rdefense/GameState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/magicwach/rdefense/QuickSave;->saveState(Lcom/magicwach/rdefense/GameState;Z)Z

    .line 102
    iget-object v0, p0, Lcom/magicwach/rdefense/GameActivity;->sample_view:Lcom/magicwach/rdefense/GameActivity$SampleView;

    invoke-virtual {v0}, Lcom/magicwach/rdefense/GameActivity$SampleView;->cleanup()V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 104
    return-void
.end method
