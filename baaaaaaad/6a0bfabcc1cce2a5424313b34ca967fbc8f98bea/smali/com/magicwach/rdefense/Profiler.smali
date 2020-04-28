.class public final Lcom/magicwach/rdefense/Profiler;
.super Ljava/lang/Object;
.source "Profiler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Ljava/lang/String;)V
    .locals 0
    .param p0, "label"    # Ljava/lang/String;

    .prologue
    .line 16
    return-void
.end method

.method public static cleanup()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method

.method public static draw(Landroid/graphics/Canvas;Lcom/magicwach/rdefense/GameState;I)V
    .locals 0
    .param p0, "canvas"    # Landroid/graphics/Canvas;
    .param p1, "game_state"    # Lcom/magicwach/rdefense/GameState;
    .param p2, "frame_index"    # I

    .prologue
    .line 20
    return-void
.end method

.method public static enable(Z)V
    .locals 0
    .param p0, "flag"    # Z

    .prologue
    .line 10
    return-void
.end method

.method public static endFrame()V
    .locals 0

    .prologue
    .line 18
    return-void
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 8
    return-void
.end method

.method private static makeNumber(I)V
    .locals 0
    .param p0, "val"    # I

    .prologue
    .line 22
    return-void
.end method

.method public static newFrame()V
    .locals 0

    .prologue
    .line 14
    return-void
.end method
