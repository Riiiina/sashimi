.class Lcom/clov4r/android/nil/bu;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/SystemPlayer;

.field private b:I


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/SystemPlayer;)V
    .locals 1

    iput-object p1, p0, Lcom/clov4r/android/nil/bu;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/clov4r/android/nil/bu;->b:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    iput p2, p0, Lcom/clov4r/android/nil/bu;->b:I

    mul-int/lit16 v0, p2, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/clov4r/android/nil/CMPlayer;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/bu;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/SystemPlayer;->e(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/bu;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v1}, Lcom/clov4r/android/nil/SystemPlayer;->f(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/bu;->a:Lcom/clov4r/android/nil/SystemPlayer;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/clov4r/android/nil/SystemPlayer;->f:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/bu;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/SystemPlayer;->g(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/bu;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iput-boolean v3, v0, Lcom/clov4r/android/nil/SystemPlayer;->f:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/bu;->a:Lcom/clov4r/android/nil/SystemPlayer;

    iget v1, p0, Lcom/clov4r/android/nil/bu;->b:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/clov4r/android/nil/SystemPlayer;->a(J)V

    iput v3, p0, Lcom/clov4r/android/nil/bu;->b:I

    iget-object v0, p0, Lcom/clov4r/android/nil/bu;->a:Lcom/clov4r/android/nil/SystemPlayer;

    invoke-static {v0}, Lcom/clov4r/android/nil/SystemPlayer;->g(Lcom/clov4r/android/nil/SystemPlayer;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
