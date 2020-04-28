.class Lcom/tat/livewallpaper/dandelion/Dandelion$2;
.super Landroid/content/BroadcastReceiver;
.source "Dandelion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tat/livewallpaper/dandelion/Dandelion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;


# direct methods
.method constructor <init>(Lcom/tat/livewallpaper/dandelion/Dandelion;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$2;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const-string v3, "level"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 114
    .local v1, "level":I
    const-string v3, "scale"

    const/16 v4, 0x64

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 118
    .local v2, "scale":I
    iget-object v3, p0, Lcom/tat/livewallpaper/dandelion/Dandelion$2;->this$0:Lcom/tat/livewallpaper/dandelion/Dandelion;

    const-string v4, "attr0.b"

    mul-int/lit8 v5, v1, 0x64

    div-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/tat/livewallpaper/dandelion/Dandelion;->setProperty(Ljava/lang/String;I)V

    .line 121
    .end local v1    # "level":I
    .end local v2    # "scale":I
    :cond_0
    const/4 v0, 0x0

    .line 123
    return-void
.end method
