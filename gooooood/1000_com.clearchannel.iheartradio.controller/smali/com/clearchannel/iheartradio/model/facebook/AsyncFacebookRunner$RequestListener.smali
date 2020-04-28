.class public interface abstract Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner$RequestListener;
.super Ljava/lang/Object;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/facebook/AsyncFacebookRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RequestListener"
.end annotation


# virtual methods
.method public abstract onComplete(Ljava/lang/String;)V
.end method

.method public abstract onFacebookError(Lcom/clearchannel/iheartradio/model/facebook/FacebookError;)V
.end method

.method public abstract onFileNotFoundException(Ljava/io/FileNotFoundException;)V
.end method

.method public abstract onIOException(Ljava/io/IOException;)V
.end method

.method public abstract onMalformedURLException(Ljava/net/MalformedURLException;)V
.end method
