.class Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$2;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$2;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;

    .line 423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient$2;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;->access$0(Lcom/appspot/swisscodemonkeys/image/ImageUtil$ConnectionClient;)Landroid/media/MediaScannerConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaScannerConnection;->disconnect()V

    .line 426
    return-void
.end method
