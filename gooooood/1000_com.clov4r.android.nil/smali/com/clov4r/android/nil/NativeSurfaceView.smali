.class public Lcom/clov4r/android/nil/NativeSurfaceView;
.super Landroid/view/SurfaceView;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field a:Landroid/view/SurfaceHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/clov4r/android/nil/NativeSurfaceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p1}, Lcom/clov4r/android/nil/NativeSurfaceView;->a(Landroid/content/Context;)V

    return-void
.end method

.method static native getVideoHeight()I
.end method

.method static native getVideoWidth()I
.end method

.method static native setSurfaceChanged(Landroid/view/Surface;II)V
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/NativeSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/NativeSurfaceView;->a:Landroid/view/SurfaceHolder;

    iget-object v0, p0, Lcom/clov4r/android/nil/NativeSurfaceView;->a:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v0, p3, p4}, Lcom/clov4r/android/nil/NativeSurfaceView;->setSurfaceChanged(Landroid/view/Surface;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
