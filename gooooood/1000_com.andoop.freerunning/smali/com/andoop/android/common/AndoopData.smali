.class public Lcom/andoop/android/common/AndoopData;
.super Ljava/lang/Object;
.source "AndoopData.java"


# static fields
.field private static final DATA_PATH:Ljava/lang/String; = "%s/Andoop/%s/settings.xml"

.field public static final EMPTY:Lorg/json/JSONObject;

.field private static final KEY_VERSION:Ljava/lang/String; = "DATA_VERSION"

.field private static final VERSION_0:Ljava/lang/String; = "0"

.field private static final VERSION_1:Ljava/lang/String; = "1"

.field private static final VERSION_LATEST:Ljava/lang/String; = "1"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFile:Ljava/io/File;

.field private final mObj:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/andoop/android/common/AndoopData;->EMPTY:Lorg/json/JSONObject;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/andoop/android/common/AndoopData;->mContext:Landroid/content/Context;

    .line 32
    new-instance v0, Ljava/io/File;

    const-string v1, "%s/Andoop/%s/settings.xml"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/andoop/android/common/AndoopData;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/andoop/android/common/AndoopData;->mFile:Ljava/io/File;

    .line 33
    invoke-direct {p0}, Lcom/andoop/android/common/AndoopData;->readJson()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/andoop/android/common/AndoopData;->mObj:Lorg/json/JSONObject;

    .line 34
    return-void
.end method

.method private final readJson()Lorg/json/JSONObject;
    .locals 7

    .prologue
    .line 86
    iget-object v6, p0, Lcom/andoop/android/common/AndoopData;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 87
    sget-object v6, Lcom/andoop/android/common/AndoopData;->EMPTY:Lorg/json/JSONObject;

    .line 110
    :goto_0
    return-object v6

    .line 91
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/andoop/android/common/AndoopData;->mFile:Ljava/io/File;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 92
    .local v2, "fin":Ljava/io/FileInputStream;
    invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I

    move-result v6

    new-array v0, v6, [B

    .line 93
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 94
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    .line 102
    .local v4, "originalBody":Ljava/lang/String;
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/andoop/android/common/AndoopCipher;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 103
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v6, "DATA_VERSION"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "version":Ljava/lang/String;
    const-string v6, "1"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v3

    .line 105
    goto :goto_0

    .line 95
    .end local v0    # "buffer":[B
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v4    # "originalBody":Ljava/lang/String;
    .end local v5    # "version":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 96
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/Throwable;)V

    .line 97
    sget-object v6, Lcom/andoop/android/common/AndoopData;->EMPTY:Lorg/json/JSONObject;

    goto :goto_0

    .line 107
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":[B
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    .restart local v4    # "originalBody":Ljava/lang/String;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_1
    :try_start_2
    sget-object v6, Lcom/andoop/android/common/AndoopData;->EMPTY:Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 109
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v5    # "version":Ljava/lang/String;
    :catch_1
    move-exception v6

    move-object v1, v6

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "0"

    invoke-direct {p0, v4, v6}, Lcom/andoop/android/common/AndoopData;->readJson0(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    goto :goto_0
.end method

.method private final readJson0(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 116
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-object v1

    .line 117
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 118
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/Throwable;)V

    .line 119
    sget-object v1, Lcom/andoop/android/common/AndoopData;->EMPTY:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private final writeJson()V
    .locals 8

    .prologue
    .line 125
    :try_start_0
    iget-object v5, p0, Lcom/andoop/android/common/AndoopData;->mObj:Lorg/json/JSONObject;

    const-string v6, "DATA_VERSION"

    const-string v7, "1"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    iget-object v5, p0, Lcom/andoop/android/common/AndoopData;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/andoop/android/common/AndoopCipher;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "encrypt":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 128
    .local v0, "bytes":[B
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 129
    .local v4, "root":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    iget-object v5, p0, Lcom/andoop/android/common/AndoopData;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    iget-object v5, p0, Lcom/andoop/android/common/AndoopData;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 133
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/andoop/android/common/AndoopData;->mFile:Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 134
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 135
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v0    # "bytes":[B
    .end local v2    # "encrypt":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "root":Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public final get(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 41
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/andoop/android/common/AndoopData;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    .line 45
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public final get(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 49
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/andoop/android/common/AndoopData;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    move-wide v1, p2

    .line 53
    :goto_0
    return-wide v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public final get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/andoop/android/common/AndoopData;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/andoop/android/common/AndoopData;->mObj:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 73
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 69
    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 73
    goto :goto_0
.end method

.method public final get(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 57
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/andoop/android/common/AndoopData;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    move v1, p2

    .line 61
    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public final put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/andoop/android/common/AndoopData;->mObj:Lorg/json/JSONObject;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 81
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {v0}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final save()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/andoop/android/common/AndoopData;->writeJson()V

    .line 38
    return-void
.end method
