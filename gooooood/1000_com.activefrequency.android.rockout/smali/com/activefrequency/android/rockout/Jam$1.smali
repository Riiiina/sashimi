.class Lcom/activefrequency/android/rockout/Jam$1;
.super Ljava/lang/Object;
.source "Jam.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/activefrequency/android/rockout/Jam;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/activefrequency/android/rockout/Jam;


# direct methods
.method constructor <init>(Lcom/activefrequency/android/rockout/Jam;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/activefrequency/android/rockout/Jam$1;->this$0:Lcom/activefrequency/android/rockout/Jam;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    .line 99
    const-string v2, "http://m.activefrequency.com/rockout/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 98
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 100
    .local v0, "myIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/activefrequency/android/rockout/Jam$1;->this$0:Lcom/activefrequency/android/rockout/Jam;

    invoke-virtual {v1, v0}, Lcom/activefrequency/android/rockout/Jam;->startActivity(Landroid/content/Intent;)V

    .line 101
    return-void
.end method
