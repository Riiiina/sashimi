.class Lcom/adobe/reader/ARFileOpen$6;
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

    iput-object p1, p0, Lcom/adobe/reader/ARFileOpen$6;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/adobe/reader/ARFileOpen$6;->this$0:Lcom/adobe/reader/ARFileOpen;

    invoke-static {v0}, Lcom/adobe/reader/ARFileOpen;->access$900(Lcom/adobe/reader/ARFileOpen;)V

    return-void
.end method
