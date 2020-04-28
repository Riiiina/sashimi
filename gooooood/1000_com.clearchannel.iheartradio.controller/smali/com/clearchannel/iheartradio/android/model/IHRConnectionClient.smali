.class public Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;
.super Landroid/content/BroadcastReceiver;
.source "IHRConnectionClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private mConnection:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "inMethod"    # Ljava/lang/String;
    .param p2, "inMessage"    # Ljava/lang/String;

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "==> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    return-void
.end method

.method public emptyParcel()Landroid/os/Parcel;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 257
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 262
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "inName"    # Landroid/content/ComponentName;
    .param p2, "inBinder"    # Landroid/os/IBinder;

    .prologue
    .line 246
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    .line 247
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "inName"    # Landroid/content/ComponentName;

    .prologue
    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    .line 252
    :try_start_0
    sget-object v0, Lcom/clearchannel/iheartradio/controller/iheartradio;->g:Lcom/clearchannel/iheartradio/controller/iheartradio;

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/controller/iheartradio;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 252
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public parcel(F)Landroid/os/Parcel;
    .locals 1
    .param p1, "inValue"    # F

    .prologue
    .line 50
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "result":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    return-object v0
.end method

.method public parcel(I)Landroid/os/Parcel;
    .locals 1
    .param p1, "inValue"    # I

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "result":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    return-object v0
.end method

.method public parcel(J)Landroid/os/Parcel;
    .locals 1
    .param p1, "inValue"    # J

    .prologue
    .line 46
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "result":Landroid/os/Parcel;
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return-object v0
.end method

.method public parcel(Ljava/lang/String;)Landroid/os/Parcel;
    .locals 1
    .param p1, "inString"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "result":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-object v0
.end method

.method public parcel(Ljava/util/List;)Landroid/os/Parcel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Parcel;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "inValue":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "result":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-object v0
.end method

.method public parcel(Z)Landroid/os/Parcel;
    .locals 2
    .param p1, "inValue"    # Z

    .prologue
    .line 54
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "result":Landroid/os/Parcel;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public parcel([Ljava/lang/String;)Landroid/os/Parcel;
    .locals 1
    .param p1, "inValue"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .local v0, "result":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-object v0
.end method

.method public serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;
    .locals 3
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, "result":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 71
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 78
    :cond_0
    return-object v0
.end method

.method public serviceFetchBytes(ILandroid/os/Parcel;)[B
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;

    .prologue
    .line 117
    const/4 v0, 0x0

    check-cast v0, [B

    .line 119
    .local v0, "result":[B
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 121
    :cond_0
    :goto_0
    return-object v0

    .line 119
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serviceFetchFeaturedContent(ILandroid/os/Parcel;)Ljava/util/List;
    .locals 4
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;>;"
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 186
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 192
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public serviceFetchFloat(ILandroid/os/Parcel;)F
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "result":F
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->readFloat()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 129
    :cond_0
    :goto_0
    return v0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serviceFetchHashtable(ILandroid/os/Parcel;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParcel"    # Landroid/os/Parcel;

    .prologue
    .line 227
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetchMapInto(ILandroid/os/Parcel;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    return-object p0
.end method

.method public serviceFetchInteger(ILandroid/os/Parcel;)I
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;

    .prologue
    .line 133
    const/4 v0, 0x0

    .line 135
    .local v0, "result":I
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 137
    :cond_0
    :goto_0
    return v0

    .line 135
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serviceFetchIntegers(ILandroid/os/Parcel;)[I
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;

    .prologue
    .line 141
    const/4 v0, 0x0

    check-cast v0, [I

    .line 143
    .local v0, "result":[I
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 143
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serviceFetchList(ILandroid/os/Parcel;)Ljava/util/List;
    .locals 3
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, "result":Ljava/util/List;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 169
    :cond_0
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serviceFetchListInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .param p3, "inType"    # Ljava/util/Collection;

    .prologue
    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetchList(ILandroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    .line 207
    .local v0, "list":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p3, 0x0

    .line 210
    :goto_0
    return-object p3

    .line 208
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public serviceFetchMap(ILandroid/os/Parcel;)Ljava/util/Map;
    .locals 3
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 159
    .local v0, "result":Ljava/util/Map;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 161
    :cond_0
    :goto_0
    return-object v0

    .line 159
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serviceFetchMapInto(ILandroid/os/Parcel;Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .param p3, "inType"    # Ljava/util/Map;

    .prologue
    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetchMap(ILandroid/os/Parcel;)Ljava/util/Map;

    move-result-object v0

    .line 216
    .local v0, "map":Ljava/util/Map;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p3, 0x0

    .line 219
    :goto_0
    return-object p3

    .line 217
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public serviceFetchPreference(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 3
    .param p1, "inKey"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v0, 0x7

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v1

    new-instance v2, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    return-object p0
.end method

.method public serviceFetchString(ILandroid/os/Parcel;)Ljava/lang/String;
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serviceFetchString(ILandroid/os/Parcel;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .param p3, "inMissing"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetchString(ILandroid/os/Parcel;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serviceFetchStrings(ILandroid/os/Parcel;)Ljava/util/ArrayList;
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 177
    :cond_0
    :goto_0
    return-object v0

    .line 175
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public serviceFetchStringsInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .param p3, "inType"    # Ljava/util/Collection;

    .prologue
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetchStrings(ILandroid/os/Parcel;)Ljava/util/ArrayList;

    move-result-object v0

    .line 198
    .local v0, "list":Ljava/util/List;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 p3, 0x0

    .line 201
    :goto_0
    return-object p3

    .line 199
    :cond_1
    invoke-interface {p3, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public serviceFetchValue(ILandroid/os/Parcel;)Ljava/lang/Object;
    .locals 2
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetch(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public serviceFetchVector(ILandroid/os/Parcel;)Lcom/clearchannel/iheartradio/android/model/IHRVector;
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParcel"    # Landroid/os/Parcel;

    .prologue
    .line 223
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceFetchListInto(ILandroid/os/Parcel;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;
    check-cast p0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    return-object p0
.end method

.method public serviceTell(I)V
    .locals 1
    .param p1, "inCode"    # I

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->emptyParcel()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(IF)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParameter"    # F

    .prologue
    .line 94
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel(F)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(II)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParameter"    # I

    .prologue
    .line 93
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel(I)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(IJ)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParameter"    # J

    .prologue
    .line 95
    invoke-virtual {p0, p2, p3}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel(J)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(ILandroid/os/Parcel;)V
    .locals 4
    .param p1, "inCode"    # I
    .param p2, "inSend"    # Landroid/os/Parcel;

    .prologue
    .line 82
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->mConnection:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, p1, p2, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public serviceTell(ILjava/lang/String;)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParameter"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(ILjava/util/List;)V
    .locals 1
    .param p1, "inCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "inParameter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel(Ljava/util/List;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(IZ)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParameter"    # Z

    .prologue
    .line 96
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel(Z)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceTell(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "inCode"    # I
    .param p2, "inParameter"    # [Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0, p2}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel([Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    return-void
.end method

.method public serviceWritePreference(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRVector;)V
    .locals 2
    .param p1, "inKey"    # Ljava/lang/String;
    .param p2, "inValue"    # Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->parcel(Ljava/lang/String;)Landroid/os/Parcel;

    move-result-object v0

    .line 238
    .local v0, "send":Landroid/os/Parcel;
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 240
    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/clearchannel/iheartradio/android/model/IHRConnectionClient;->serviceTell(ILandroid/os/Parcel;)V

    .line 241
    return-void
.end method
