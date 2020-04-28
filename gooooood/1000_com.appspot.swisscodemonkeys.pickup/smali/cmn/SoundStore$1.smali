.class Lcmn/SoundStore$1;
.super Ljava/lang/Object;
.source "SoundStore.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/SoundStore;->preload(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/SoundStore;


# direct methods
.method constructor <init>(Lcmn/SoundStore;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/SoundStore$1;->this$0:Lcmn/SoundStore;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 126
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 128
    return-void
.end method
