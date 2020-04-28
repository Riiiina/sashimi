.class public Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
.super Ljava/lang/Object;
.source "IHRURLEncoder.java"


# instance fields
.field mData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    .line 5
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    return-void
.end method

.method public append(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 14
    const/16 v1, 0x20

    const/16 v2, 0x5f

    :try_start_0
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 16
    const-string v1, "currentNetwork"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 17
    const-string v1, "\'"

    const-string v2, ""

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "encoding":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x26

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    .line 26
    .end local v0    # "encoding":Ljava/lang/String;
    :goto_1
    return-void

    .line 19
    :cond_1
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .restart local v0    # "encoding":Ljava/lang/String;
    goto :goto_0

    .line 25
    .end local v0    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->mData:Ljava/lang/String;

    return-object v0
.end method
