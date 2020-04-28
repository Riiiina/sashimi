.class public Lcom/appspot/swisscodemonkeys/client/RatingsService;
.super Ljava/lang/Object;
.source "RatingsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/client/RatingsService$Callback;
    }
.end annotation


# static fields
.field private static final API_VERSION:Ljava/lang/String; = "12"

.field public static final CACHED_HOST:Ljava/lang/String; = "http://profilecache.appspot.com"

.field public static final CACHED_URL:Ljava/lang/String; = "http://profilecache.appspot.com/cache"

.field public static final HOST:Ljava/lang/String; = "http://androidpickup.appspot.com"

.field public static final URL:Ljava/lang/String; = "http://androidpickup.appspot.com/api"


# instance fields
.field private final appName:Ljava/lang/String;

.field private final detector:Lcmn/BrowserDetect;

.field private final props:Lcmn/AppProperties;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcmn/AppProperties;Lcmn/BrowserDetect;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "props"    # Lcmn/AppProperties;
    .param p3, "detector"    # Lcmn/BrowserDetect;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->appName:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    .line 62
    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->detector:Lcmn/BrowserDetect;

    .line 63
    return-void
.end method

.method private getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "props"    # Lcmn/AppProperties;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcmn/AppProperties;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p2}, Lcmn/AppProperties;->getArgumentMap()Ljava/util/Map;

    move-result-object v0

    .line 67
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "action"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v1, "ag"

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->detector:Lcmn/BrowserDetect;

    invoke-virtual {v2}, Lcmn/BrowserDetect;->getAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v1, "v"

    const-string v2, "12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v1, "app"

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->appName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object v0
.end method

