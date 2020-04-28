.class Lcom/ophone/MiniPlayer/PlayingListActivity$14;
.super Ljava/lang/Object;
.source "PlayingListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ophone/MiniPlayer/PlayingListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;


# direct methods
.method constructor <init>(Lcom/ophone/MiniPlayer/PlayingListActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$14;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$14;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v1, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$14;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    iget-object v1, v1, Lcom/ophone/MiniPlayer/PlayingListActivity;->st:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ophone/MiniPlayer/PlayingListActivity$14;->this$0:Lcom/ophone/MiniPlayer/PlayingListActivity;

    invoke-static {v2}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$14(Lcom/ophone/MiniPlayer/PlayingListActivity;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/ophone/MiniPlayer/PlayingListActivity;->access$15(Lcom/ophone/MiniPlayer/PlayingListActivity;Ljava/lang/String;)V

    .line 1020
    return-void
.end method
