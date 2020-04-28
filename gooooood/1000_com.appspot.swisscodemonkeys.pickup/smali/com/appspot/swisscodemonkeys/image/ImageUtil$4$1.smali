.class Lcom/appspot/swisscodemonkeys/image/ImageUtil$4$1;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Lcmn/Callable1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcmn/Callable1",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4$1;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4$1;->call(Ljava/lang/String;)V

    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4$1;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;->access$0(Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;)Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->cropBitmap(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 140
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
