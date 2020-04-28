.class public Lcom/clearchannel/iheartradio/android/model/IHRPlatform;
.super Ljava/lang/Object;
.source "IHRPlatform.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SHA1Digest([BII)[B
    .locals 3
    .param p0, "inBytes"    # [B
    .param p1, "inOffset"    # I
    .param p2, "inLength"    # I

    .prologue
    .line 93
    const/4 v1, 0x0

    check-cast v1, [B

    .line 96
    .local v1, "result":[B
    :try_start_0
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 98
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 100
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 103
    .end local v0    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static SHA1String([BII)Ljava/lang/String;
    .locals 5
    .param p0, "inBytes"    # [B
    .param p1, "inOffset"    # I
    .param p2, "inLength"    # I

    .prologue
    .line 77
    const/4 v2, 0x0

    .line 80
    .local v2, "result":Ljava/lang/String;
    :try_start_0
    const-string v3, "SHA1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 83
    .local v1, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 85
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 86
    .local v0, "buffer":[B
    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->toHexString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    .end local v0    # "buffer":[B
    .end local v1    # "digest":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 87
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static context()Landroid/content/Context;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    return-object v0
.end method

.method public static getCurrentNetworkName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "&"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->telephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static isBeingDebugged()Z
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static isDebug()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 45
    sget-object v3, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0}, Landroid/content/pm/ApplicationInfo;-><init>()V

    .line 48
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    sget-object v3, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/iheartradio;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 53
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 54
    const/4 v3, 0x1

    .line 56
    :goto_0
    return v3

    .line 49
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 50
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    move v3, v5

    .line 51
    goto :goto_0

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    move v3, v5

    .line 56
    goto :goto_0
.end method

.method public static isMainThread()Z
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSimulator()Z
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    return v0
.end method

.method public static manager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "inService"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->context()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parseXML(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 5
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;

    .prologue
    .line 107
    const/4 v3, 0x1

    .line 111
    .local v3, "result":Z
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 112
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 114
    .local v2, "parser":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2, p0, p1}, Ljavax/xml/parsers/SAXParser;->parse(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    .end local v2    # "parser":Ljavax/xml/parsers/SAXParser;
    :goto_0
    return v3

    .line 115
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static parseXML([BLorg/xml/sax/helpers/DefaultHandler;)Z
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "handler"    # Lorg/xml/sax/helpers/DefaultHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->parseXML(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z

    move-result v0

    goto :goto_0
.end method

.method public static screenHeight()I
    .locals 1

    .prologue
    .line 37
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->windowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    return v0
.end method

.method public static screenOrientation()I
    .locals 1

    .prologue
    .line 38
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->windowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    return v0
.end method

.method public static screenWidth()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->windowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    return v0
.end method

.method public static telephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 29
    const-string v0, "phone"

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->manager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "inBuffer"    # [B
    .param p1, "inOffset"    # I
    .param p2, "inLength"    # I

    .prologue
    const/4 v6, 0x2

    .line 67
    const-string v1, ""

    .local v1, "result":Ljava/lang/String;
    :goto_0
    if-lt p1, p2, :cond_0

    .line 73
    return-object v1

    .line 68
    :cond_0
    aget-byte v3, p0, p1

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "string":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 70
    .local v0, "length":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eq v0, v6, :cond_2

    if-le v0, v6, :cond_1

    sub-int v4, v0, v6

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 70
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "0"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v2

    goto :goto_1
.end method

.method public static windowManager()Landroid/view/WindowManager;
    .locals 1

    .prologue
    .line 28
    const-string v0, "window"

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->manager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    return-object v0
.end method
