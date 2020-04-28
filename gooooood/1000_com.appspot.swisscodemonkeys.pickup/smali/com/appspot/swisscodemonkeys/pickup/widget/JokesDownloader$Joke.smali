.class public Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;
.super Ljava/lang/Object;
.source "JokesDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Joke"
.end annotation


# instance fields
.field public blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field public id:Ljava/lang/String;

.field public message:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 38
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 39
    .local v0, "index":I
    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;

    invoke-direct {v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;-><init>()V

    .line 40
    .local v1, "joke":Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->id:Ljava/lang/String;

    .line 41
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->message:Ljava/lang/String;

    .line 42
    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/JokesDownloader$Joke;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
