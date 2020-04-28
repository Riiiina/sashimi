.class Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;

.field private final synthetic val$bitmap:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

.field private final synthetic val$resetSupp:Z


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;->val$bitmap:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    iput-boolean p3, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;->val$resetSupp:Z

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;->val$bitmap:Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;

    iget-boolean v2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase$1;->val$resetSupp:Z

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/crop/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/appspot/swisscodemonkeys/pickup/crop/RotateBitmap;Z)V

    .line 164
    return-void
.end method
