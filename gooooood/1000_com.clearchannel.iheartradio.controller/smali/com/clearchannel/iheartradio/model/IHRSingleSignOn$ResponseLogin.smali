.class public Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;
.super Ljava/lang/Object;
.source "IHRSingleSignOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseLogin"
.end annotation


# static fields
.field public static final URL:Ljava/lang/String; = "http://service.ccrd.clearchannel.com/service/login/"


# instance fields
.field public dob:Ljava/util/Date;

.field public email:Ljava/lang/String;

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

    .line 417
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->userid:I

    .line 410
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->zip:I

    .line 411
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->usergroupid:I

    .line 413
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->fbuserid:I

    .line 418
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->token:Ljava/lang/String;

    .line 420
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->username:Ljava/lang/String;

    .line 421
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->userid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->userid:I

    .line 422
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->firstname:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->firstname:Ljava/lang/String;

    .line 423
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->state:Ljava/lang/String;

    .line 424
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->dob:Ljava/util/Date;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->dob:Ljava/util/Date;

    .line 425
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->zip:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->zip:I

    .line 426
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->usergroupid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->usergroupid:I

    .line 427
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->gender:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->gender:Ljava/lang/String;

    .line 428
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->fbuserid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->fbuserid:I

    .line 429
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->errorList:Ljava/util/List;

    .line 430
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 434
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 435
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "Standard Login Response"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ntoken = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfbuserid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->fbuserid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nusername = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfirstname = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->firstname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuserid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nusergroupid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->usergroupid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 442
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ndob = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->dob:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ngender = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nstate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nzip = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;->zip:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 447
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
