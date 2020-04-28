.class Lcmn/SoundStore$SoundEntry$1;
.super Ljava/lang/Object;
.source "SoundStore.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/SoundStore$SoundEntry;->play(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcmn/SoundStore$SoundEntry;


# direct methods
.method constructor <init>(Lcmn/SoundStore$SoundEntry;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/SoundStore$SoundEntry$1;->this$1:Lcmn/SoundStore$SoundEntry;

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 76
    return-void
.end method
