.class Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;
.super Ljava/lang/Thread;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageUtil;->saveBitmapAndCrop(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

.field private final synthetic val$photo:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;->val$photo:Landroid/graphics/Bitmap;

    .line 131
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;)Lcom/appspot/swisscodemonkeys/image/ImageUtil;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;->val$photo:Landroid/graphics/Bitmap;

    new-instance v2, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4$1;

    invoke-direct {v2, p0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil$4$1;-><init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil$4;)V

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->saveProfileImage(Landroid/graphics/Bitmap;Lcmn/Callable1;)V

    .line 147
    return-void
.end method
