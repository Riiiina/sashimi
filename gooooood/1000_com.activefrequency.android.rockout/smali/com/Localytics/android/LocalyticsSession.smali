.class public final Lcom/Localytics/android/LocalyticsSession;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"


# static fields
.field private static final CLIENT_VERSION:Ljava/lang/String; = "1.1"

.field private static final CLOSE_FILE_PREFIX:Ljava/lang/String; = "c_"

.field private static final DEVICE_ID_FILENAME:Ljava/lang/String; = "device_id"

.field private static final LOCALYTICS_DIR:Ljava/lang/String; = "localytics"

.field private static final LOG_TAG:Ljava/lang/String; = "Localytics_Session"

.field private static final MAX_NUM_SESSIONS:I = 0xa

.field private static final OPTOUT_FILNAME:Ljava/lang/String; = "opted_out"

.field private static final OPT_SESSION:Ljava/lang/String; = "s_opt_session"

.field private static SESSION_EXPIRATION:I = 0x0

.field private static final SESSION_FILE_PREFIX:Ljava/lang/String; = "s_"

.field private static final SESSION_ID_FILENAME:Ljava/lang/String; = "last_session_id"

.field private static final UPLOADER_FILE_PREFIX:Ljava/lang/String; = "u_"

.field private static _isOptedIn:Z

.field private static _isUploading:Z


# instance fields
.field private _appContext:Landroid/content/Context;

.field private _applicationKey:Ljava/lang/String;

.field private _closeFilename:Ljava/lang/String;

.field private _isSessionOpen:Z

.field private _localyticsDirPath:Ljava/lang/String;

.field private _sessionFilename:Ljava/lang/String;

.field private _sessionUUID:Ljava/lang/String;

.field private uploadComplete:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 85
    sput-boolean v0, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    .line 86
    sput-boolean v0, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    .line 111
    const/16 v0, 0x3a98

    sput v0, Lcom/Localytics/android/LocalyticsSession;->SESSION_EXPIRATION:I

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "appContext"    # Landroid/content/Context;
    .param p2, "applicationKey"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const-string v4, "/"

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    .line 77
    iput-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_closeFilename:Ljava/lang/String;

    .line 83
    iput-boolean v2, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    .line 794
    new-instance v2, Lcom/Localytics/android/LocalyticsSession$1;

    invoke-direct {v2, p0}, Lcom/Localytics/android/LocalyticsSession$1;-><init>(Lcom/Localytics/android/LocalyticsSession;)V

    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->uploadComplete:Ljava/lang/Runnable;

    .line 128
    iput-object p1, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    .line 129
    iput-object p2, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 135
    const-string v3, "localytics"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 136
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 134
    iput-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    .line 144
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "opted_out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .local v1, "optOutFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    const/4 v2, 0x0

    sput-boolean v2, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    .line 158
    .end local v1    # "optOutFile":Ljava/io/File;
    :goto_0
    return-void

    .line 152
    .restart local v1    # "optOutFile":Ljava/io/File;
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 154
    .end local v1    # "optOutFile":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Localytics_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Swallowing exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$0()Z
    .locals 1

    .prologue
    .line 85
    sget-boolean v0, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    return v0
.end method

.method static synthetic access$1(Z)V
    .locals 0

    .prologue
    .line 85
    sput-boolean p0, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    return-void
.end method

.method private static appendDataToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 554
    if-eqz p0, :cond_0

    .line 559
    :try_start_0
    const-class v2, Lcom/Localytics/android/LocalyticsSession;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 562
    .local v1, "out":Ljava/io/OutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    .line 563
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 559
    monitor-exit v2

    .line 571
    .end local v1    # "out":Ljava/io/OutputStream;
    :cond_0
    :goto_0
    return-void

    .line 559
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 567
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 569
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Localytics_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AppendDataToFile failed with IO Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private createOptEvent(Z)V
    .locals 4
    .param p1, "optState"    # Z

    .prologue
    .line 719
    const-string v2, "s_opt_session"

    invoke-direct {p0, v2}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 720
    .local v0, "fp":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 723
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 724
    .local v1, "optString":Ljava/lang/StringBuffer;
    const-string v2, "- c: optin\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 725
    const-string v2, "  a: optin\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 726
    const-string v2, "  optin:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    const-string v2, "du"

    .line 730
    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 728
    invoke-static {v2, v3}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 733
    const-string v2, "au"

    .line 734
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    .line 732
    invoke-static {v2, v3}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 737
    const-string v2, "optin"

    .line 738
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    .line 736
    invoke-static {v2, v3}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 740
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/Localytics/android/LocalyticsSession;->appendDataToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 742
    .end local v1    # "optString":Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 660
    iget-object v1, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/Localytics/android/DatapointHelper;->getGlobalDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 661
    .local v0, "deviceId":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 663
    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getLocalDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 666
    :cond_0
    return-object v0
