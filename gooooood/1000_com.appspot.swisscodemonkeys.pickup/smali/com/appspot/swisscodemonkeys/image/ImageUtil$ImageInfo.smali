.class public Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;
.super Ljava/lang/Object;
.source "ImageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/image/ImageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageInfo"
.end annotation


# instance fields
.field public final bitmap:Landroid/graphics/Bitmap;

.field public final filename:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;->intent:Landroid/content/Intent;

    .line 67
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    .line 68
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$ImageInfo;->filename:Ljava/lang/String;

    .line 69
    return-void
.end method
