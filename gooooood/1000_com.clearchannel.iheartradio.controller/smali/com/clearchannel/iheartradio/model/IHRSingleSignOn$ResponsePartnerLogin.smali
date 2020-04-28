.class public Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;
.super Ljava/lang/Object;
.source "IHRSingleSignOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponsePartnerLogin"
.end annotation


# static fields
.field public static final URL:Ljava/lang/String; = "http://service.ccrd.clearchannel.com/service/login_partner/"


# instance fields
.field public ccrdaccount:I

.field public dob:Ljava/util/Date;

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

.field public state:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public usergroupid:I

.field public userid:I

.field public username:Ljava/lang/String;

.field public zip:I


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;)V
    .locals 1
    .param p1, "resp"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .prologue
    const/4 v0, -0x1

    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->ccrdaccount:I

    .line 456
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->userid:I

    .line 460
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->zip:I

    .line 461
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->usergroupid:I

    .line 463
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->fbuserid:I

    .line 467
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->token:Ljava/lang/String;

    .line 468
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->ccrdaccount:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->ccrdaccount:I

    .line 469
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->username:Ljava/lang/String;

    .line 470
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->userid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->userid:I

    .line 471
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->firstname:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->firstname:Ljava/lang/String;

    .line 472
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->state:Ljava/lang/String;

    .line 473
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->dob:Ljava/util/Date;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->dob:Ljava/util/Date;

    .line 474
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->zip:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->zip:I

    .line 475
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->usergroupid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->usergroupid:I

    .line 476
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->gender:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->gender:Ljava/lang/String;

    .line 477
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->fbuserid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->fbuserid:I

    .line 478
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->errorList:Ljava/util/List;

    .line 479
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 484
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "PartnerLoginResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nccrdaccount = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->ccrdaccount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ntoken = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfbuserid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->fbuserid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nusername = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfirstname = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->firstname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuserid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nusergroupid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->usergroupid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ndob = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->dob:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ngender = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nstate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nzip = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;->zip:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 497
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
