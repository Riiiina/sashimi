.class final Lcom/adobe/reader/Runnables$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/reader/Runnables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/adobe/reader/Runnables;->access$000()Lcom/adobe/reader/PageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/reader/PageView;->scrollToOffscreenPos()V

    return-void
.end method
