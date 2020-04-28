.class public Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
.super Ljava/lang/Object;
.source "IHRSingleSignOn.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseSuper"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public ccrdaccount:I

.field public dob:Ljava/util/Date;

.field public email:Ljava/lang/String;

.field public emailsent:Z

.field public errorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;",
            ">;"
        }
    .end annotation
.end field

.field public fbuserid:I

.field public firstname:Ljava/lang/String;

.field public gender:Ljava/lang/String;

.field public password:Ljava/lang/String;

.field public state:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public usergroupid:I

.field public userid:I

.field public username:Ljava/lang/String;

.field public zip:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->ccrdaccount:I

    .line 238
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->fbuserid:I

    .line 241
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->userid:I

    .line 242
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->usergroupid:I

    .line 246
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->zip:I

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->emailsent:Z

    .line 252
    return-void
.end method


# virtual methods
.method public getCcrdaccount()I
    .locals 1

    .prologue
    .line 275
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->ccrdaccount:I

    return v0
.end method

.method public getDob()Ljava/util/Date;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->dob:Ljava/util/Date;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    return-object v0
.end method

.method public getFbuserid()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->fbuserid:I

    return v0
.end method

.method public getFirstname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->firstname:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->state:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUsergroupid()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->usergroupid:I

    return v0
.end method

.method public getUserid()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->userid:I

    return v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getZip()I
    .locals 1

    .prologue
    .line 355
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->zip:I

    return v0
.end method

.method public hasError()Z
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmailsent()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->emailsent:Z

    return v0
.end method

.method public setCcrdaccount(I)V
    .locals 0
    .param p1, "ccrdaccount"    # I

    .prologue
    .line 279
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->ccrdaccount:I

    .line 280
    return-void
.end method

.method public setDob(Ljava/util/Date;)V
    .locals 0
    .param p1, "dob"    # Ljava/util/Date;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->dob:Ljava/util/Date;

    .line 336
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->email:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setEmailsent(Z)V
    .locals 0
    .param p1, "emailsent"    # Z

    .prologue
    .line 375
    iput-boolean p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->emailsent:Z

    .line 376
    return-void
.end method

.method public setErrorList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p1, "errorList":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;>;"
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    .line 368
    return-void
.end method

.method public setFbuserid(I)V
    .locals 0
    .param p1, "fbuserid"    # I

    .prologue
    .line 295
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->fbuserid:I

    .line 296
    return-void
.end method

.method public setFirstname(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstname"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->firstname:Ljava/lang/String;

    .line 312
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->gender:Ljava/lang/String;

    .line 344
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->password:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->state:Ljava/lang/String;

    .line 352
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->token:Ljava/lang/String;

    .line 288
    return-void
.end method

.method public setUsergroupid(I)V
    .locals 0
    .param p1, "usergroupid"    # I

    .prologue
    .line 327
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->usergroupid:I

    .line 328
    return-void
.end method

.method public setUserid(I)V
    .locals 0
    .param p1, "userid"    # I

    .prologue
    .line 319
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->userid:I

    .line 320
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->username:Ljava/lang/String;

    .line 304
    return-void
.end method

.method public setZip(I)V
    .locals 0
    .param p1, "zip"    # I

    .prologue
    .line 359
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->zip:I

    .line 360
    return-void
.end method
