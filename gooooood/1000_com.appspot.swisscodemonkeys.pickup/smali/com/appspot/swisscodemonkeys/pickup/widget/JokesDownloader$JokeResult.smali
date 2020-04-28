.class public Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
.super Ljava/lang/Object;
.source "JokesDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JokeResult"
.end annotation


# instance fields
.field public error:Z

.field public jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "err"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-boolean p2, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->error:Z

    .line 53
    if-eqz p2, :cond_1

    .line 54
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->message:Ljava/lang/String;

    .line 76
    :cond_0
    return-void

    .line 56
    :cond_1
    const-string v5, ""

    invoke-static {v5, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    new-array v5, v5, [Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    iput-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    .line 59
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 60
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 61
    .local v4, "obj":Lorg/json/JSONObject;
    new-instance v3, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    invoke-direct {v3}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;-><init>()V

    .line 62
    .local v3, "joke":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;
    const-string v5, "msg"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->message:Ljava/lang/String;

    .line 63
    const-string v5, "id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->id:Ljava/lang/String;

    .line 64
    const-string v5, "blurb"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 66
    :try_start_0
    const-string v5, "blurb"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcmn/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v5

    iput-object v5, v3, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 73
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    aput-object v3, v5, v2

    .line 59
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 68
    .local v1, "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    invoke-virtual {v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->printStackTrace()V

    goto :goto_1

    .line 69
    .end local v1    # "e":Lcom/google/protobuf/InvalidProtocolBufferException;
    :catch_1
    move-exception v5

    move-object v1, v5

    .line 70
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public static fromString(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    :cond_0
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    const-string v2, "No jokes loaded, do you have internet connection?"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;-><init>(Ljava/lang/String;Z)V

    .line 107
    :goto_0
    return-object v1

    .line 105
    :cond_1
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 107
    .local v0, "jsonEx":Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 9

    .prologue
    .line 80
    iget-boolean v4, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->error:Z

    if-nez v4, :cond_2

    .line 82
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 83
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;->jokes:[Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v5, :cond_0

    .line 92
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .line 97
    .end local v0    # "array":Lorg/json/JSONArray;
    :goto_1
    return-object v4

    .line 83
    .restart local v0    # "array":Lorg/json/JSONArray;
    :cond_0
    aget-object v2, v4, v6

    .line 84
    .local v2, "j":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v7, "id"

    iget-object v8, v2, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->id:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v7, "msg"

    iget-object v8, v2, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->message:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    iget-object v7, v2, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    if-eqz v7, :cond_1

    .line 88
    const-string v7, "blurb"

    iget-object v8, v2, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->toByteArray()[B

    move-result-object v8

    invoke-static {v8}, Lcmn/Base64;->encode([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "j":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 94
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    const-string v4, ""

    goto :goto_1
.end method