.end method

.method private getLocalDeviceId()Ljava/lang/String;
    .locals 12

    .prologue
    const-string v11, "Localytics_Session"

    const-string v10, "/"

    .line 676
    const/4 v2, 0x0

    .line 677
    .local v2, "deviceId":Ljava/lang/String;
    const/16 v1, 0x64

    .line 684
    .local v1, "bufferSize":I
    const-string v7, "device_id"

    .line 685
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 686
    const-string v9, "localytics"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 685
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 683
    invoke-direct {p0, v7, v8}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 689
    .local v4, "fp":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_0

    .line 691
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-static {v4, v2}, Lcom/Localytics/android/LocalyticsSession;->appendDataToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 710
    :goto_0
    return-object v2

    .line 699
    :cond_0
    const/16 v7, 0x64

    :try_start_0
    new-array v0, v7, [C

    .line 701
    .local v0, "buf":[C
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v8, 0x64

    invoke-direct {v6, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 702
    .local v6, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v6, v0}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    .line 703
    .local v5, "numRead":I
    const/4 v7, 0x0

    invoke-static {v0, v7, v5}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 704
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 706
    .end local v0    # "buf":[C
    .end local v5    # "numRead":I
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v7

    move-object v3, v7

    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v7, "Localytics_Session"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GetLocalDeviceID failed with FNF: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 707
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .local v3, "e":Ljava/io/IOException;
    const-string v7, "Localytics_Session"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GetLocalDeviceId Failed with IO Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getOldSessionUUId()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v12, 0x0

    const-string v13, "Localytics_Session"

    .line 753
    const/16 v0, 0x64

    .line 756
    .local v0, "bufferSize":I
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "last_session_id"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    .local v2, "fp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 761
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    const/16 v9, 0x64

    invoke-direct {v3, v8, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 762
    .local v3, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, "storedId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 764
    .local v7, "timeStamp":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 766
    if-eqz v7, :cond_0

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    sub-long v5, v8, v10

    .line 770
    .local v5, "timeSinceSession":J
    sget v8, Lcom/Localytics/android/LocalyticsSession;->SESSION_EXPIRATION:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    int-to-long v8, v8

    cmp-long v8, v8, v5

    if-lez v8, :cond_0

    move-object v8, v4

    .line 787
    .end local v3    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "storedId":Ljava/lang/String;
    .end local v5    # "timeSinceSession":J
    .end local v7    # "timeStamp":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 776
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 778
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "Localytics_Session"

    const-string v8, "File Not Found opening stored session"

    invoke-static {v13, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v12

    .line 779
    goto :goto_0

    .line 781
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v8

    move-object v1, v8

    .line 783
    .local v1, "e":Ljava/io/IOException;
    const-string v8, "Localytics_Session"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "IO Exception getting stored session: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v13, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v12

    .line 784
    goto :goto_0

    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    move-object v8, v12

    .line 787
    goto :goto_0
.end method

.method private getOpenSessionString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 603
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 604
    .local v1, "openString":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 605
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 607
    .local v0, "defaultLocale":Ljava/util/Locale;
    const-string v3, "- c: se\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 608
    const-string v3, "  a: c\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    const-string v3, "  se:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    const-string v3, "u"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 612
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    const-string v3, "au"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_applicationKey:Ljava/lang/String;

    .line 614
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const-string v3, "av"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/Localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 619
    const-string v3, "lv"

    const-string v4, "1.1"

    .line 618
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    const-string v3, "ct"

    invoke-static {}, Lcom/Localytics/android/DatapointHelper;->getTimeAsDatetime()Ljava/lang/String;

    move-result-object v4

    .line 620
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    const-string v3, "du"

    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    .line 624
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    const-string v3, "dp"

    const-string v4, "Android"

    .line 626
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 629
    const-string v3, "dov"

    sget-object v4, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 628
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 631
    const-string v3, "dmo"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 630
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 633
    const-string v3, "dll"

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 632
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 635
    const-string v3, "dlc"

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    .line 634
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 637
    const-string v3, "dc"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 636
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 641
    const-string v3, "nca"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    .line 640
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 643
    const-string v3, "nc"

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    .line 642
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 645
    const-string v3, "dac"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_appContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/Localytics/android/DatapointHelper;->getNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;

    move-result-object v4

    .line 644
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 647
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getOrCreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 521
    .local v1, "fp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 542
    :goto_0
    return-object v2

    .line 527
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 530
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 532
    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 537
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Localytics_Session"

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to get or create file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 539
    const-string v4, " in path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 538
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 507
    iget-object v0, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static overwriteFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 5
    .param p0, "file"    # Ljava/io/File;
    .param p1, "contents"    # Ljava/lang/String;

    .prologue
    .line 580
    if-eqz p0, :cond_0

    .line 584
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 585
    .local v1, "writer":Ljava/io/FileWriter;
    invoke-virtual {v1, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 587
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    .end local v1    # "writer":Ljava/io/FileWriter;
    :cond_0
    :goto_0
    return-void

    .line 589
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 591
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Localytics_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Ovewriting file failed with IO Exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 7

    .prologue
    const-string v6, "Localytics_Session"

    .line 353
    sget-boolean v3, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    if-eqz v3, :cond_0

    .line 354
    iget-boolean v3, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    if-nez v3, :cond_1

    .line 356
    :cond_0
    const-string v3, "Localytics_Session"

    const-string v3, "Session not closed."

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_0
    return-void

    .line 363
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 364
    .local v0, "closeString":Ljava/lang/StringBuffer;
    const-string v3, "- c: se\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v3, "  a: u\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v3, "u"

    .line 368
    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 366
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatControllerValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 369
    const-string v3, "  se:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v3, "ctc"

    .line 372
    invoke-static {}, Lcom/Localytics/android/DatapointHelper;->getTimeAsDatetime()Ljava/lang/String;

    move-result-object v4

    .line 370
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_closeFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 376
    .local v2, "fp":Ljava/io/File;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->overwriteFile(Ljava/io/File;Ljava/lang/String;)V

    .line 381
    const-string v3, "last_session_id"

    invoke-direct {p0, v3}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 383
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 382
    invoke-static {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->overwriteFile(Ljava/io/File;Ljava/lang/String;)V

    .line 385
    const-string v3, "Localytics_Session"

    const-string v4, "Close event written."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    .end local v0    # "closeString":Ljava/lang/StringBuffer;
    .end local v2    # "fp":Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 389
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Localytics_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Swallowing exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public isOptedIn()Z
    .locals 1

    .prologue
    .line 236
    sget-boolean v0, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    return v0
.end method

.method public open()V
    .locals 8

    .prologue
    const-string v3, "s_"

    const-string v3, "c_"

    const-string v7, "Localytics_Session"

    .line 256
    const-class v3, Lcom/Localytics/android/LocalyticsSession;

    monitor-enter v3

    .line 258
    :try_start_0
    sget-boolean v4, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    if-eqz v4, :cond_0

    .line 259
    iget-boolean v4, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    if-eqz v4, :cond_1

    .line 261
    :cond_0
    const-string v4, "Localytics_Session"

    const-string v5, "Session not opened"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    monitor-exit v3

    .line 338
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    .line 256
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getOldSessionUUId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 275
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "s_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    .line 278
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "c_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_closeFilename:Ljava/lang/String;

    .line 279
    const-string v3, "Localytics_Session"

    const-string v4, "Reconnected to existing session"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 336
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Localytics_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Swallowing exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 285
    :cond_2
    :try_start_3
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v2, "fp":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 289
    new-instance v1, Lcom/Localytics/android/LocalyticsSession$2;

    invoke-direct {v1, p0}, Lcom/Localytics/android/LocalyticsSession$2;-><init>(Lcom/Localytics/android/LocalyticsSession;)V

    .line 300
    .local v1, "filter":Ljava/io/FilenameFilter;
    invoke-virtual {v2, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_3

    .line 302
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    .line 303
    const-string v3, "Localytics_Session"

    const-string v4, "Queue full, session not created"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 309
    .end local v1    # "filter":Ljava/io/FilenameFilter;
    :cond_3
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "s_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "c_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_closeFilename:Ljava/lang/String;

    .line 316
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 317
    if-nez v2, :cond_4

    .line 319
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    goto/16 :goto_0

    .line 324
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 326
    const-string v3, "Localytics_Session"

    const-string v4, "Session already opened"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 330
    :cond_5
    invoke-direct {p0}, Lcom/Localytics/android/LocalyticsSession;->getOpenSessionString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->appendDataToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    const-string v3, "Localytics_Session"

    const-string v4, "Session opened"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method

.method public setOptIn(Z)V
    .locals 5
    .param p1, "optedIn"    # Z

    .prologue
    const-string v2, "opted_out"

    .line 188
    :try_start_0
    sget-boolean v2, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    if-ne p1, v2, :cond_0

    .line 224
    :goto_0
    return-void

    .line 193
    :cond_0
    sput-boolean p1, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    .line 196
    if-eqz p1, :cond_1

    .line 199
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "opted_out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "fp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 202
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/Localytics/android/LocalyticsSession;->createOptEvent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v1    # "fp":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Localytics_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Swallowing exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v1    # "fp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 210
    new-instance v1, Ljava/io/File;

    .end local v1    # "fp":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "opted_out"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .restart local v1    # "fp":Ljava/io/File;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 217
    :goto_1
    const/4 v2, 0x0

    :try_start_3
    invoke-direct {p0, v2}, Lcom/Localytics/android/LocalyticsSession;->createOptEvent(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 215
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public tagEvent(Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    const-string v5, "Localytics_Session"

    .line 415
    sget-boolean v3, Lcom/Localytics/android/LocalyticsSession;->_isOptedIn:Z

    if-eqz v3, :cond_0

    .line 416
    iget-boolean v3, p0, Lcom/Localytics/android/LocalyticsSession;->_isSessionOpen:Z

    if-nez v3, :cond_1

    .line 418
    :cond_0
    const-string v3, "Localytics_Session"

    const-string v3, "Tag not written"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :goto_0
    return-void

    .line 425
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 426
    .local v1, "eventString":Ljava/lang/StringBuffer;
    const-string v3, "- c: ev\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string v3, "  a: c\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 428
    const-string v3, "  ev:\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string v3, "u"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    const-string v3, "su"

    iget-object v4, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionUUID:Ljava/lang/String;

    .line 431
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    const-string v3, "ct"

    invoke-static {}, Lcom/Localytics/android/DatapointHelper;->getTimeAsDatetime()Ljava/lang/String;

    move-result-object v4

    .line 433
    invoke-static {v3, v4}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    const-string v3, "n"

    .line 435
    invoke-static {v3, p1}, Lcom/Localytics/android/DatapointHelper;->formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    iget-object v3, p0, Lcom/Localytics/android/LocalyticsSession;->_sessionFilename:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/Localytics/android/LocalyticsSession;->getOrCreateFileWithDefaultPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 439
    .local v2, "fp":Ljava/io/File;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/Localytics/android/LocalyticsSession;->appendDataToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 440
    const-string v3, "Localytics_Session"

    const-string v4, "Tag written."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 442
    .end local v1    # "eventString":Ljava/lang/StringBuffer;
    .end local v2    # "fp":Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Localytics_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Swallowing exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public upload()V
    .locals 7

    .prologue
    .line 461
    const-class v2, Lcom/Localytics/android/LocalyticsSession;

    monitor-enter v2

    .line 467
    :try_start_0
    sget-boolean v3, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    if-eqz v3, :cond_0

    .line 469
    monitor-exit v2

    .line 491
    :goto_0
    return-void

    .line 472
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Lcom/Localytics/android/LocalyticsSession;->_isUploading:Z

    .line 461
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    :try_start_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/Localytics/android/LocalyticsSession;->_localyticsDirPath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 478
    .local v1, "fp":Ljava/io/File;
    new-instance v0, Lcom/Localytics/android/UploaderThread;

    .line 480
    const-string v2, "s_"

    .line 481
    const-string v3, "u_"

    .line 482
    const-string v4, "c_"

    .line 483
    iget-object v5, p0, Lcom/Localytics/android/LocalyticsSession;->uploadComplete:Ljava/lang/Runnable;

    .line 478
    invoke-direct/range {v0 .. v5}, Lcom/Localytics/android/UploaderThread;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 485
    .local v0, "uploader":Lcom/Localytics/android/UploaderThread;
    invoke-virtual {v0}, Lcom/Localytics/android/UploaderThread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 487
    .end local v0    # "uploader":Lcom/Localytics/android/UploaderThread;
    .end local v1    # "fp":Ljava/io/File;
    :catch_0
    move-exception v2

    move-object v6, v2

    .line 489
    .local v6, "e":Ljava/lang/Exception;
    const-string v2, "Localytics_Session"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Swallowing exception: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
