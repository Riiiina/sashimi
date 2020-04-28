.class Lcom/appspot/swisscodemonkeys/image/Downloader$1;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/Downloader;->downloadObject(Ljava/lang/String;Lcom/appspot/swisscodemonkeys/image/Downloader$Request;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/Downloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$1;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$1;->val$url:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$1;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$1;->this$0:Lcom/appspot/swisscodemonkeys/image/Downloader;

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/image/Downloader$1;->val$url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/appspot/swisscodemonkeys/image/Downloader;->download(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/appspot/swisscodemonkeys/image/Downloader;->dataLoaded(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
