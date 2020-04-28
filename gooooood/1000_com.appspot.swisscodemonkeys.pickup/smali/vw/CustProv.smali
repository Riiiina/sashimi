.class public Lvw/CustProv;
.super Lvw/ViewProvider;
.source "CustProv.java"


# static fields
.field public static final BROWSER_STRING_RE:Ljava/lang/String; = "%\\(ua\\)s"

.field public static final ID_STRING_RE:Ljava/lang/String; = "%\\(id\\)s"

.field public static final IP_STRING:Ljava/lang/String; = "%(ip)s"

.field public static final IP_STRING_RE:Ljava/lang/String; = "%\\(ip\\)s"


# instance fields
.field private ageArg:Ljava/lang/String;

.field private background:I

.field private endpoint:Ljava/lang/String;

.field private foreground:I

.field private genderArg:Ljava/lang/String;

.field private needsIp:Z

.field private ninePatchURL:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1}, Lvw/ViewProvider;-><init>(Landroid/content/Context;)V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lvw/CustProv;->endpoint:Ljava/lang/String;

    .line 38
    const/high16 v0, -0x1000000

    iput v0, p0, Lvw/CustProv;->foreground:I

    const/high16 v0, 0x30000000

    iput v0, p0, Lvw/CustProv;->background:I

    .line 39
    iput-object v1, p0, Lvw/CustProv;->ninePatchURL:Ljava/lang/String;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvw/CustProv;->needsIp:Z

    .line 41
    iput-object v1, p0, Lvw/CustProv;->ageArg:Ljava/lang/String;

    iput-object v1, p0, Lvw/CustProv;->genderArg:Ljava/lang/String;

    .line 45
    invoke-static {}, Lcmn/SCMApp;->warnWhenNotUIThread()V

    .line 46
    return-void
.end method


