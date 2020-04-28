.class public Lcom/magicwach/rdefense/QuickSave;
.super Ljava/lang/Object;
.source "QuickSave.java"


# static fields
.field private static context:Landroid/content/Context; = null

.field private static final save_eyecatcher:I = 0x41444546

.field private static final save_filename:Ljava/lang/String; = "android_defense_qsave.bin"

.field private static settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearSave()V
    .locals 3

    .prologue
    .line 49
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->saveAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    sget-object v1, Lcom/magicwach/rdefense/QuickSave;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 51
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AndroidDefenseQuickSaveValid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 52
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 54
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Landroid/content/SharedPreferences;

    .prologue
    .line 15
    sput-object p0, Lcom/magicwach/rdefense/QuickSave;->context:Landroid/content/Context;

    .line 16
    sput-object p1, Lcom/magicwach/rdefense/QuickSave;->settings:Landroid/content/SharedPreferences;

    .line 17
    return-void
.end method

.method private static makeDebugFilename()Ljava/lang/String;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android_defense_dbg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/magicwach/rdefense/QuickSave;->settings:Landroid/content/SharedPreferences;

    const-string v2, "ADDebugSaveSlot"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".bin"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveAvailable()Z
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/magicwach/rdefense/QuickSave;->settings:Landroid/content/SharedPreferences;

    const-string v1, "AndroidDefenseQuickSaveValid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static saveState(Lcom/magicwach/rdefense/GameState;Z)Z
    .locals 8
    .param p0, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p1, "debug_save"    # Z

    .prologue
    .line 19
    const/4 v5, 0x0

    .line 20
    .local v5, "save_ok":Z
    if-nez p1, :cond_0

    .line 21
    invoke-static {}, Lcom/magicwach/rdefense/AchievementData;->trySaveProgress()V

    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameState;->getRunState()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 27
    :cond_1
    if-eqz p1, :cond_4

    :try_start_0
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->makeDebugFilename()Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 28
    .local v2, "filename":Ljava/lang/String;
    :goto_0
    sget-object v6, Lcom/magicwach/rdefense/QuickSave;->context:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 29
    .local v3, "fout":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 30
    .local v4, "oout":Ljava/io/ObjectOutputStream;
    const v6, 0x41444546

    invoke-virtual {v4, v6}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 31
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 32
    invoke-virtual {p0, v4}, Lcom/magicwach/rdefense/GameState;->saveState(Ljava/io/ObjectOutputStream;)V

    .line 33
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V

    .line 34
    if-nez p1, :cond_2

    .line 35
    sget-object v6, Lcom/magicwach/rdefense/QuickSave;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 36
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v6, "AndroidDefenseQuickSaveValid"

    const/4 v7, 0x1

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 37
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 39
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    const/4 v5, 0x1

    .line 46
    .end local v2    # "filename":Ljava/lang/String;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "oout":Ljava/io/ObjectOutputStream;
    :cond_3
    :goto_1
    return v5

    .line 27
    :cond_4
    const-string v6, "android_defense_qsave.bin"
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v6

    goto :goto_0

    .line 40
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 41
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v6, "\u72b6\u6001\u4fdd\u5b58: \u65e0\u6cd5\u6253\u5f00\u6587\u4ef6"

    invoke-static {v6}, Lcom/magicwach/rdefense/QuickSave;->setStartupMsg(Ljava/lang/String;)V

    goto :goto_1

    .line 42
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 43
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "\u72b6\u6001\u4fdd\u5b58: \u5199\u5165\u6570\u636e\u5931\u8d25"

    invoke-static {v6}, Lcom/magicwach/rdefense/QuickSave;->setStartupMsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static setStartupMsg(Ljava/lang/String;)V
    .locals 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 105
    sget-object v1, Lcom/magicwach/rdefense/QuickSave;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "AndroidDefenseStartupMsg"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 108
    return-void
.end method

