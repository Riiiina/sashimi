.class public Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader;
.super Ljava/lang/Object;
.source "JokesDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;,
        Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    }
.end annotation


# static fields
.field private static final BASE_URL:Ljava/lang/String; = "http://jokes.topstuff.net/"

.field private static final FETCH_URL:Ljava/lang/String; = "http://jokes.topstuff.net/api/jokewidget/"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCategories()Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .locals 1

    .prologue
    .line 126
    const-string v0, "http://jokes.topstuff.net/api/jokewidget/json_cats"

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader;->getResult(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    move-result-object v0

    return-object v0
.end method

.method public static getJokes(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .locals 2
    .param p0, "category"    # Ljava/lang/String;

    .prologue
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://jokes.topstuff.net/api/jokewidget/json_jokes?parent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader;->getResult(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    move-result-object v0

    return-object v0
.end method

.method private static getResult(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 131
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 132
    .local v0, "conn":Ljava/net/URLConnection;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 133
    .local v3, "in":Ljava/io/BufferedReader;
    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v3    # "in":Ljava/io/BufferedReader;
    :goto_0
    return-object v4

    .line 134
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 137
    :try_start_1
    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;

    .line 138
    const-string v5, "There was an error fetching data. Are you connected to the internet?"

    .line 139
    const/4 v6, 0x1

    .line 137
    invoke-direct {v4, v5, v6}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$JokeResult;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v4

    move-object v2, v4

    .line 141
    .local v2, "e2":Ljava/lang/Exception;
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static getURL(Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;)Ljava/lang/String;
    .locals 2
    .param p0, "joke"    # Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://jokes.topstuff.net/joke/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
