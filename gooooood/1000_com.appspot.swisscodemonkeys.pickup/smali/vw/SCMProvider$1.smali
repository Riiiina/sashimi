.class Lvw/SCMProvider$1;
.super Ljava/lang/Object;
.source "SCMProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/SCMProvider;->ping(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvw/SCMProvider;

.field private final synthetic val$pingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvw/SCMProvider;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMProvider$1;->this$0:Lvw/SCMProvider;

    iput-object p2, p0, Lvw/SCMProvider$1;->val$pingUrl:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lvw/SCMProvider$1;->val$pingUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 69
    .local v2, "imgUrl":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 70
    .local v0, "conn":Ljava/net/URLConnection;
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 71
    const/16 v3, 0x2710

    invoke-virtual {v0, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 72
    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v0    # "conn":Ljava/net/URLConnection;
    .end local v2    # "imgUrl":Ljava/net/URL;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 74
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
