.class Lcmn/SoundStore$SoundEntry;
.super Ljava/lang/Object;
.source "SoundStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmn/SoundStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundEntry"
.end annotation


# instance fields
.field mp:Landroid/media/MediaPlayer;

.field name:Ljava/lang/String;

.field resid:I

.field uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resid"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p2, p0, Lcmn/SoundStore$SoundEntry;->resid:I

    .line 66
    iput-object p1, p0, Lcmn/SoundStore$SoundEntry;->name:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcmn/SoundStore$SoundEntry;->name:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcmn/SoundStore$SoundEntry;->uri:Landroid/net/Uri;

    .line 62
    return-void
.end method


# virtual methods
.method public play(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loop"    # Z

    .prologue
    .line 70
    invoke-static {p1, p0}, Lcmn/SoundStore;->getMediaPlayer(Landroid/content/Context;Lcmn/SoundStore$SoundEntry;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcmn/SoundStore$SoundEntry;->mp:Landroid/media/MediaPlayer;

    .line 71
    if-nez p2, :cond_0

    .line 72
    iget-object v0, p0, Lcmn/SoundStore$SoundEntry;->mp:Landroid/media/MediaPlayer;

    new-instance v1, Lcmn/SoundStore$SoundEntry$1;

    invoke-direct {v1, p0}, Lcmn/SoundStore$SoundEntry$1;-><init>(Lcmn/SoundStore$SoundEntry;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 79
    :cond_0
    iget-object v0, p0, Lcmn/SoundStore$SoundEntry;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 80
    iget-object v0, p0, Lcmn/SoundStore$SoundEntry;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 81
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 85
    :try_start_0
    iget-object v1, p0, Lcmn/SoundStore$SoundEntry;->mp:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcmn/SoundStore$SoundEntry;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcmn/SoundStore$SoundEntry;->mp:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
