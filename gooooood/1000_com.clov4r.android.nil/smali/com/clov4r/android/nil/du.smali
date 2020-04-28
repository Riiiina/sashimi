.class Lcom/clov4r/android/nil/du;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/CMPlayer;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/CMPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/du;->a:Lcom/clov4r/android/nil/CMPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/clov4r/android/nil/du;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/du;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v0, v0, Lcom/clov4r/android/nil/CMPlayer;->S:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/clov4r/android/nil/du;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v1, v1, Lcom/clov4r/android/nil/CMPlayer;->T:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_2
    iget-object v2, p0, Lcom/clov4r/android/nil/du;->a:Lcom/clov4r/android/nil/CMPlayer;

    iget-object v2, v2, Lcom/clov4r/android/nil/CMPlayer;->af:Landroid/media/AudioTrack;

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method