# virtual methods
.method protected configure(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0, p1}, Lvw/ViewProvider;->configure(Lorg/json/JSONObject;)V

    .line 51
    const-string v0, "endpoint"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvw/CustProv;->endpoint:Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lvw/CustProv;->endpoint:Ljava/lang/String;

    const-string v1, "%(ip)s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lvw/CustProv;->needsIp:Z

    .line 53
    const-string v0, "ninepatch"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvw/CustProv;->ninePatchURL:Ljava/lang/String;

    .line 54
    const-string v0, "a"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvw/CustProv;->ageArg:Ljava/lang/String;

    .line 55
    const-string v0, "g"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvw/CustProv;->genderArg:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
    .locals 14
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    .line 68
    const/4 v5, 0x0

    .line 69
    .local v5, "ip":Ljava/lang/String;
    :try_start_0
    iget-boolean v11, p0, Lvw/CustProv;->needsIp:Z

    if-eqz v11, :cond_0

    invoke-static {}, Lvw/CustProv;->getIp()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 70
    const/4 v11, 0x0

    .line 123
    :goto_0
    return-object v11

    .line 73
    :cond_0
    iget-object v10, p0, Lvw/CustProv;->endpoint:Ljava/lang/String;

    .line 74
    .local v10, "urlString":Ljava/lang/String;
    iget-boolean v11, p0, Lvw/CustProv;->needsIp:Z

    if-eqz v11, :cond_1

    .line 75
    const-string v11, "%\\(ip\\)s"

    const-string v12, "UTF-8"

    invoke-static {v5, v12}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 77
    :cond_1
    const-string v11, "%\\(id\\)s"

    .line 78
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "custom"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 77
    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 79
    const-string v11, "%\\(ua\\)s"

    iget-object v12, p0, Lvw/CustProv;->context:Landroid/content/Context;

    invoke-static {v12}, Lvw/CustProv;->getBrowserDetect(Landroid/content/Context;)Lcmn/BrowserDetect;

    move-result-object v12

    .line 80
    invoke-virtual {v12}, Lcmn/BrowserDetect;->getAgent()Ljava/lang/String;

    move-result-object v12

    const-string v13, "UTF-8"

    .line 79
    invoke-static {v12, v13}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 82
    invoke-static {}, Lvw/CustProv;->getAge()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    iget-object v11, p0, Lvw/CustProv;->ageArg:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 83
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v12, "&"

    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lvw/CustProv;->ageArg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 84
    invoke-static {}, Lvw/CustProv;->getAge()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 83
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 86
    :cond_2
    invoke-static {}, Lvw/CustProv;->getGender()Ljava/lang/Boolean;

    move-result-object v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lvw/CustProv;->genderArg:Ljava/lang/String;

    if-eqz v11, :cond_3

    .line 87
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "?"

    invoke-virtual {v10, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    const-string v12, "&"

    :goto_2
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lvw/CustProv;->genderArg:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 88
    invoke-static {}, Lvw/CustProv;->getGender()Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_7

    const-string v12, "male"

    :goto_3
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 87
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 91
    :cond_3
    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    .local v2, "contents":Ljava/lang/String;
    :try_start_1
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 96
    .local v9, "url":Ljava/net/URL;
    invoke-virtual {v9}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 97
    .local v4, "in":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 98
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 100
    .local v0, "br":Ljava/io/BufferedReader;
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v11, 0x400

    invoke-direct {v1, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 101
    .local v1, "buffer":Ljava/lang/StringBuffer;
    :goto_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-nez v7, :cond_8

    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 110
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :goto_5
    :try_start_2
    iget-object v11, p0, Lvw/CustProv;->ninePatchURL:Ljava/lang/String;

    if-eqz v11, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    const-string v12, "<img"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 111
    :cond_4
    const/4 v8, 0x0

    .line 118
    .local v8, "ninepatch":Landroid/graphics/drawable/Drawable;
    :goto_6
    iget-object v11, p0, Lvw/CustProv;->context:Landroid/content/Context;

    iget v12, p0, Lvw/CustProv;->foreground:I

    .line 119
    iget v13, p0, Lvw/CustProv;->background:I

    .line 118
    invoke-static {v11, v2, v8, v12, v13}, Lvw/Util;->createViewResultFromHTML(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Lvw/SCMView$ViewResult;

    move-result-object v11

    goto/16 :goto_0

    .line 83
    .end local v2    # "contents":Ljava/lang/String;
    .end local v8    # "ninepatch":Landroid/graphics/drawable/Drawable;
    :cond_5
    const-string v12, "?"

    goto/16 :goto_1

    .line 87
    :cond_6
    const-string v12, "?"

    goto :goto_2

    .line 88
    :cond_7
    const-string v12, "female"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 102
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "buffer":Ljava/lang/StringBuffer;
    .restart local v2    # "contents":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/InputStream;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v9    # "url":Ljava/net/URL;
    :cond_8
    :try_start_3
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    .line 105
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v1    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    .end local v9    # "url":Ljava/net/URL;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 106
    .local v3, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5

    .line 120
    .end local v2    # "contents":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v10    # "urlString":Ljava/lang/String;
    :catch_1
    move-exception v11

    move-object v3, v11

    .line 121
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 113
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "contents":Ljava/lang/String;
    .restart local v10    # "urlString":Ljava/lang/String;
    :cond_9
    :try_start_5
    iget-object v11, p0, Lvw/CustProv;->ninePatchURL:Ljava/lang/String;

    invoke-static {v11}, Lvw/Util;->getDrawableFromLocation(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v8

    .restart local v8    # "ninepatch":Landroid/graphics/drawable/Drawable;
    goto :goto_6
.end method

.method public needsIP()Z
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lvw/CustProv;->needsIp:Z

    return v0
.end method

.method public setPreferredColors(II)V
    .locals 0
    .param p1, "foreground"    # I
    .param p2, "background"    # I

    .prologue
    .line 60
    iput p1, p0, Lvw/CustProv;->foreground:I

    .line 61
    iput p2, p0, Lvw/CustProv;->background:I

    .line 62
    return-void
.end method