.method private loadProfile(Ljava/util/Map;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 308
    const/4 v2, 0x0

    new-array v2, v2, [B

    const-string v3, "http://androidpickup.appspot.com/api"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, p1, v3, v4}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v1

    .line 309
    .local v1, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v2, v1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-nez v2, :cond_0

    move-object v2, v5

    .line 318
    :goto_0
    return-object v2

    .line 313
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, v1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 314
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v2, v5

    .line 318
    goto :goto_0
.end method

.method private parseListsFromResult(Lcom/appspot/swisscodemonkeys/client/BlurbCollection;Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;)Z
    .locals 13
    .param p1, "collection"    # Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
    .param p2, "result"    # Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    .prologue
    const/4 v12, 0x0

    .line 170
    iget-boolean v8, p2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-nez v8, :cond_0

    .line 171
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v1

    .line 172
    .local v1, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    const-string v8, "Couldn\'t connect, do you have internet connectivity?"

    invoke-virtual {v1, v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v1, v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setGenerationTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 174
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v8

    invoke-virtual {p1, v8}, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->addMessage(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 175
    const-string v8, ""

    const-string v9, "no results"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v12

    .line 207
    .end local v1    # "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    :goto_0
    return v8

    .line 179
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    move-result-object v5

    .line 180
    .local v5, "mergedList":Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    const/4 v2, 0x0

    .line 181
    .local v2, "index":I
    :goto_1
    iget-object v8, p2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    array-length v8, v8

    if-lt v2, v8, :cond_1

    .line 195
    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v8

    invoke-virtual {v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getBlurbListList()Ljava/util/List;

    move-result-object v4

    .line 197
    .local v4, "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_4

    .line 207
    const/4 v8, 0x1

    goto :goto_0

    .line 183
    .end local v4    # "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;"
    :cond_1
    iget-object v8, p2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    aget-byte v6, v8, v2

    .line 184
    .local v6, "size":I
    if-gez v6, :cond_2

    .line 185
    add-int/lit16 v6, v6, 0x100

    .line 186
    :cond_2
    iget-object v8, p2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    add-int/lit8 v9, v2, 0x1

    aget-byte v8, v8, v9

    mul-int/lit16 v8, v8, 0x100

    add-int/2addr v6, v8

    .line 187
    if-gez v6, :cond_3

    .line 188
    const v8, 0x8000

    add-int/2addr v6, v8

    .line 190
    :cond_3
    new-instance v8, Ljava/io/ByteArrayInputStream;

    .line 191
    iget-object v9, p2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    add-int/lit8 v10, v2, 0x2

    .line 190
    invoke-direct {v8, v9, v10, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-static {v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response;

    move-result-object v7

    .line 192
    .local v7, "tempList":Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    invoke-virtual {v7}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response;->getBlurbListList()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;->addAllBlurbList(Ljava/lang/Iterable;)Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;

    .line 193
    add-int/lit8 v8, v6, 0x2

    add-int/2addr v2, v8

    goto :goto_1

    .line 197
    .end local v6    # "size":I
    .end local v7    # "tempList":Lcom/appspot/swisscodemonkeys/client/Ratings$Response;
    .restart local v4    # "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;"
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    .line 200
    .local v0, "b":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    invoke-virtual {p1, v0}, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->put(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 202
    .end local v0    # "b":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .end local v2    # "index":I
    .end local v4    # "list":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;>;"
    .end local v5    # "mergedList":Lcom/appspot/swisscodemonkeys/client/Ratings$Response$Builder;
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 204
    .local v3, "ioException":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v12

    .line 205
    goto :goto_0
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "parentBlurb"    # Ljava/lang/String;

    .prologue
    .line 211
    const-string v4, "add"

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v4, v5}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v2

    .line 212
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "parent"

    invoke-interface {v2, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 215
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    invoke-virtual {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 216
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setGenerationTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 217
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toByteArray()[B

    move-result-object v4

    const-string v5, "http://androidpickup.appspot.com/api"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v6}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v5, v6}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v3

    .line 220
    .local v3, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v4, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-nez v4, :cond_0

    .line 221
    const/4 v4, 0x0

    .line 230
    :goto_0
    return-object v4

    .line 223
    :cond_0
    iget-object v4, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    array-length v4, v4

    if-eqz v4, :cond_1

    .line 225
    :try_start_0
    iget-object v4, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getContents()Ljava/lang/String;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 226
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 227
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    const-string v4, ""

    goto :goto_0

    .line 230
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :cond_1
    const-string v4, ""

    goto :goto_0
.end method

.method public addThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "parent"    # Ljava/lang/String;

    .prologue
    .line 235
    const-string v5, "addthread"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v5, v6}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v3

    .line 236
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "parent"

    invoke-interface {v3, v5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v1, v5

    .line 240
    .local v1, "generationTime":I
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v2

    .line 242
    .local v2, "listBuilder":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 243
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;
    invoke-virtual {v0, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 244
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setGenerationTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 245
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->addList(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .line 247
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0, p2}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 249
    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setGenerationTime(I)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    .line 250
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->addList(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    .line 252
    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->toByteArray()[B

    move-result-object v5

    const-string v6, "http://androidpickup.appspot.com/api"

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v7}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v3, v6, v7}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v4

    .line 253
    .local v4, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v5, v4, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    return v5
.end method

.method public checkTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    .locals 7
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v0

    .line 464
    .local v0, "c_title":Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    const-string v4, "checktitle"

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v4, v5}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v2

    .line 465
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->toByteArray()[B

    move-result-object v4

    const-string v5, "http://androidpickup.appspot.com/api"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v6}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v5, v6}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v3

    .line 467
    .local v3, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    :try_start_0
    iget-boolean v4, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-eqz v4, :cond_0

    .line 468
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 473
    :goto_0
    return-object v4

    .line 470
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 471
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 473
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setOk(Z)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v4

    const-string v5, "Network error! Please try again."

    invoke-virtual {v4, v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->setError(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$ChannelTitle;

    move-result-object v4

    goto :goto_0
.end method

.method public deleteBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Z
    .locals 5
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 456
    const-string v2, "delete"

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v0

    .line 457
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/4 v2, 0x0

    new-array v2, v2, [B

    const-string v3, "http://androidpickup.appspot.com/api"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v1

    .line 459
    .local v1, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v2, v1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    return v2
.end method

.method public flagMessage(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)Z
    .locals 5
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "reason"    # I

    .prologue
    .line 440
    const-string v2, "flag"

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v0

    .line 441
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "reason"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    const/4 v2, 0x0

    new-array v2, v2, [B

    const-string v3, "http://androidpickup.appspot.com/api"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v1

    .line 444
    .local v1, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v2, v1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    return v2
.end method

.method public getCategories(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    .locals 7
    .param p1, "categoryName"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string v4, "get_categories"

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v4, v5}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v2

    .line 423
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "parent"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const/4 v4, 0x0

    new-array v4, v4, [B

    const-string v5, "http://androidpickup.appspot.com/api"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v6}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v5, v6}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v3

    .line 426
    .local v3, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-eqz v4, :cond_0

    .line 428
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 429
    iget-object v5, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    .line 428
    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;->parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "list":Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    move-object v4, v1

    .line 436
    .end local v1    # "list":Lcom/appspot/swisscodemonkeys/client/Ratings$CategoryList;
    :goto_0
    return-object v4

    .line 432
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 433
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getChatInfo()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 121
    const-string v5, "chat_fetch"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v5, v6}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v3

    .line 123
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v5, v7, [B

    const-string v6, "http://androidpickup.appspot.com/api"

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v7}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v3, v6, v7}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v4

    .line 124
    .local v4, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v5, v4, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-nez v5, :cond_0

    move-object v5, v8

    .line 134
    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    :goto_0
    return-object v5

    .line 127
    .restart local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    :cond_0
    :try_start_0
    iget-object v5, v4, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/ProtoIO;->extractMessages([B)Ljava/util/List;

    move-result-object v1

    .line 128
    .local v1, "byteList":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v0

    .line 129
    .local v0, "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasBrowserReplacement()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 130
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->detector:Lcmn/BrowserDetect;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getBrowserReplacement()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcmn/BrowserDetect;->replaceAgent(Ljava/lang/String;)V

    .line 131
    :cond_1
    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    check-cast p0, [B

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    goto :goto_0

    .line 132
    .end local v0    # "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .end local v1    # "byteList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 133
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v8

    .line 134
    goto :goto_0
.end method

.method public getDetails(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    .locals 6
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 348
    const-string v3, "get_details"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v1

    .line 349
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "id"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const/4 v3, 0x0

    new-array v3, v3, [B

    const-string v4, "http://androidpickup.appspot.com/api"

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v5}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v2

    .line 351
    .local v2, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v3, v2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    array-length v3, v3

    if-lez v3, :cond_0

    .line 353
    :try_start_0
    new-instance v3, Ljava/io/ByteArrayInputStream;

    iget-object v4, v2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;->parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbDetails;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 358
    :goto_0
    return-object v3

    .line 354
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 358
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getFavorites(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 7
    .param p1, "next"    # Ljava/lang/String;

    .prologue
    .line 390
    const-string v4, "getfavorites"

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v4, v5}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v2

    .line 391
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "next"

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    const/4 v4, 0x0

    new-array v4, v4, [B

    const-string v5, "http://androidpickup.appspot.com/api"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v6}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v2, v5, v6}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v3

    .line 394
    .local v3, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-eqz v4, :cond_0

    .line 396
    :try_start_0
    new-instance v4, Ljava/io/ByteArrayInputStream;

    iget-object v5, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->parseFrom(Ljava/io/InputStream;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "list":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    move-object v4, v1

    .line 402
    .end local v1    # "list":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    :goto_0
    return-object v4

    .line 398
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 402
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getMessages(ILjava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 8
    .param p1, "cat"    # I
    .param p2, "next"    # Ljava/lang/String;
    .param p3, "parentBlurb"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 102
    const-string v4, "getmsg"

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v4, v5}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v1

    .line 103
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "next"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v4, "cat"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v4, "parent"

    invoke-interface {v1, v4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const/4 v4, 0x0

    new-array v4, v4, [B

    const-string v5, "http://androidpickup.appspot.com/api"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v6}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v1, v5, v6}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v3

    .line 108
    .local v3, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-nez v4, :cond_1

    :cond_0
    move-object v4, v7

    .line 116
    :goto_0
    return-object v4

    .line 111
    :cond_1
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;-><init>()V

    .line 112
    .local v0, "c":Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
    invoke-direct {p0, v0, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->parseListsFromResult(Lcom/appspot/swisscodemonkeys/client/BlurbCollection;Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;)Z

    move-result v2

    .line 113
    .local v2, "r":Z
    if-nez v2, :cond_2

    move-object v4, v7

    .line 114
    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {v0, p1}, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->get(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v4

    goto :goto_0
.end method

.method public getMessagesFromUser(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 8
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "next"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 370
    const-string v4, "getmsg_user"

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v4, v5}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v1

    .line 371
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "next"

    invoke-interface {v1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    if-eqz p1, :cond_0

    .line 373
    const-string v4, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_0
    const/4 v4, 0x0

    new-array v4, v4, [B

    const-string v5, "http://androidpickup.appspot.com/api"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v6}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v1, v5, v6}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v3

    .line 377
    .local v3, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    if-eqz v3, :cond_2

    iget-boolean v4, v3, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-eqz v4, :cond_2

    .line 378
    new-instance v0, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;-><init>()V

    .line 379
    .local v0, "c":Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
    invoke-direct {p0, v0, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->parseListsFromResult(Lcom/appspot/swisscodemonkeys/client/BlurbCollection;Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;)Z

    move-result v2

    .line 380
    .local v2, "r":Z
    if-nez v2, :cond_1

    move-object v4, v7

    .line 385
    .end local v0    # "c":Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
    .end local v2    # "r":Z
    :goto_0
    return-object v4

    .line 383
    .restart local v0    # "c":Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
    .restart local v2    # "r":Z
    :cond_1
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Lcom/appspot/swisscodemonkeys/client/BlurbCollection;->get(I)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v4

    goto :goto_0

    .end local v0    # "c":Lcom/appspot/swisscodemonkeys/client/BlurbCollection;
    .end local v2    # "r":Z
    :cond_2
    move-object v4, v7

    .line 385
    goto :goto_0
.end method

.method public getSingleMessage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 7
    .param p1, "blurbId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 155
    const-string v3, "get_message"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v1

    .line 156
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "id"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Getting "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v3, 0x0

    new-array v3, v3, [B

    const-string v4, "http://androidpickup.appspot.com/api"

    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v5}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v2

    .line 160
    .local v2, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v3, v2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-nez v3, :cond_0

    move-object v3, v6

    .line 165
    :goto_0
    return-object v3

    .line 163
    :cond_0
    :try_start_0
    iget-object v3, v2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 164
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, "e":Ljava/lang/Exception;
    move-object v3, v6

    .line 165
    goto :goto_0
.end method

.method public loadBulkUsers(ILjava/util/List;Z)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 9
    .param p1, "userId"    # I
    .param p3, "isOwn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;",
            ">;Z)",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;"
        }
    .end annotation

    .prologue
    .local p2, "extra_profiles":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 286
    const-string v5, "bulkusers"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v5, v6}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v3

    .line 287
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "id"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v5, "own"

    if-eqz p3, :cond_0

    const-string v6, "1"

    :goto_0
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    new-array v5, v7, [B

    const-string v6, "http://profilecache.appspot.com/cache"

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v7}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v3, v6, v7}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v4

    .line 290
    .local v4, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v5, v4, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-nez v5, :cond_1

    move-object v5, v8

    .line 304
    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    :goto_1
    return-object v5

    .line 288
    .end local v4    # "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    .restart local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    :cond_0
    const-string v6, "0"

    goto :goto_0

    .line 294
    .restart local v4    # "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    :cond_1
    :try_start_0
    iget-object v5, v4, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/ProtoIO;->extractMessages([B)Ljava/util/List;

    move-result-object v0

    .line 296
    .local v0, "byteLists":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x1

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 299
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v5

    goto :goto_1

    .line 297
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 300
    .end local v0    # "byteLists":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "i":I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v8

    .line 304
    goto :goto_1
.end method

.method public loadChatConfig(Ljava/util/List;)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;",
            ">;)",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;"
        }
    .end annotation

    .prologue
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;>;"
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 322
    const-string v5, "get_chat_config"

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v5, v6}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v3

    .line 323
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v5, v7, [B

    const-string v6, "http://androidpickup.appspot.com/api"

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v7}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v3, v6, v7}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v4

    .line 324
    .local v4, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v5, v4, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    if-nez v5, :cond_0

    move-object v5, v8

    .line 338
    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    :goto_0
    return-object v5

    .line 328
    .restart local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    :cond_0
    :try_start_0
    iget-object v5, v4, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/ProtoIO;->extractMessages([B)Ljava/util/List;

    move-result-object v0

    .line 330
    .local v0, "byteLists":Ljava/util/List;, "Ljava/util/List<[B>;"
    const/4 v2, 0x1

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .local v2, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lt v2, v5, :cond_1

    .line 333
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$ChatConfig;

    move-result-object v5

    goto :goto_0

    .line 331
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-static {p0}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 334
    .end local v0    # "byteLists":Ljava/util/List;, "Ljava/util/List<[B>;"
    .end local v2    # "i":I
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 336
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v8

    .line 338
    goto :goto_0
.end method

.method public loadProfile(I)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 280
    const-string v1, "load_profile"

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v0

    .line 281
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "user_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    invoke-direct {p0, v0}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->loadProfile(Ljava/util/Map;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    return-object v1
.end method

.method public loadProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 3
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 272
    const-string v1, "load_profile"

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v0

    .line 273
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 274
    const-string v1, "id"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_0
    invoke-direct {p0, v0}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->loadProfile(Ljava/util/Map;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    return-object v1
.end method

.method public retrieveAppThreads(Ljava/util/List;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;)",
            "Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;"
        }
    .end annotation

    .prologue
    .local p1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v10, 0x0

    .line 77
    const-string v7, "appthreads"

    iget-object v8, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v7, v8}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v5

    .line 78
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/appspot/swisscodemonkeys/client/Ratings$App;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 91
    :try_start_0
    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/client/ProtoIO;->writeMessagesProto(Ljava/util/List;)[B

    move-result-object v7

    const-string v8, "http://androidpickup.appspot.com/api"

    iget-object v9, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v9}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v5, v8, v9}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v6

    .line 92
    .local v6, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    if-eqz v6, :cond_0

    iget-boolean v7, v6, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_4

    :cond_0
    move-object v7, v10

    .line 97
    .end local v6    # "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    :goto_1
    return-object v7

    .line 80
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 81
    .local v3, "info":Landroid/content/pm/PackageInfo;
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$App;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    move-result-object v2

    .line 82
    .local v2, "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setPackage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    .line 83
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v8, :cond_2

    const-string v8, "<null>"

    :goto_2
    invoke-virtual {v2, v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setTitle(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    .line 85
    iget v8, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->setVersionId(I)Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;

    .line 86
    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$App;

    move-result-object v0

    .line 87
    .local v0, "app":Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 84
    .end local v0    # "app":Lcom/appspot/swisscodemonkeys/client/Ratings$App;
    :cond_2
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-nez v8, :cond_3

    const-string v8, "<null>"

    goto :goto_2

    :cond_3
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    goto :goto_2

    .line 95
    .end local v2    # "builder":Lcom/appspot/swisscodemonkeys/client/Ratings$App$Builder;
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    .restart local v6    # "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    :cond_4
    :try_start_1
    iget-object v7, v6, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    invoke-static {v7}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v7

    goto :goto_1

    .line 96
    .end local v6    # "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, "ioEx":Ljava/io/IOException;
    move-object v7, v10

    .line 97
    goto :goto_1
.end method

.method public saveProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)Z
    .locals 5
    .param p1, "profile"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 342
    const-string v2, "save_profile"

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v0

    .line 343
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->toByteArray()[B

    move-result-object v2

    const-string v3, "http://androidpickup.appspot.com/api"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v1

    .line 344
    .local v1, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v2, v1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    return v2
.end method

.method public setAllowCommenting(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)Z
    .locals 5
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "isChecked"    # Z

    .prologue
    .line 477
    const-string v2, "set_commenting"

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v0

    .line 478
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "allow"

    if-eqz p2, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const/4 v2, 0x0

    new-array v2, v2, [B

    const-string v3, "http://androidpickup.appspot.com/api"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v1

    .line 481
    .local v1, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v2, v1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    return v2

    .line 478
    .end local v1    # "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method public updateFavorites(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)Z
    .locals 5
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "favorited"    # Z

    .prologue
    .line 362
    const-string v2, "favorite"

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v0

    .line 363
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v2, "favorited"

    if-eqz p2, :cond_0

    const-string v3, "1"

    :goto_0
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const/4 v2, 0x0

    new-array v2, v2, [B

    const-string v3, "http://androidpickup.appspot.com/api"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v1

    .line 366
    .local v1, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v2, v1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    return v2

    .line 364
    .end local v1    # "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    :cond_0
    const-string v3, "0"

    goto :goto_0
.end method

.method public uploadImage(Lcom/appspot/swisscodemonkeys/client/Ratings$Image;)Z
    .locals 6
    .param p1, "image"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Image;

    .prologue
    .line 448
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Image;->toByteArray()[B

    move-result-object v0

    .line 449
    .local v0, "data":[B
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " uploading image "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v3, "upload_image"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v1

    .line 451
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "http://androidpickup.appspot.com/api"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v3, v4}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v2

    .line 452
    .local v2, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v3, v2, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    return v3
.end method

.method public voteMessage(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)Z
    .locals 5
    .param p1, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p2, "rating"    # I

    .prologue
    .line 257
    const-string v2, "vote"

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-direct {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getDefaultMap(Ljava/lang/String;Lcmn/AppProperties;)Ljava/util/Map;

    move-result-object v0

    .line 258
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "rating"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v2, "id"

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const/4 v2, 0x0

    new-array v2, v2, [B

    const-string v3, "http://androidpickup.appspot.com/api"

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/client/RatingsService;->props:Lcmn/AppProperties;

    invoke-virtual {v4}, Lcmn/AppProperties;->newIdAsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/appspot/swisscodemonkeys/client/AppEngineComm;->postMessage([BLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;

    move-result-object v1

    .line 261
    .local v1, "result":Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
    iget-boolean v2, v1, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    return v2
.end method
