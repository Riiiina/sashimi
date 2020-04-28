.class Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->onMediaScannerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$1;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 417
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$1;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->access$0(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$1;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->access$1(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$1;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->access$2(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    return-void
.end method
