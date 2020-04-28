.class Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;
.super Ljava/lang/Thread;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageUtil;->saveProfileBitmap(Landroid/graphics/Bitmap;Lcmn/Callable1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

.field private final synthetic val$photo:Landroid/graphics/Bitmap;

.field private final synthetic val$urlWhenFinished:Lcmn/Callable1;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;Landroid/graphics/Bitmap;Lcmn/Callable1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;->val$photo:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;->val$urlWhenFinished:Lcmn/Callable1;

    .line 123
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;->val$photo:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$3;->val$urlWhenFinished:Lcmn/Callable1;

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->saveProfileImage(Landroid/graphics/Bitmap;Lcmn/Callable1;)V

    .line 126
    return-void
.end method
