.class Lcom/chartcross/gpstest/GPSTest$2;
.super Landroid/os/Handler;
.source "GPSTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/GPSTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartcross/gpstest/GPSTest;


# direct methods
.method constructor <init>(Lcom/chartcross/gpstest/GPSTest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartcross/gpstest/GPSTest$2;->this$0:Lcom/chartcross/gpstest/GPSTest;

    .line 135
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 140
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 148
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$2;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const v1, 0x7f030002

    invoke-virtual {v0, v1}, Lcom/chartcross/gpstest/GPSTest;->setContentView(I)V

    .line 144
    iget-object v0, p0, Lcom/chartcross/gpstest/GPSTest$2;->this$0:Lcom/chartcross/gpstest/GPSTest;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartcross/gpstest/GPSTest;->SetCurrentView(I)Z

    goto :goto_0

    .line 140
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
