.class public Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;
.super Ljava/lang/Object;
.source "AACDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/media/player/AACDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AACInfo"
.end annotation


# instance fields
.field private channels:I

.field private samplerate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->channels:I

    return v0
.end method

.method public getSamplerate()I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/clearchannel/iheartradio/media/player/AACDecoder$AACInfo;->samplerate:I

    return v0
.end method
