.class public Lcom/clearchannel/iheartradio/android/view/IHRViewSlider;
.super Landroid/widget/SeekBar;
.source "IHRViewSlider.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 14
    invoke-static {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSlider;->fixBrokenSeekBar(Landroid/widget/SeekBar;)V

    .line 15
    return-void
.end method

.method public static fixBrokenSeekBar(Landroid/widget/SeekBar;)V
    .locals 1
    .param p0, "ioSeek"    # Landroid/widget/SeekBar;

    .prologue
    .line 9
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 10
    return-void
.end method
