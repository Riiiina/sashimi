.class Lcom/adobe/reader/AdobeReader$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/AdobeReader;->onCreate(Landroid/os/Bundle;)V
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

    iput-object p1, p0, Lcom/adobe/reader/AdobeReader$1;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/adobe/reader/AdobeReader$1;->this$0:Lcom/adobe/reader/AdobeReader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/reader/AdobeReader;->showFindProgressDialog(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
