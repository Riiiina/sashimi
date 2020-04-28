.class Lcom/clov4r/android/nil/ej;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;

.field private b:I


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 1

    iput-object p1, p0, Lcom/clov4r/android/nil/ej;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/clov4r/android/nil/ej;->b:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iput p2, p0, Lcom/clov4r/android/nil/ej;->b:I

    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/ej;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->d(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/ej;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/CMPlayer;->e(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/ej;->a:Lcom/clov4r/android/nil/CMPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/clov4r/android/nil/CMPlayer;->p:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/ej;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->f(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/ej;->a:Lcom/clov4r/android/nil/CMPlayer;

    iput-boolean v3, v0, Lcom/clov4r/android/nil/CMPlayer;->p:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/ej;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget v1, p0, Lcom/clov4r/android/nil/ej;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/CMPlayer;->b(J)V

    iput v3, p0, Lcom/clov4r/android/nil/ej;->b:I

    iget-object v0, p0, Lcom/clov4r/android/nil/ej;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/CMPlayer;->f(Lcom/clov4r/android/nil/CMPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
