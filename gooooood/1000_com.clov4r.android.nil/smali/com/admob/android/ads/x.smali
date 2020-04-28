.class public final Lcom/admob/android/ads/x;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/admob/android/ads/x;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/admob/android/ads/ab;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;)Lcom/admob/android/ads/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;)Lcom/admob/android/ads/ab;
    .locals 7

    const/4 v5, 0x0

    const/16 v4, 0x1388

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;ILjava/util/Map;Ljava/lang/String;)Lcom/admob/android/ads/ab;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;I)Lcom/admob/android/ads/ab;
    .locals 7

    const/4 v1, 0x0

    const/16 v4, 0x1388

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, v1

    move-object v6, v1

    invoke-static/range {v0 .. v6}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;ILjava/util/Map;Ljava/lang/String;)Lcom/admob/android/ads/ab;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/ab;->a(I)V

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;ILjava/util/Map;Ljava/lang/String;)Lcom/admob/android/ads/ab;
    .locals 8

    new-instance v0, Lcom/admob/android/ads/n;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/admob/android/ads/n;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;ILjava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/admob/android/ads/m;)Lcom/admob/android/ads/ab;
    .locals 7

    const/4 v5, 0x0

    const/16 v4, 0x1388

    if-nez p3, :cond_0

    move-object v6, v5

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    invoke-static/range {v0 .. v6}, Lcom/admob/android/ads/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admob/android/ads/m;ILjava/util/Map;Ljava/lang/String;)Lcom/admob/android/ads/ab;

    move-result-object v0

    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/ab;->a(Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_0
.end method
