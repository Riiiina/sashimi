.class public Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;
.super Ljava/io/OutputStream;
.source "IHRCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRCacheOutputStream"
.end annotation


# instance fields
.field _vector:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/IHRCache;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRCache;Lcom/clearchannel/iheartradio/android/model/IHRVector;)V
    .locals 0
    .param p2, "inVector"    # Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;->this$0:Lcom/clearchannel/iheartradio/model/IHRCache;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;->_vector:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1230
    const/4 v1, 0x1

    new-array v0, v1, [B

    .local v0, "buffer":[B
    const/4 v1, 0x0

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;->write([B)V

    return-void
.end method

.method public write([B)V
    .locals 1
    .param p1, "inBuffer"    # [B

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;->_vector:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "inBuffer"    # [B
    .param p2, "inOffset"    # I
    .param p3, "inLength"    # I

    .prologue
    .line 1234
    new-array v0, p3, [B

    .local v0, "buffer":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/model/IHRCache$IHRCacheOutputStream;->write([B)V

    return-void
.end method
