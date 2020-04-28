.class Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$FavoriteImageView;
.super Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;
.source "IHRViewSplash.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FavoriteImageView"
.end annotation


# static fields
.field public static final kFrames:I = 0x9


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$FavoriteImageView;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewSplash;

    invoke-direct {p0, p2}, Lcom/clearchannel/iheartradio/android/view/AnimatingImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public advanceID(I)I
    .locals 2
    .param p1, "inPosition"    # I

    .prologue
    const/16 v1, 0x9

    .line 140
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 142
    .local v0, "images":[I
    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    aget v1, v0, v1

    return v1

    :cond_1
    move v1, p1

    goto :goto_0

    .line 140
    nop

    :array_0
    .array-data 4
        0x7f0200f4
        0x7f0200fc
        0x7f0200fd
        0x7f0200f5
        0x7f0200f6
        0x7f0200f7
        0x7f0200f8
        0x7f0200f9
        0x7f0200fb
    .end array-data
.end method

.method public animateFPS(I)V
    .locals 1
    .param p1, "inFPS"    # I

    .prologue
    .line 136
    const/16 v0, 0x9

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewSplash$FavoriteImageView;->animateFPS(II)V

    return-void
.end method
