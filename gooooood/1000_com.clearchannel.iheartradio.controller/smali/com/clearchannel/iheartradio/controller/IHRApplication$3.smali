.class Lcom/clearchannel/iheartradio/controller/IHRApplication$3;
.super Ljava/lang/Object;
.source "IHRApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRApplication;->saveSession()V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 241
    const/4 v1, 0x0

    .line 244
    .local v1, "out":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$0()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .local v2, "out":Ljava/io/ObjectOutputStream;
    :try_start_1
    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getResp()Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    move-result-object v3

    sget-object v4, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getEmail()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->email:Ljava/lang/String;

    .line 246
    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getResp()Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 247
    new-instance v1, Ljava/io/ObjectOutputStream;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$1()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :try_start_2
    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 249
    new-instance v2, Ljava/io/ObjectOutputStream;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$2()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 250
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :try_start_3
    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 251
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V

    .line 253
    const-string v3, "Session"

    const-string v4, "Session saved."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v1, v2

    .line 260
    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 257
    .local v0, "ex":Ljava/lang/Exception;
    :goto_1
    const-string v3, "Session"

    const-string v4, "Error saving session."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 255
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "out":Ljava/io/ObjectOutputStream;
    .restart local v2    # "out":Ljava/io/ObjectOutputStream;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/ObjectOutputStream;
    .restart local v1    # "out":Ljava/io/ObjectOutputStream;
    goto :goto_1
.end method
