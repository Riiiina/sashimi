.class public Lcom/magicwach/rdefense/TitleActivity;
.super Landroid/app/Activity;
.source "TitleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BACKUP_EOF:Ljava/lang/String; = "BACKUP EOF"

.field private static final BACKUP_FILE:Ljava/lang/String; = "robo_defense_full.bak"

.field private static final BACKUP_TYPE_BOOL:I = 0x1

.field private static final BACKUP_TYPE_INT:I = 0x2

.field private static final BACKUP_TYPE_STRING:I = 0x3

.field private static final BACKUP_WARNING:Ljava/lang/String; = "Edit this file at your own risk!"

.field private static final DEBUG_BUTTON_ID:I = 0x1ab

.field private static final SAVE_EXISTS_DIALOG:I = 0x1


# instance fields
.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private BackupOrRestore()V
    .locals 4

    .prologue
    .line 164
    const-string v2, "AndroidDefense"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/magicwach/rdefense/TitleActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 165
    .local v0, "primary":Landroid/content/SharedPreferences;
    const-string v2, "ADTimesLaunched"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 166
    .local v1, "primary_launches":I
    invoke-direct {p0, v0, v1}, Lcom/magicwach/rdefense/TitleActivity;->RestoreFromSDCard(Landroid/content/SharedPreferences;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/magicwach/rdefense/TitleActivity;->BackupToSDCard(Landroid/content/SharedPreferences;I)V

    .line 169
    :cond_0
    return-void
.end method

.method private BackupToSDCard(Landroid/content/SharedPreferences;I)V
    .locals 11
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "launches"    # I

    .prologue
    .line 239
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v6

    .line 240
    .local v6, "storage_state":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 242
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "robo_defense_full.bak"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 244
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/ObjectOutputStream;

    invoke-direct {v5, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 245
    .local v5, "oout":Ljava/io/ObjectOutputStream;
    const-string v8, "Edit this file at your own risk!"

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 246
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 247
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 248
    .local v2, "from_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 249
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 250
    .local v4, "key":Ljava/lang/String;
    const-string v8, "AndroidDefenseQuickSaveValid"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "ADTimesLaunched"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 252
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 253
    .local v7, "val":Ljava/lang/Object;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 254
    invoke-virtual {v5, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 255
    const/4 v8, 0x3

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 256
    check-cast v7, Ljava/lang/String;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v5, v7}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 271
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v5    # "oout":Ljava/io/ObjectOutputStream;
    .end local v2    # "from_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "key":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 275
    :cond_1
    :goto_1
    return-void

    .line 257
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "from_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "oout":Ljava/io/ObjectOutputStream;
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_2
    instance-of v8, v7, Ljava/lang/Integer;

    if-eqz v8, :cond_3

    .line 258
    invoke-virtual {v5, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 259
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 260
    check-cast v7, Ljava/lang/Integer;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    goto :goto_0

    .line 272
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v1    # "fout":Ljava/io/FileOutputStream;
    .end local v2    # "from_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "oout":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v8

    goto :goto_1

    .line 261
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v1    # "fout":Ljava/io/FileOutputStream;
    .restart local v2    # "from_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "oout":Ljava/io/ObjectOutputStream;
    .restart local v7    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v8, v7, Ljava/lang/Boolean;

    if-eqz v8, :cond_0

    .line 262
    invoke-virtual {v5, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 263
    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 264
    check-cast v7, Ljava/lang/Boolean;

    .end local v7    # "val":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V

    goto :goto_0

    .line 269
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v4    # "key":Ljava/lang/String;
    :cond_4
    const-string v8, "BACKUP EOF"

    invoke-virtual {v5, v8}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 270
    invoke-virtual {v5}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1
.end method

.method private RestoreFromSDCard(Landroid/content/SharedPreferences;I)Z
    .locals 11
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "launches"    # I

    .prologue
    .line 171
    const/4 v5, 0x1

    .line 172
    .local v5, "ok":Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 173
    .local v7, "storage_state":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 175
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    const-string v10, "robo_defense_full.bak"

    invoke-direct {v8, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 177
    .local v2, "fin":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 178
    .local v4, "oin":Ljava/io/ObjectInputStream;
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v1

    .line 180
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/magicwach/rdefense/TitleActivity;
    check-cast p0, Ljava/lang/String;

    const-string v8, "Edit this file at your own risk!"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v8

    if-nez v8, :cond_0

    .line 181
    const/4 v5, 0x0

    .line 186
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    .line 187
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readInt()I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    move-result v6

    .line 188
    .local v6, "sd_launches":I
    if-gt v6, p2, :cond_4

    .line 189
    const/4 v5, 0x0

    .line 194
    .end local v6    # "sd_launches":I
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 197
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 201
    .local v3, "key":Ljava/lang/String;
    :try_start_4
    const-string v8, "BACKUP EOF"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 222
    .end local v3    # "key":Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V

    .line 223
    if-eqz v5, :cond_3

    .line 224
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 236
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "oin":Ljava/io/ObjectInputStream;
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_3
    return v5

    .line 183
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "oin":Ljava/io/ObjectInputStream;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 184
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    goto :goto_0

    .line 191
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v6    # "sd_launches":I
    :cond_4
    const-string v8, "ADTimesLaunched"

    invoke-interface {v1, v8, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 226
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "oin":Ljava/io/ObjectInputStream;
    .end local v6    # "sd_launches":I
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 227
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v5, 0x0

    .line 232
    goto :goto_3

    .line 198
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v4    # "oin":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 199
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    goto :goto_2

    .line 204
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "key":Ljava/lang/String;
    :cond_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 219
    const/4 v5, 0x0

    goto :goto_1

    .line 206
    :pswitch_0
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v8

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 228
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v4    # "oin":Ljava/io/ObjectInputStream;
    .end local v3    # "key":Ljava/lang/String;
    :catch_3
    move-exception v8

    move-object v0, v8

    .line 229
    .local v0, "e":Ljava/io/StreamCorruptedException;
    const/4 v5, 0x0

    .line 232
    goto :goto_3

    .line 209
    .end local v0    # "e":Ljava/io/StreamCorruptedException;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "oin":Ljava/io/ObjectInputStream;
    :pswitch_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v8

    invoke-interface {v1, v3, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_1

    .line 230
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "oin":Ljava/io/ObjectInputStream;
    :catch_4
    move-exception v8

    move-object v0, v8

    .line 231
    .local v0, "e":Ljava/io/IOException;
    const/4 v5, 0x0

    .line 232
    goto :goto_3

    .line 213
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "oin":Ljava/io/ObjectInputStream;
    :pswitch_2
    :try_start_5
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v1, v3, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/StreamCorruptedException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_1

    .line 214
    :catch_5
    move-exception v8

    move-object v0, v8

    .line 215
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    .line 217
    goto :goto_1

    .line 234
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "oin":Ljava/io/ObjectInputStream;
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    .restart local p0    # "this":Lcom/magicwach/rdefense/TitleActivity;
    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/magicwach/rdefense/TitleActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/magicwach/rdefense/TitleActivity;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/magicwach/rdefense/TitleActivity;->newGame()V

    return-void
.end method

.method private checkFreeToFullUpgrade()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-string v12, "ADTimesLaunched"

    .line 135
    iget-object v9, p0, Lcom/magicwach/rdefense/TitleActivity;->settings:Landroid/content/SharedPreferences;

    const-string v10, "ADTimesLaunched"

    invoke-interface {v9, v12, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 136
    .local v7, "times_launched":I
    iget-object v9, p0, Lcom/magicwach/rdefense/TitleActivity;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 137
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "ADTimesLaunched"

    add-int/lit8 v9, v7, 0x1

    invoke-interface {v0, v12, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 138
    if-nez v7, :cond_1

    .line 140
    :try_start_0
    const-string v9, "com.magicwach.rdefense_free"

    const/4 v10, 0x0

    invoke-virtual {p0, v9, v10}, Lcom/magicwach/rdefense/TitleActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 141
    .local v2, "free_context":Landroid/content/Context;
    const-string v9, "AndroidDefense"

    const/4 v10, 0x1

    invoke-virtual {v2, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 142
    .local v4, "free_settings":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    .line 143
    .local v3, "free_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 144
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 145
    .local v6, "key":Ljava/lang/String;
    const-string v9, "AndroidDefenseQuickSaveValid"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 147
    .local v8, "val":Ljava/lang/Object;
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_2

    .line 148
    check-cast v8, Ljava/lang/String;

    .end local v8    # "val":Ljava/lang/Object;
    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 157
    .end local v2    # "free_context":Landroid/content/Context;
    .end local v4    # "free_settings":Landroid/content/SharedPreferences;
    .end local v3    # "free_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v6    # "key":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 161
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 162
    return-void

    .line 149
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v2    # "free_context":Landroid/content/Context;
    .restart local v3    # "free_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v4    # "free_settings":Landroid/content/SharedPreferences;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "val":Ljava/lang/Object;
    :cond_2
    :try_start_1
    instance-of v9, v8, Ljava/lang/Integer;

    if-eqz v9, :cond_3

    .line 150
    check-cast v8, Ljava/lang/Integer;

    .end local v8    # "val":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 158
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v2    # "free_context":Landroid/content/Context;
    .end local v3    # "free_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v4    # "free_settings":Landroid/content/SharedPreferences;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    :catch_1
    move-exception v9

    goto :goto_1

    .line 151
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .restart local v2    # "free_context":Landroid/content/Context;
    .restart local v3    # "free_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v4    # "free_settings":Landroid/content/SharedPreferences;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "key":Ljava/lang/String;
    .restart local v8    # "val":Ljava/lang/Object;
    :cond_3
    instance-of v9, v8, Ljava/lang/Boolean;

    if-eqz v9, :cond_0

    .line 152
    check-cast v8, Ljava/lang/Boolean;

    .end local v8    # "val":Ljava/lang/Object;
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-interface {v0, v6, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0
.end method

.method private createRewardMessage()Ljava/lang/CharSequence;
    .locals 5

    .prologue
    .line 68
    iget-object v2, p0, Lcom/magicwach/rdefense/TitleActivity;->settings:Landroid/content/SharedPreferences;

    const-string v3, "ADRewardPoints"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 69
    .local v1, "reward_points":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5956\u52b1\u70b9\u6570: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "msg":Ljava/lang/String;
    return-object v0
.end method

.method private newGame()V
    .locals 2

    .prologue
    .line 126
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->clearSave()V

    .line 127
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/LevelSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/TitleActivity;->startActivity(Landroid/content/Intent;)V

    .line 128
    invoke-virtual {p0}, Lcom/magicwach/rdefense/TitleActivity;->finish()V

    .line 129
    return-void
.end method

.method private resumeGame()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/GameActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/TitleActivity;->startActivity(Landroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Lcom/magicwach/rdefense/TitleActivity;->finish()V

    .line 133
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 95
    :sswitch_0
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->saveAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/TitleActivity;->showDialog(I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/magicwach/rdefense/TitleActivity;->newGame()V

    goto :goto_0

    .line 102
    :sswitch_1
    invoke-virtual {p0}, Lcom/magicwach/rdefense/TitleActivity;->finish()V

    goto :goto_0

    .line 105
    :sswitch_2
    invoke-direct {p0}, Lcom/magicwach/rdefense/TitleActivity;->resumeGame()V

    goto :goto_0

    .line 108
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/RewardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/TitleActivity;->startActivity(Landroid/content/Intent;)V

    .line 109
    invoke-virtual {p0}, Lcom/magicwach/rdefense/TitleActivity;->finish()V

    goto :goto_0

    .line 112
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/AchievementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/TitleActivity;->startActivity(Landroid/content/Intent;)V

    .line 113
    invoke-virtual {p0}, Lcom/magicwach/rdefense/TitleActivity;->finish()V

    goto :goto_0

    .line 116
    :sswitch_5
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/CreditsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/TitleActivity;->startActivity(Landroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/magicwach/rdefense/TitleActivity;->finish()V

    goto :goto_0

    .line 120
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/magicwach/rdefense/DebugActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/magicwach/rdefense/TitleActivity;->startActivity(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0}, Lcom/magicwach/rdefense/TitleActivity;->finish()V

    goto :goto_0

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x1ab -> :sswitch_6
        0x7f06001a -> :sswitch_0
        0x7f06001b -> :sswitch_2
        0x7f06001d -> :sswitch_4
        0x7f06001e -> :sswitch_3
        0x7f060020 -> :sswitch_5
        0x7f060021 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v8, 0x7f030002

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->setContentView(I)V

    .line 44
    invoke-direct {p0}, Lcom/magicwach/rdefense/TitleActivity;->BackupOrRestore()V

    .line 45
    const-string v8, "AndroidDefense"

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/magicwach/rdefense/TitleActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/magicwach/rdefense/TitleActivity;->settings:Landroid/content/SharedPreferences;

    .line 46
    invoke-direct {p0}, Lcom/magicwach/rdefense/TitleActivity;->checkFreeToFullUpgrade()V

    .line 47
    iget-object v8, p0, Lcom/magicwach/rdefense/TitleActivity;->settings:Landroid/content/SharedPreferences;

    invoke-static {p0, v8}, Lcom/magicwach/rdefense/QuickSave;->init(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 48
    const v8, 0x7f06001a

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 49
    .local v3, "new_game_button":Landroid/widget/Button;
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    const v8, 0x7f06001b

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 51
    .local v4, "resume_button":Landroid/widget/Button;
    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    invoke-static {}, Lcom/magicwach/rdefense/QuickSave;->saveAvailable()Z

    move-result v8

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 53
    const v8, 0x7f06001d

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 54
    .local v0, "achieve_button":Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v8, 0x7f06001e

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 56
    .local v5, "reward_button":Landroid/widget/Button;
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v8, 0x7f060020

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 58
    .local v1, "credits_button":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v8, 0x7f060021

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 60
    .local v2, "exit_button":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v8, 0x7f060017

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 62
    .local v6, "reward_msg":Landroid/widget/TextView;
    invoke-direct {p0}, Lcom/magicwach/rdefense/TitleActivity;->createRewardMessage()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->setRequestedOrientation(I)V

    .line 64
    const v8, 0x7f060022

    invoke-virtual {p0, v8}, Lcom/magicwach/rdefense/TitleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 65
    .local v7, "version":Landroid/widget/TextView;
    const-string v8, "V1.2.0  Build 1743 "

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 74
    packed-switch p1, :pswitch_data_0

    .line 90
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 76
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020004

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000c

    new-instance v2, Lcom/magicwach/rdefense/TitleActivity$2;

    invoke-direct {v2, p0}, Lcom/magicwach/rdefense/TitleActivity$2;-><init>(Lcom/magicwach/rdefense/TitleActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f05000d

    new-instance v2, Lcom/magicwach/rdefense/TitleActivity$1;

    invoke-direct {v2, p0}, Lcom/magicwach/rdefense/TitleActivity$1;-><init>(Lcom/magicwach/rdefense/TitleActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
