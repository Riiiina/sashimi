.class Lcom/adobe/reader/ARFileOpen$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/reader/ARFileOpen;
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

    iput-object p1, p0, Lcom/adobe/reader/ARFileOpen$2;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sEmmcDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/reader/ARFileBrowserUtils;->sEmmcDirectory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$2;->this$0:Lcom/adobe/reader/ARFileOpen;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sEmmcDirectory:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/adobe/reader/ARFileOpen;->access$200(Lcom/adobe/reader/ARFileOpen;Ljava/io/File;)V

    :cond_0
    invoke-static {}, Lcom/adobe/reader/ARFileBrowserUtils;->isSDCardAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$2;->this$0:Lcom/adobe/reader/ARFileOpen;

    sget-object v1, Lcom/adobe/reader/ARFileBrowserUtils;->sRootDirectory:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/adobe/reader/ARFileOpen;->access$200(Lcom/adobe/reader/ARFileOpen;Ljava/io/File;)V

    :cond_1
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$2;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v0}, Lcom/adobe/reader/ARFileOpen;->access$300(Lcom/adobe/reader/ARFileOpen;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$2;->this$0:Lcom/adobe/reader/ARFileOpen;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adobe/reader/ARFileOpen;->access$402(Lcom/adobe/reader/ARFileOpen;Z)Z

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$2;->this$0:Lcom/adobe/reader/ARFileOpen;

    iget-object v1, p0, Lcom/adobe/reader/ARFileOpen$2;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v1}, Lcom/adobe/reader/ARFileOpen;->access$500(Lcom/adobe/reader/ARFileOpen;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/reader/ARFileOpen;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$2;->this$0:Lcom/adobe/reader/ARFileOpen;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adobe/reader/ARFileOpen;->access$602(Lcom/adobe/reader/ARFileOpen;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
