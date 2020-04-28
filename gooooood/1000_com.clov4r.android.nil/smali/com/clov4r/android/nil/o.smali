.class Lcom/clov4r/android/nil/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/ct;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/ct;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/o;->a:Lcom/clov4r/android/nil/ct;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const v0, 0x3fc66666    # 1.55f

    mul-float/2addr v0, p1

    const v1, 0x3f8ccccd    # 1.1f

    sub-float/2addr v0, v1

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v0

    sub-float v0, v1, v0

    return v0
.end method
