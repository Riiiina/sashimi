.class Lcom/ophone/MiniPlayer/MusicActivity$6;
.super Ljava/lang/Object;
.source "MusicActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/MusicActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/MusicActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/MusicActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/MusicActivity$6;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 638
    iget-object v0, p0, Lcom/ophone/MiniPlayer/MusicActivity$6;->this$0:Lcom/ophone/MiniPlayer/MusicActivity;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ophone/MiniPlayer/MusicActivity;->dismissDialog(I)V

    .line 639
    return-void
.end method
