.class final Lcom/admob/android/ads/b;
.super Ljava/lang/Object;
.source "AdRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/admob/android/ads/b$1;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:J

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "http://r.admob.com/ad_source.php"

    sput-object v0, Lcom/admob/android/ads/b;->a:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/admob/android/ads/b;->d:Ljava/lang/String;

    .line 71
    sput-boolean v1, Lcom/admob/android/ads/b;->e:Z

    .line 72
    sput-boolean v1, Lcom/admob/android/ads/b;->f:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    return-void
.end method

.method static a(Lcom/admob/android/ads/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILcom/admob/android/ads/k;ILcom/admob/android/ads/j$b;Lcom/admob/android/ads/InterstitialAd$Event;Lcom/admob/android/ads/AdView$f;)Lcom/admob/android/ads/j;
    .locals 14

    .prologue
    .line 147
    const-string v3, "android.permission.INTERNET"

    invoke-virtual {p1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 149
    const-string v3, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v3}, Lcom/admob/android/ads/AdManager;->clientError(Ljava/lang/String;)V

    .line 154
    :cond_0
    sget-boolean v3, Lcom/admob/android/ads/b;->f:Z

    if-nez v3, :cond_4

    .line 156
    const/4 v3, 0x1

    sput-boolean v3, Lcom/admob/android/ads/b;->f:Z

    .line 157
    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/admob/android/ads/AdMobActivity;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v6, 0x10000

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    const-string v5, "com.admob.android.ads.AdMobActivity"

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_1
    const-string v3, "AdMobSDK"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "AdMobSDK"

    const-string v4, "could not find com.admob.android.ads.AdMobActivity, please make sure it is registered in AndroidManifest.xml"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    :cond_3
    :goto_0
    sput-boolean v3, Lcom/admob/android/ads/b;->e:Z

    .line 167
    :cond_4
    sget-boolean v3, Lcom/admob/android/ads/b;->e:Z

    if-nez v3, :cond_f

    .line 170
    const-string p0, "AdMobSDK"

    const/4 p1, 0x6

    invoke-static {p0, p1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 171
    const-string p0, "AdMobSDK"

    const-string p1, "com.admob.android.ads.AdMobActivity must be registered in your AndroidManifest.xml file."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_5
    const/4 p0, 0x0

    .line 258
    :cond_6
    :goto_1
    return-object p0

    .line 157
    :cond_7
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->theme:I

    const v6, 0x1030007

    if-eq v5, v6, :cond_9

    const-string v3, "AdMobSDK"

    const/4 v5, 0x6

    invoke-static {v3, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "AdMobSDK"

    const-string v5, "The activity Theme for com.admob.android.ads.AdMobActivity is not @android:style/Theme.NoTitleBar.Fullscreen, please change in AndroidManifest.xml"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 v3, 0x0

    :cond_9
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_b

    const-string v3, "AdMobSDK"

    const/4 v5, 0x6

    invoke-static {v3, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "AdMobSDK"

    const-string v5, "The android:configChanges value of the com.admob.android.ads.AdMobActivity must include orientation"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v3, 0x0

    :cond_b
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v5, v5, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_d

    const-string v3, "AdMobSDK"

    const/4 v5, 0x6

    invoke-static {v3, v5}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "AdMobSDK"

    const-string v5, "The android:configChanges value of the com.admob.android.ads.AdMobActivity must include keyboard"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v3, 0x0

    :cond_d
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v4, v4, 0x20

    if-nez v4, :cond_3

    const-string v3, "AdMobSDK"

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "AdMobSDK"

    const-string v4, "The android:configChanges value of the com.admob.android.ads.AdMobActivity must include keyboardHidden"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    const/4 v3, 0x0

    goto :goto_0

    .line 176
    :cond_f
    invoke-static {p1}, Lcom/admob/android/ads/t;->a(Landroid/content/Context;)V

    .line 179
    const/4 v11, 0x0

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    .line 184
    invoke-static/range {v3 .. v9}, Lcom/admob/android/ads/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/admob/android/ads/j$b;Lcom/admob/android/ads/InterstitialAd$Event;Lcom/admob/android/ads/AdView$f;)Ljava/lang/String;

    move-result-object v9

    .line 186
    sget-object v3, Lcom/admob/android/ads/b;->a:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0xbb8

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/admob/android/ads/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/h;ILjava/util/Map;Ljava/lang/String;)Lcom/admob/android/ads/e;

    move-result-object p2

    .line 195
    const-string p3, "AdMobSDK"

    const/16 p8, 0x3

    move-object/from16 v0, p3

    move/from16 v1, p8

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_10

    .line 197
    const-string p3, "AdMobSDK"

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct/range {p8 .. p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "Requesting an ad with POST params:  "

    move-object/from16 v0, p8

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    move-object/from16 v0, p8

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p8

    invoke-virtual/range {p8 .. p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_10
    const/16 p3, 0x0

    .line 204
    invoke-interface/range {p2 .. p2}, Lcom/admob/android/ads/e;->d()Z

    move-result p8

    .line 205
    if-eqz p8, :cond_14

    .line 208
    invoke-interface/range {p2 .. p2}, Lcom/admob/android/ads/e;->a()[B

    move-result-object p2

    .line 209
    new-instance p3, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    move-object/from16 p2, p3

    .line 212
    :goto_2
    if-eqz p8, :cond_13

    .line 215
    const-string p3, "AdMobSDK"

    const/16 p8, 0x3

    move-object/from16 v0, p3

    move/from16 v1, p8

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_11

    .line 217
    const-string p3, "AdMobSDK"

    const-string p8, "Ad response: "

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_11
    const-string p3, ""

    invoke-virtual/range {p2 .. p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_13

    .line 223
    new-instance p3, Lorg/json/JSONTokener;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 227
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 228
    const-string p3, "AdMobSDK"

    const/16 p8, 0x3

    move-object/from16 v0, p3

    move/from16 v1, p8

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_12

    .line 232
    const-string p3, "AdMobSDK"

    const/16 p8, 0x4

    move-object v0, v5

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p8

    move-object/from16 v0, p3

    move-object/from16 v1, p8

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move-object v3, p0

    move-object v4, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p9

    .line 236
    invoke-static/range {v3 .. v10}, Lcom/admob/android/ads/j;->a(Lcom/admob/android/ads/m;Landroid/content/Context;Lorg/json/JSONObject;IIILcom/admob/android/ads/k;Lcom/admob/android/ads/j$b;)Lcom/admob/android/ads/j;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 248
    :goto_3
    const-string p1, "AdMobSDK"

    const/16 p2, 0x4

    invoke-static/range {p1 .. p2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 250
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v12

    .line 252
    if-nez p0, :cond_6

    .line 254
    const-string p3, "AdMobSDK"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct/range {p4 .. p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "No fill.  Server replied that no ads are available ("

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    move-object/from16 v0, p4

    move-wide v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms)"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p3

    move-object v1, p1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 239
    :catch_0
    move-exception p0

    .line 241
    const-string p1, "AdMobSDK"

    const/16 p3, 0x5

    move-object v0, p1

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 242
    const-string p1, "AdMobSDK"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Problem decoding ad response.  Cannot display ad: \""

    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\""

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v0, p1

    move-object/from16 v1, p2

    move-object v2, p0

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    move-object p0, v11

    goto :goto_3

    :cond_14
    move-object/from16 p2, p3

    goto/16 :goto_2
.end method

.method static a(Lcom/admob/android/ads/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/InterstitialAd$Event;)Lcom/admob/android/ads/j;
    .locals 12

    .prologue
    .line 117
    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    sget-object v9, Lcom/admob/android/ads/j$b;->b:Lcom/admob/android/ads/j$b;

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v10, p4

    invoke-static/range {v0 .. v11}, Lcom/admob/android/ads/b;->a(Lcom/admob/android/ads/m;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIILcom/admob/android/ads/k;ILcom/admob/android/ads/j$b;Lcom/admob/android/ads/InterstitialAd$Event;Lcom/admob/android/ads/AdView$f;)Lcom/admob/android/ads/j;

    move-result-object p0

    return-object p0
.end method

.method static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 553
    sget-object v0, Lcom/admob/android/ads/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 315
    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/admob/android/ads/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/admob/android/ads/j$b;Lcom/admob/android/ads/InterstitialAd$Event;Lcom/admob/android/ads/AdView$f;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/admob/android/ads/j$b;Lcom/admob/android/ads/InterstitialAd$Event;Lcom/admob/android/ads/AdView$f;)Ljava/lang/String;
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    const/high16 v6, 0x10000

    .line 336
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    const-string v0, "AdMobSDK"

    const-string v1, "Ad request:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_0
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->a(Landroid/content/Context;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 349
    const-string v3, "z"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-long v4, v1, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-long/2addr v1, v7

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 352
    if-nez p4, :cond_14

    sget-object v1, Lcom/admob/android/ads/j$b;->c:Lcom/admob/android/ads/j$b;

    :goto_0
    const-string v2, "ad_type"

    invoke-virtual {v1}, Lcom/admob/android/ads/j$b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/admob/android/ads/b$1;->a:[I

    invoke-virtual {v1}, Lcom/admob/android/ads/j$b;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 355
    :cond_1
    :goto_1
    const-string v1, "rt"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v1, 0x0

    .line 360
    sget-object v2, Lcom/admob/android/ads/j$b;->b:Lcom/admob/android/ads/j$b;

    if-ne p4, v2, :cond_2

    .line 361
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getInterstitialPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 364
    :cond_2
    if-nez v1, :cond_3

    .line 365
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 367
    :cond_3
    if-nez v1, :cond_4

    .line 369
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Publisher ID is not set!  To serve ads you must set your publisher ID assigned from www.admob.com.  Either add it to AndroidManifest.xml under the <application> tag or call AdManager.setPublisherId()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :pswitch_0
    if-eqz p5, :cond_1

    const-string v1, "event"

    invoke-virtual {p5}, Lcom/admob/android/ads/InterstitialAd$Event;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    if-eqz p6, :cond_1

    const-string v1, "dim"

    invoke-virtual {p6}, Lcom/admob/android/ads/AdView$f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 373
    :cond_4
    const-string v2, "s"

    invoke-static {v0, v2, v1}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const-string v1, "l"

    invoke-static {}, Lcom/admob/android/ads/t;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v1, "f"

    const-string v2, "jsonp"

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v1, "client_sdk"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v1, "ex"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string v1, "v"

    const-string v2, "20101109-ANDROID-3312276cc1406347"

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v1, "isu"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string v1, "so"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    if-lez p3, :cond_5

    .line 397
    const-string v1, "screen_width"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_5
    const-string v1, "d[coord]"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "d[coord_timestamp]"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "d[pc]"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->getPostalCode()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "d[dob]"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "d[gender]"

    invoke-static {}, Lcom/admob/android/ads/AdManager;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v1, "k"

    invoke-static {v0, v1, p1}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v1, "search"

    invoke-static {v0, v1, p2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "density"

    invoke-static {}, Lcom/admob/android/ads/k;->d()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->isTestDevice(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 425
    const-string v1, "AdMobSDK"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 427
    const-string v1, "AdMobSDK"

    const-string v2, "Making ad request in test mode"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_6
    const-string v1, "m"

    const-string v2, "test"

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {}, Lcom/admob/android/ads/AdManager;->getTestAction()Ljava/lang/String;

    move-result-object v1

    .line 432
    sget-object v2, Lcom/admob/android/ads/j$b;->b:Lcom/admob/android/ads/j$b;

    if-ne p4, v2, :cond_7

    sget-object v2, Lcom/admob/android/ads/j$a;->a:Lcom/admob/android/ads/j$a;

    invoke-virtual {v2}, Lcom/admob/android/ads/j$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 433
    const-string v1, "video_int"

    .line 436
    :cond_7
    const-string v2, "test_action"

    invoke-static {v0, v2, v1}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :cond_8
    sget-object v1, Lcom/admob/android/ads/b;->d:Ljava/lang/String;

    if-nez v1, :cond_11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "geo:0,0?q=donuts"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    const-string v3, "m"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "market://search?q=pname:com.admob"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_d

    :cond_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_c

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string v3, "a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    const-string v5, "tel://6509313940"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_10

    :cond_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_f

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/admob/android/ads/b;->d:Ljava/lang/String;

    :cond_11
    sget-object v1, Lcom/admob/android/ads/b;->d:Ljava/lang/String;

    .line 442
    if-eqz v1, :cond_12

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_12

    .line 444
    const-string v2, "ic"

    invoke-static {v0, v2, v1}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_12
    new-instance v1, Lcom/admob/android/ads/v;

    invoke-direct {v1, p0}, Lcom/admob/android/ads/v;-><init>(Landroid/content/Context;)V

    .line 449
    const-string v2, "audio"

    invoke-static {v1}, Lcom/admob/android/ads/AdManager;->a(Lcom/admob/android/ads/v;)Lcom/admob/android/ads/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admob/android/ads/a;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    sget v1, Lcom/admob/android/ads/b;->b:I

    add-int/lit8 v1, v1, 0x1

    .line 455
    sput v1, Lcom/admob/android/ads/b;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/admob/android/ads/b;->c:J

    .line 460
    const-string v1, "pub_data[identifier]"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getApplicationPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "pub_data[version]"

    invoke-static {p0}, Lcom/admob/android/ads/AdManager;->getApplicationVersion(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 466
    :cond_13
    const-string v1, "stats[reqs]"

    sget v2, Lcom/admob/android/ads/b;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/admob/android/ads/b;->c:J

    sub-long/2addr v1, v3

    div-long/2addr v1, v7

    .line 470
    const-string v3, "stats[time]"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/admob/android/ads/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_14
    move-object v1, p4

    goto/16 :goto_0

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 533
    if-nez p0, :cond_1

    .line 535
    const-string v0, "http://r.admob.com/ad_source.php"

    .line 538
    :goto_0
    const-string v1, "http://r.admob.com/ad_source.php"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 540
    const-string v1, "AdMobSDK"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    const-string v1, "AdMobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NOT USING PRODUCTION AD SERVER!  Using "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_0
    sput-object v0, Lcom/admob/android/ads/b;->a:Ljava/lang/String;

    .line 546
    return-void

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 504
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 508
    :try_start_0
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v0, "AdMobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const-string v0, "AdMobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 523
    :cond_0
    :goto_0
    return-void

    .line 516
    :catch_0
    move-exception v0

    .line 518
    const-string v1, "AdMobSDK"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/admob/android/ads/InterstitialAd$c;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    const-string v1, "AdMobSDK"

    const-string v2, "UTF-8 encoding is not supported on this device.  Ad requests are impossible."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
