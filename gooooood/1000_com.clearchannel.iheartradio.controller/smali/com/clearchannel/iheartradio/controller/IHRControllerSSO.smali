.class public abstract Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerSSO.java"


# static fields
.field public static final ACTION_ADD_FAVORITE_SONG:B = 0x2t

.field public static final ACTION_ADD_FAVORITE_STATION:B = 0x1t

.field public static final ACTION_REFRESH_FAVORITE_LIST:B = 0x5t

.field public static final ACTION_REMOVE_FAVORITE_SONG:B = 0x4t

.field public static final ACTION_REMOVE_FAVORITE_STATION:B = 0x3t

.field public static final KEY_ACTION:Ljava/lang/String; = "action"

.field public static final KEY_OBJECT:Ljava/lang/String; = "object"


# instance fields
.field protected buttomName:Ljava/lang/String;

.field protected inParameters:Landroid/content/Intent;

.field protected versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->inParameters:Landroid/content/Intent;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->versionName:Ljava/lang/String;

    .line 25
    const-string v0, "Return to Form"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->buttomName:Ljava/lang/String;

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->onSSOResponse()V

    return-void
.end method

.method private onSSOResponse()V
    .locals 8

    .prologue
    const/16 v7, 0x68

    const/16 v6, 0x67

    const/16 v5, 0x65

    const/4 v4, 0x0

    .line 64
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->ex:Ljava/lang/Exception;

    if-eqz v2, :cond_2

    .line 67
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setEmail(Ljava/lang/String;)V

    .line 68
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 69
    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    .line 70
    const-string v2, "Oops"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->ex:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->buttomName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 72
    :cond_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 73
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    invoke-virtual {v2, v4}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->setEmail(Ljava/lang/String;)V

    .line 74
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 75
    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    .line 76
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 77
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_3

    .line 81
    const-string v2, "Oops"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->buttomName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 78
    :cond_3
    if-lez v0, :cond_4

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_4
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->error:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "i":I
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :cond_5
    iget v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->type:I

    if-ne v2, v6, :cond_6

    .line 84
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-virtual {v2, v3, v6}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->update(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;I)V

    .line 88
    const-string v2, "Congratulations! You are now logged in."

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->handleAction()V

    .line 98
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->finish()V

    goto/16 :goto_0

    .line 99
    :cond_6
    iget v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->type:I

    if-ne v2, v5, :cond_7

    .line 100
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-virtual {v2, v3, v5}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->update(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;I)V

    .line 104
    const-string v2, "Congratulations! You signed up and now are logged in."

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->handleAction()V

    .line 114
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->finish()V

    goto/16 :goto_0

    .line 115
    :cond_7
    iget v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->type:I

    if-ne v2, v7, :cond_8

    .line 116
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 117
    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    .line 118
    sget-object v2, Lcom/clearchannel/iheartradio/controller/IHRApplication;->session:Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-virtual {v2, v3, v7}, Lcom/clearchannel/iheartradio/controller/IHRApplication$Session;->update(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;I)V

    .line 119
    const-string v2, "Congratulations! You are now logged in using partner account."

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->finish()V

    goto/16 :goto_0

    .line 121
    :cond_8
    iget v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->type:I

    const/16 v3, 0x69

    if-ne v2, v3, :cond_0

    .line 122
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 123
    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    .line 124
    const-string v2, "Please check your mail for the new password."

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->finish()V

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->backGroundSync:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-super {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->finish()V

    .line 39
    :cond_0
    return-void
.end method

.method protected handleAction()V
    .locals 11

    .prologue
    .line 145
    const/4 v8, 0x0

    .line 147
    .local v8, "redirectToFavorite":Z
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->inParameters:Landroid/content/Intent;

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->inParameters:Landroid/content/Intent;

    const-string v2, "action"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result v6

    .line 150
    .local v6, "action":B
    packed-switch v6, :pswitch_data_0

    .line 225
    :goto_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 226
    if-eqz v8, :cond_4

    .line 229
    const-string v1, "Synchronizing favorites"

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    .line 230
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 231
    const/4 v1, 0x0

    sput-boolean v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->backGroundSync:Z

    goto :goto_0

    .line 153
    :pswitch_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->inParameters:Landroid/content/Intent;

    const-string v2, "object"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;

    .line 154
    .local v10, "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 157
    .local v0, "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_0
    iget-wide v1, v10, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->stationid:J

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->isStationFavourited(J)Z

    move-result v1

    if-nez v1, :cond_2

    .line 159
    iget-wide v1, v10, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->stationid:J

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertFavouriteStation(J)V

    .line 160
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->station:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is now a favorite."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 165
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 166
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 163
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->station:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is already in favorites."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 173
    .end local v0    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v10    # "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    :pswitch_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->inParameters:Landroid/content/Intent;

    const-string v2, "object"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;

    .line 174
    .local v9, "song":Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 177
    .restart local v0    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_2
    iget-wide v1, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->mediaid:J

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->isSongFavourited(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 179
    iget-object v1, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->artist:Ljava/lang/String;

    iget-object v2, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->song:Ljava/lang/String;

    const-string v3, ""

    iget-wide v4, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->mediaid:J

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertFavouriteSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->artist:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->song:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is now a favorite."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 185
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 186
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 183
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->artist:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->song:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already a favorite."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 193
    .end local v0    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v9    # "song":Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
    :pswitch_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->inParameters:Landroid/content/Intent;

    const-string v2, "object"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;

    .line 194
    .restart local v10    # "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    if-eqz v10, :cond_0

    .line 197
    :try_start_4
    new-instance v1, Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    iget-wide v2, v10, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->stationid:J

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->flagFavouriteStationForRemoval(J)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->station:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " has been removed from favorites."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_1

    .line 200
    :catch_2
    move-exception v1

    move-object v7, v1

    .line 201
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 206
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v10    # "station":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    :pswitch_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->inParameters:Landroid/content/Intent;

    const-string v2, "object"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;

    .line 207
    .restart local v9    # "song":Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 209
    .restart local v0    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_5
    iget-wide v1, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->mediaid:J

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->flagFavouriteSongForRemoval(J)V

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->artist:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Lcom/clearchannel/iheartradio/db/DBFavourite$Song;->song:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed from favorites."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->showToast(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_1

    .line 211
    :catch_3
    move-exception v1

    move-object v7, v1

    .line 212
    .local v7, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    goto/16 :goto_1

    .line 217
    .end local v0    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v7    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v9    # "song":Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
    :pswitch_4
    const/4 v8, 0x1

    goto/16 :goto_1

    .line 236
    :cond_4
    const/4 v1, 0x1

    sput-boolean v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->backGroundSync:Z

    goto/16 :goto_0

    .line 150
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected initVersionName()V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "packageName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 137
    .local v1, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v1    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "inParameters"    # Landroid/content/Intent;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->inParameters:Landroid/content/Intent;

    .line 32
    return-void
.end method

.method public onSSOResponse(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;ILjava/lang/Exception;)V
    .locals 1
    .param p1, "resp"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    .param p2, "type"    # I
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 48
    iput-object p3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->ex:Ljava/lang/Exception;

    .line 49
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .line 50
    iput p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->type:I

    .line 52
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO$1;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;)V

    .line 57
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSO;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 58
    return-void
.end method

.method public wantsBanner()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method
