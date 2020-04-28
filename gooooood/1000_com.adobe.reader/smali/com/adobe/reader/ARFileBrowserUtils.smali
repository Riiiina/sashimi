.class public Lcom/adobe/reader/ARFileBrowserUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;
    }
.end annotation


# static fields
.field private static final MAX_RECENT_FILES:I = 0x1e

.field public static final PDF_FILE_EXTENSION_LOWER_CASE:Ljava/lang/String; = ".pdf"

.field private static final RECENT_FILE:Ljava/lang/String; = "recentFile"

.field private static final ROOT_DIR:Ljava/lang/String;

.field public static sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

.field public static final sEmmcDirectory:Ljava/io/File;

.field private static sRecentFilesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/reader/ARFileEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final sRootDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->ROOT_DIR:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->ROOT_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRootDirectory:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/emmc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sEmmcDirectory:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearRecentFileList(Landroid/content/Context;)V
    .locals 4

    const/4 v2, 0x0

    const-string v0, "com.adobe.reader.preferences"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/adobe/reader/ARFileBrowserUtils;->getRecentFilesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    move v1, v2

    :goto_0
    sget-object v2, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recentFile"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static getRecentFilesList(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/adobe/reader/ARFileEntry;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    const-string v0, "com.adobe.reader.preferences"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v8, v1

    :goto_0
    const/16 v0, 0x1e

    if-ge v8, v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "recentFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    return-object v0

    :cond_1
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v9, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    new-instance v0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/reader/ARFileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static initializeFileBrowserUtils()V
    .locals 1

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;->RECENT_FILES:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sCurrentTab:Lcom/adobe/reader/ARFileBrowserUtils$FILE_OPEN_TABS;

    return-void
.end method

.method public static isSDCardAvailable()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static updateRecentFilesList(Ljava/lang/String;Landroid/content/Context;)V
    .locals 10

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/adobe/reader/ARFileBrowserUtils;->getRecentFilesList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    :cond_1
    move v1, v9

    :goto_1
    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {v0}, Lcom/adobe/reader/ARFileEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "com.adobe.reader.preferences"

    invoke-virtual {p1, v0, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    move v2, v9

    :goto_2
    if-ge v2, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recentFile"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {v0}, Lcom/adobe/reader/ARFileEntry;->getFilePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/adobe/reader/ARFileBrowserUtils;->sRecentFilesList:Ljava/util/List;

    new-instance v0, Lcom/adobe/reader/ARFileEntry;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/adobe/reader/ARFileEntry;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    invoke-interface {v8, v9, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const-string v0, "recentFile0"

    invoke-interface {v7, v0, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method