.method public static tryQuickLoad(Lcom/magicwach/rdefense/GameState;)Z
    .locals 14
    .param p0, "master"    # Lcom/magicwach/rdefense/GameState;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v13, "ADDebugSaveFlag"

    .line 59
    const/4 v5, 0x0

    .line 60
    .local v5, "loaded_ok":Z
    const/4 v8, 0x0

    .line 61
    .local v8, "try_load":Z
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->saveAvailable()Z

    move-result v7

    .line 62
    .local v7, "qsave_valid":Z
    sget-object v9, Lcom/magicwach/rdefense/QuickSave;->settings:Landroid/content/SharedPreferences;

    const-string v10, "ADDebugSaveFlag"

    invoke-interface {v9, v13, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 63
    .local v0, "dbg_valid":Z
    if-nez v7, :cond_0

    if-eqz v0, :cond_4

    .line 65
    :cond_0
    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->makeDebugFilename()Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 66
    .local v3, "filename":Ljava/lang/String;
    :goto_0
    sget-object v9, Lcom/magicwach/rdefense/QuickSave;->context:Landroid/content/Context;

    invoke-virtual {v9, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v4

    .line 67
    .local v4, "fin":Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/ObjectInputStream;

    invoke-direct {v6, v4}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v6, "oin":Ljava/io/ObjectInputStream;
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    const v10, 0x41444546

    if-eq v9, v10, :cond_2

    .line 69
    const-string v9, "\u5feb\u901f\u52a0\u8f7d\u5931\u8d25: bad eyecatcher"

    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    move v9, v11

    .line 102
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "oin":Ljava/io/ObjectInputStream;
    :goto_1
    return v9

    .line 65
    :cond_1
    const-string v9, "android_defense_qsave.bin"

    move-object v3, v9

    goto :goto_0

    .line 72
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "fin":Ljava/io/FileInputStream;
    .restart local v6    # "oin":Ljava/io/ObjectInputStream;
    :cond_2
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    if-eq v9, v12, :cond_3

    .line 73
    const-string v9, "\u5feb\u901f\u52a0\u8f7d\u5931\u8d25: \u6e38\u620f\u5df2\u66f4\u65b0"

    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    move v9, v11

    .line 74
    goto :goto_1

    .line 76
    :cond_3
    const/4 v8, 0x1

    .line 77
    invoke-virtual {p0, v6}, Lcom/magicwach/rdefense/GameState;->loadState(Ljava/io/ObjectInputStream;)Z

    move-result v5

    .line 78
    invoke-virtual {v6}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "fin":Ljava/io/FileInputStream;
    .end local v6    # "oin":Ljava/io/ObjectInputStream;
    :goto_2
    if-eqz v5, :cond_6

    .line 87
    const-string v9, "\u5feb\u901f\u52a0\u8f7d\u6210\u529f"

    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->showMessage(Ljava/lang/String;)V

    .line 92
    :goto_3
    if-eqz v0, :cond_4

    .line 93
    sget-object v9, Lcom/magicwach/rdefense/QuickSave;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 94
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "ADDebugSaveFlag"

    invoke-interface {v2, v13, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 98
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4
    if-nez v5, :cond_5

    if-ne v8, v12, :cond_5

    .line 99
    invoke-virtual {p0}, Lcom/magicwach/rdefense/GameState;->resumeGame()V

    .line 100
    const/4 v9, 0x5

    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->endGame(I)V

    :cond_5
    move v9, v5

    .line 102
    goto :goto_1

    .line 79
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 80
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v9, "\u5feb\u901f\u52a0\u8f7d\u5931\u8d25: \u65e0\u6cd5\u6253\u5f00\u6587\u4ef6"

    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    goto :goto_2

    .line 81
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    move-object v1, v9

    .line 82
    .local v1, "e":Ljava/io/StreamCorruptedException;
    const-string v9, "\u5feb\u901f\u52a0\u8f7d\u5931\u8d25: \u6570\u636e\u635f\u574f"

    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    goto :goto_2

    .line 83
    .end local v1    # "e":Ljava/io/StreamCorruptedException;
    :catch_2
    move-exception v9

    move-object v1, v9

    .line 84
    .local v1, "e":Ljava/io/IOException;
    const-string v9, "\u5feb\u901f\u52a0\u8f7d\u5931\u8d25: \u8bfb\u53d6 IO \u6587\u4ef6\u9519\u8bef"

    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    goto :goto_2

    .line 89
    .end local v1    # "e":Ljava/io/IOException;
    :cond_6
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->clearSave()V

    .line 90
    const-string v9, "\u5feb\u901f\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {p0, v9}, Lcom/magicwach/rdefense/GameState;->showError(Ljava/lang/String;)V

    goto :goto_3
.end method
