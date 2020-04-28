.class Lcom/clearchannel/iheartradio/controller/IHRApplication$2;
.super Ljava/lang/Object;
.source "IHRApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRApplication;->deleteSessionFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRApplication;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->deleteFile(Ljava/lang/String;)Z

    .line 225
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$1()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->deleteFile(Ljava/lang/String;)Z

    .line 226
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$2;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->deleteFile(Ljava/lang/String;)Z

    .line 231
    return-void
.end method
