.class Lcom/adobe/reader/ARFileOpen$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/ARFileOpen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/reader/ARFileOpen;


# direct methods
.method constructor <init>(Lcom/adobe/reader/ARFileOpen;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/ARFileOpen$1;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "recentFilesTab"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$1;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v0}, Lcom/adobe/reader/ARFileOpen;->access$000(Lcom/adobe/reader/ARFileOpen;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$1;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v0}, Lcom/adobe/reader/ARFileOpen;->access$100(Lcom/adobe/reader/ARFileOpen;)V

    goto :goto_0
.end method
