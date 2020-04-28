.class Lcom/clearchannel/iheartradio/controller/IHRApplication$1;
.super Ljava/lang/Object;
.source "IHRApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRApplication;->loadSession()V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 190
    .local v1, "in":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .local v2, "in":Ljava/io/ObjectInputStream;
    :try_start_1
    sget-object v4, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-virtual {v4, v3}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setResp(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;)V

    .line 192
    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    sget-object v4, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->getResp()Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    move-result-object v4

    iget-object v4, v4, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->email:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setEmail(Ljava/lang/String;)V

    .line 193
    new-instance v1, Ljava/io/ObjectInputStream;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$1()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    .line 194
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :try_start_2
    sget-object v4, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    invoke-virtual {v4, v3}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setFacebook(Lcom/clearchannel/iheartradio/model/facebook/Facebook;)V

    .line 195
    new-instance v2, Ljava/io/ObjectInputStream;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-static {}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->access$2()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 196
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :try_start_3
    sget-object v3, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRApplication$1;
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setType(I)V

    .line 198
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 210
    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    :goto_0
    return-void

    .line 201
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRApplication$1;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 202
    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRApplication$1;
    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    const-string v3, "Session"

    const-string v4, "No saved session found in preferences."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    .end local v0    # "ex":Ljava/io/IOException;
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRApplication$1;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 205
    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRApplication$1;
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    :goto_2
    const-string v3, "Session"

    const-string v4, "Session data are not valid."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 204
    .end local v0    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_2
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_2

    .line 201
    .end local v1    # "in":Ljava/io/ObjectInputStream;
    .restart local v2    # "in":Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2    # "in":Ljava/io/ObjectInputStream;
    .restart local v1    # "in":Ljava/io/ObjectInputStream;
    goto :goto_1
.end method
