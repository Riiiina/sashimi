.class Lcom/adobe/reader/PageView$2;
.super Landroid/view/OrientationEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/PageView;->initializePageView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/reader/PageView;


# direct methods
.method constructor <init>(Lcom/adobe/reader/PageView;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/PageView$2;->this$0:Lcom/adobe/reader/PageView;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 7

    const/16 v6, 0xe1

    const/16 v5, 0x87

    const/16 v4, 0x2d

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/adobe/reader/PageView$2;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v0}, Lcom/adobe/reader/PageView;->access$1400(Lcom/adobe/reader/PageView;)I

    move-result v0

    if-ltz p1, :cond_0

    if-lt p1, v4, :cond_1

    :cond_0
    const/16 v1, 0x13b

    if-lt p1, v1, :cond_5

    const/16 v1, 0x168

    if-ge p1, v1, :cond_5

    :cond_1
    move v0, v2

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/adobe/reader/PageView$2;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$1400(Lcom/adobe/reader/PageView;)I

    move-result v1

    if-eq v1, v0, :cond_4

    iget-object v1, p0, Lcom/adobe/reader/PageView$2;->this$0:Lcom/adobe/reader/PageView;

    iget-object v2, p0, Lcom/adobe/reader/PageView$2;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v2}, Lcom/adobe/reader/PageView;->access$1400(Lcom/adobe/reader/PageView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/adobe/reader/PageView;->access$1502(Lcom/adobe/reader/PageView;I)I

    iget-object v1, p0, Lcom/adobe/reader/PageView$2;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1}, Lcom/adobe/reader/PageView;->access$1400(Lcom/adobe/reader/PageView;)I

    move-result v1

    const/16 v2, -0x3e8

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/adobe/reader/PageView$2;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1, v3}, Lcom/adobe/reader/PageView;->access$1602(Lcom/adobe/reader/PageView;Z)Z

    :cond_3
    iget-object v1, p0, Lcom/adobe/reader/PageView$2;->this$0:Lcom/adobe/reader/PageView;

    invoke-static {v1, v0}, Lcom/adobe/reader/PageView;->access$1402(Lcom/adobe/reader/PageView;I)I

    :cond_4
    return-void

    :cond_5
    if-lt p1, v4, :cond_6

    if-ge p1, v5, :cond_6

    const/4 v0, -0x1

    goto :goto_0

    :cond_6
    if-lt p1, v5, :cond_7

    if-ge p1, v6, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    if-lt p1, v6, :cond_2

    const/16 v1, 0x13b

    if-ge p1, v1, :cond_2

    move v0, v3

    goto :goto_0
.end method
