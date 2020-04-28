.class Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/image/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionClient"
.end annotation


# instance fields
.field private file:Ljava/lang/String;

.field private mediaScannerConnection:Landroid/media/MediaScannerConnection;

.field private mimeType:Ljava/lang/String;

.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;


# direct methods
.method public constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "file"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 408
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    .line 405
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->file:Ljava/lang/String;

    .line 407
    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->mimeType:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)Landroid/media/MediaScannerConnection;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->file:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->mimeType:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onMediaScannerConnected()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$1;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$1;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 420
    return-void
.end method

.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$2;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$2;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 428
    return-void
.end method

.method public setMediaScannerConnection(Landroid/media/MediaScannerConnection;)V
    .locals 0
    .param p1, "mediaScannerConnection"    # Landroid/media/MediaScannerConnection;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->mediaScannerConnection:Landroid/media/MediaScannerConnection;

    .line 412
    return-void
.end method
