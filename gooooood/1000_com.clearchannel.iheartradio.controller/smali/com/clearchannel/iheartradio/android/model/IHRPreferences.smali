.class public Lcom/clearchannel/iheartradio/android/model/IHRPreferences;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRPreferences.java"


# static fields
.field public static final kPreferencesName:Ljava/lang/String; = "com.clearchannel.iheratradio"

.field public static final kPrefix:Ljava/lang/String; = "_"

.field public static final kSeparator:Ljava/lang/String; = "\t"

.field private static sEditor:Landroid/content/SharedPreferences$Editor;

.field private static sShared:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    return-void
.end method

.method public static clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static commit()Z
    .locals 2

    .prologue
    .line 50
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->sEditor:Landroid/content/SharedPreferences$Editor;

    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    sput-object v1, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->sEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    goto :goto_0
.end method

.method public static copyBytes(J)[B
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyBytes(JLjava/lang/String;)[B
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyBytes(Ljava/lang/String;)[B
    .locals 3
    .param p0, "inKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    goto :goto_0
.end method

.method public static copyBytes(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 76
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static copyBytesUTF8(J)[B
    .locals 2
    .param p0, "inKey"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyBytesUTF8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static copyBytesUTF8(Ljava/lang/String;)[B
    .locals 3
    .param p0, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public static copyStringList(J)Ljava/util/List;
    .locals 2
    .param p0, "inKey"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static copyStringList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static copyStrings(J)[Ljava/lang/String;
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyStrings(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p0, "inKey"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "string":Ljava/lang/String;
    if-nez v0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static copyStringsInto(Ljava/lang/String;Ljava/util/List;)Ljava/util/Collection;
    .locals 2
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inCollection"    # Ljava/util/List;

    .prologue
    .line 72
    invoke-static {p0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyStrings(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "strings":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static get(JF)F
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inMissing"    # F

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static get(Ljava/lang/String;F)F
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inMissing"    # F

    .prologue
    .line 67
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static get(JI)I
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inMissing"    # I

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get(Ljava/lang/String;I)I
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inMissing"    # I

    .prologue
    .line 65
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static get(JJ)J
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inMissing"    # J

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static get(Ljava/lang/String;J)J
    .locals 2
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inMissing"    # J

    .prologue
    .line 66
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static get(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inMissing"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inMissing"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get(JZ)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inMissing"    # Z

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static get(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inMissing"    # Z

    .prologue
    .line 68
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getBoolean(J)Z
    .locals 1
    .param p0, "inKey"    # J

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(JZ)Z

    move-result v0

    return v0
.end method

.method public static getBytes(J)[B
    .locals 1
    .param p0, "inKey"    # J

    .prologue
    .line 130
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyBytes(J)[B

    move-result-object v0

    return-object v0
.end method

.method public static getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->sEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->sEditor:Landroid/content/SharedPreferences$Editor;

    .line 32
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->sEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static getFloat(J)F
    .locals 1
    .param p0, "inKey"    # J

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(JF)F

    move-result v0

    return v0
.end method

.method public static getInteger(J)I
    .locals 1
    .param p0, "inKey"    # J

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(JI)I

    move-result v0

    return v0
.end method

.method public static getLong(J)J
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 136
    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getObject(J)Ljava/lang/Object;
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getString(J)Ljava/lang/String;
    .locals 1
    .param p0, "inKey"    # J

    .prologue
    .line 134
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->get(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStrings(J)[Ljava/lang/String;
    .locals 1
    .param p0, "inKey"    # J

    .prologue
    .line 131
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->copyStrings(J)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isset(J)Z
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->isset(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->shared()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static joinStrings([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "a"    # [Ljava/lang/String;

    .prologue
    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v1, p0

    .local v1, "n":I
    if-lez v1, :cond_0

    const/4 v3, 0x0

    aget-object v3, p0, v3

    move-object v2, v3

    .local v2, "s":Ljava/lang/String;
    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1

    return-object v2

    .end local v2    # "s":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    move-object v2, v3

    goto :goto_0

    .restart local v2    # "s":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p0, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static put(J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(JF)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # F

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(JI)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # I

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(JJ)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # J

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(JLjava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(JLjava/util/Collection;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 93
    .local p2, "inValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;Ljava/util/Collection;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(JZ)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # Z

    .prologue
    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(J[B)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [B

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;[B)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(J[BLjava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [B
    .param p3, "inEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;[BLjava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(J[Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [Ljava/lang/String;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # F

    .prologue
    .line 42
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # I

    .prologue
    .line 40
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # J

    .prologue
    .line 41
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;Ljava/util/Collection;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 48
    .local p1, "inValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # Z

    .prologue
    .line 43
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;[B)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # [B

    .prologue
    .line 44
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;[BLjava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # [B
    .param p2, "inEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 45
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static put(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # [Ljava/lang/String;

    .prologue
    .line 47
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->joinStrings([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static remove(J)Landroid/content/SharedPreferences$Editor;
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public static setBoolean(JZ)V
    .locals 0
    .param p0, "inKey"    # J
    .param p2, "inValue"    # Z

    .prologue
    .line 125
    invoke-static {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(JZ)Z

    return-void
.end method

.method public static setBytes(J[B)V
    .locals 0
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [B

    .prologue
    .line 122
    invoke-static {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(J[B)Z

    return-void
.end method

.method public static setFloat(JF)V
    .locals 0
    .param p0, "inKey"    # J
    .param p2, "inValue"    # F

    .prologue
    .line 127
    invoke-static {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(JF)Z

    return-void
.end method

.method public static setInteger(JI)V
    .locals 0
    .param p0, "inKey"    # J
    .param p2, "inValue"    # I

    .prologue
    .line 124
    invoke-static {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(JI)Z

    return-void
.end method

.method public static setLong(JJ)V
    .locals 0
    .param p0, "inKey"    # J
    .param p2, "inValue"    # J

    .prologue
    .line 128
    invoke-static {p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(JJ)Z

    return-void
.end method

.method public static setString(JLjava/lang/String;)V
    .locals 0
    .param p0, "inKey"    # J
    .param p2, "inValue"    # Ljava/lang/String;

    .prologue
    .line 126
    invoke-static {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(JLjava/lang/String;)Z

    return-void
.end method

.method public static setStrings(J[Ljava/lang/String;)V
    .locals 0
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [Ljava/lang/String;

    .prologue
    .line 123
    invoke-static {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(J[Ljava/lang/String;)Z

    return-void
.end method

.method public static shared()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 24
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->sShared:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    const-string v1, "com.clearchannel.iheratradio"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->sShared:Landroid/content/SharedPreferences;

    .line 26
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->sShared:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static unset(J)Z
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->unset(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static unset(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(J)Z
    .locals 2
    .param p0, "inKey"    # J

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static write(JF)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # F

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public static write(JI)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # I

    .prologue
    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static write(JJ)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # J

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method public static write(JLjava/lang/String;)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static write(JLjava/util/Collection;)Z
    .locals 2
    .param p0, "inKey"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 107
    .local p2, "inValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public static write(JZ)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # Z

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static write(J[B)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [B

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public static write(J[BLjava/lang/String;)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [B
    .param p3, "inEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static write(J[Ljava/lang/String;)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;F)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # F

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;I)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # I

    .prologue
    .line 54
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;J)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # J

    .prologue
    .line 55
    invoke-static {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, "inValue":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;Ljava/util/Collection;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # Z

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;[B)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # [B

    .prologue
    .line 58
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;[B)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;[BLjava/lang/String;)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # [B
    .param p2, "inEncoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;[BLjava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static write(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # [Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->put(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->commit()Z

    move-result v0

    return v0
.end method

.method public static writeUTF8(J[B)Z
    .locals 2
    .param p0, "inKey"    # J
    .param p2, "inValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->writeUTF8(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method public static writeUTF8(Ljava/lang/String;[B)Z
    .locals 1
    .param p0, "inKey"    # Ljava/lang/String;
    .param p1, "inValue"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 60
    const-string v0, "UTF-8"

    invoke-static {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRPreferences;->write(Ljava/lang/String;[BLjava/lang/String;)Z

    move-result v0

    return v0
.end method
