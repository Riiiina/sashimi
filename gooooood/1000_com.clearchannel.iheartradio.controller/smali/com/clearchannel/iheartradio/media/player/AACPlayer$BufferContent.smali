.class Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;
.super Ljava/lang/Object;
.source "AACPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/media/player/AACPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferContent"
.end annotation


# instance fields
.field public data:[B

.field public size:I

.field final synthetic this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;


# direct methods
.method private constructor <init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)V
    .locals 0

    .prologue
    .line 661
    iput-object p1, p0, Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;->this$0:Lcom/clearchannel/iheartradio/media/player/AACPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer;Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;)V
    .locals 0

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/clearchannel/iheartradio/media/player/AACPlayer$BufferContent;-><init>(Lcom/clearchannel/iheartradio/media/player/AACPlayer;)V

    return-void
.end method
