.class public Lcom/xxx/yyy/BBBB$LogRedirectHandler;
.super Lorg/apache/http/impl/client/DefaultRedirectHandler;
.source "BBBB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xxx/yyy/BBBB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogRedirectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxx/yyy/BBBB;


# direct methods
.method public constructor <init>(Lcom/xxx/yyy/BBBB;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/xxx/yyy/BBBB$LogRedirectHandler;->this$0:Lcom/xxx/yyy/BBBB;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultRedirectHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;
    .locals 3
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .param p2, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ProtocolException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultRedirectHandler;->getLocationURI(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)Ljava/net/URI;

    move-result-object v0

    .line 551
    .local v0, "uri":Ljava/net/URI;
    iget-object v1, p0, Lcom/xxx/yyy/BBBB$LogRedirectHandler;->this$0:Lcom/xxx/yyy/BBBB;

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xxx/yyy/BBBB;->access$0(Lcom/xxx/yyy/BBBB;Ljava/lang/String;)V

    .line 552
    return-object v0
.end method
