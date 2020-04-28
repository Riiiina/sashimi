.class public final Lcom/Localytics/android/DatapointHelper;
.super Ljava/lang/Object;
.source "DatapointHelper.java"


# static fields
.field public static final ACTION_CREATE:Ljava/lang/String; = "  a: c\n"

.field public static final ACTION_OPTIN:Ljava/lang/String; = "  a: optin\n"

.field public static final ACTION_UPDATE:Ljava/lang/String; = "  a: u\n"

.field public static final CONTROLLER_EVENT:Ljava/lang/String; = "- c: ev\n"

.field public static final CONTROLLER_OPT:Ljava/lang/String; = "- c: optin\n"

.field public static final CONTROLLER_SESSION:Ljava/lang/String; = "- c: se\n"

.field public static final OBJECT_EVENT_DP:Ljava/lang/String; = "  ev:\n"

.field public static final OBJECT_OPT:Ljava/lang/String; = "  optin:\n"

.field public static final OBJECT_SESSION_DP:Ljava/lang/String; = "  se:\n"

.field public static final PARAM_APP_UUID:Ljava/lang/String; = "au"

.field public static final PARAM_APP_VERSION:Ljava/lang/String; = "av"

.field public static final PARAM_CLIENT_CLOSED_TIME:Ljava/lang/String; = "ctc"

.field public static final PARAM_CLIENT_TIME:Ljava/lang/String; = "ct"

.field public static final PARAM_DATA_CONNECTION:Ljava/lang/String; = "dac"

.field public static final PARAM_DEVICE_COUNTRY:Ljava/lang/String; = "dc"

.field public static final PARAM_DEVICE_MAKE:Ljava/lang/String; = "dma"

.field public static final PARAM_DEVICE_MODEL:Ljava/lang/String; = "dmo"

.field public static final PARAM_DEVICE_PLATFORM:Ljava/lang/String; = "dp"

.field public static final PARAM_DEVICE_UUID:Ljava/lang/String; = "du"

.field public static final PARAM_EVENT_NAME:Ljava/lang/String; = "n"

.field public static final PARAM_LIBRARY_VERSION:Ljava/lang/String; = "lv"

.field public static final PARAM_LOCALE:Ljava/lang/String; = "dl"

.field public static final PARAM_LOCALE_COUNTRY:Ljava/lang/String; = "dlc"

.field public static final PARAM_LOCALE_LANGUAGE:Ljava/lang/String; = "dll"

.field public static final PARAM_LOCATION_LAT:Ljava/lang/String; = "lat"

.field public static final PARAM_LOCATION_LNG:Ljava/lang/String; = "lng"

.field public static final PARAM_LOCATION_SOURCE:Ljava/lang/String; = "ls"

.field public static final PARAM_NETWORK_CARRIER:Ljava/lang/String; = "nca"

.field public static final PARAM_NETWORK_COUNTRY:Ljava/lang/String; = "nc"

.field public static final PARAM_NETWORK_MCC:Ljava/lang/String; = "mcc"

.field public static final PARAM_NETWORK_MNC:Ljava/lang/String; = "mnc"

.field public static final PARAM_OPT_VALUE:Ljava/lang/String; = "optin"

.field public static final PARAM_OS_VERSION:Ljava/lang/String; = "dov"

.field public static final PARAM_SESSION_UUID:Ljava/lang/String; = "su"

.field public static final PARAM_UUID:Ljava/lang/String; = "u"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatControllerValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "formattedString":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    if-nez p1, :cond_0

    .line 156
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    :goto_0
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 160
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static formatDatapoint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "paramName"    # Ljava/lang/String;
    .param p1, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/Localytics/android/DatapointHelper;->formatControllerValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 253
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-object v2

    .line 255
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 257
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "unknown"

    goto :goto_0
.end method

.method public static getGlobalDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "appContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "android_id"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 190
    .local v4, "systemId":Ljava/lang/String;
    if-nez v4, :cond_0

    move-object v5, v7

    .line 205
    :goto_0
    return-object v5

    .line 197
    :cond_0
    :try_start_0
    const-string v5, "SHA-256"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 198
    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 199
    .local v0, "digest":[B
    new-instance v2, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v2, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 200
    .local v2, "hashedNumber":Ljava/math/BigInteger;
    new-instance v5, Ljava/lang/String;

    const/16 v6, 0x10

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v0    # "digest":[B
    .end local v2    # "hashedNumber":Ljava/math/BigInteger;
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v5, v7

    .line 205
    goto :goto_0
.end method

.method public static getNetworkType(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/String;
    .locals 3
    .param p0, "appContext"    # Landroid/content/Context;
    .param p1, "telephonyManager"    # Landroid/telephony/TelephonyManager;

    .prologue
    const-string v2, "wifi"

    .line 219
    const-string v1, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 224
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    const-string v1, "wifi"

    move-object v1, v2

    .line 239
    :goto_0
    return-object v1

    .line 229
    :catch_0
    move-exception v1

    .line 231
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 239
    const-string v1, "none"

    goto :goto_0

    .line 233
    :pswitch_0
    const-string v1, "edge"

    goto :goto_0

    .line 234
    :pswitch_1
    const-string v1, "GPRS"

    goto :goto_0

    .line 235
    :pswitch_2
    const-string v1, "UMTS"

    goto :goto_0

    .line 236
    :pswitch_3
    const-string v1, "unknown"

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getTimeAsDatetime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 267
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss-00:00"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 269
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
