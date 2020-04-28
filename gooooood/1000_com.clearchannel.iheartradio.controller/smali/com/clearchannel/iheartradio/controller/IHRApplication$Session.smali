.class public Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;
.super Ljava/lang/Object;
.source "IHRApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Session"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x673774c35dbad6c2L


# instance fields
.field private email:Ljava/lang/String;

.field private facebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

.field private resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRApplication;)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 118
    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .line 119
    const/4 v1, -0x1

    iput v1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    .line 120
    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->email:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->deleteSessionFile()V

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->facebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    invoke-virtual {v1, p1}, Lcom/clearchannel/iheartradio/model/facebook/Facebook;->logout(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebook()Lcom/clearchannel/iheartradio/model/facebook/Facebook;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->facebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    return-object v0
.end method

.method public getResp()Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    return v0
.end method

.method public isLoggedIn()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->saveSession()V

    .line 176
    return-void
.end method

.method public sessionResult()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 139
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    :goto_0
    return-object v0

    .line 140
    :cond_0
    iget v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    const/16 v1, 0x68

    if-ne v0, v1, :cond_1

    .line 141
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_1
    iget v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_2

    .line 143
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCreateUser;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCreateUser;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCreateUser;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 144
    :cond_2
    iget v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_3

    .line 145
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;)V

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_3
    const-string v0, "No Session data"

    goto :goto_0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->email:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setFacebook(Lcom/clearchannel/iheartradio/model/facebook/Facebook;)V
    .locals 0
    .param p1, "facebook"    # Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->facebook:Lcom/clearchannel/iheartradio/model/facebook/Facebook;

    .line 172
    return-void
.end method

.method public setResp(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;)V
    .locals 0
    .param p1, "resp"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .line 156
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 163
    iput p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    .line 164
    return-void
.end method

.method public update(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;I)V
    .locals 1
    .param p1, "resp"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    .param p2, "type"    # I

    .prologue
    .line 112
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .line 113
    iput p2, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->type:I

    .line 114
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->this$0:Lcom/clearchannel/iheartradio/controller/IHRApplication;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->saveSession()V

    .line 115
    return-void
.end method

.method public userType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    .line 134
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget v0, v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->ccrdaccount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v0, "partner user"

    goto :goto_0

    .line 134
    :cond_1
    const-string v0, "iiheartradion user"

    goto :goto_0
.end method
