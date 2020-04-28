.class Lcom/adobe/reader/AdobeReader$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/AdobeReader;->setUIControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/reader/AdobeReader;


# direct methods
.method constructor <init>(Lcom/adobe/reader/AdobeReader;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/AdobeReader$3;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$3;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0, v1, v1}, Lcom/adobe/reader/AdobeReader;->hideUIElems(ZZ)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$3;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-virtual {v0}, Lcom/adobe/reader/AdobeReader;->hidePageOverlay()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
