.class public Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;
.super Ljava/lang/Object;
.source "IHRSingleSignOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseCheckToken"
.end annotation


# static fields
.field public static final URL:Ljava/lang/String; = "http://service.ccrd.clearchannel.com/service/login_check/"


# instance fields
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

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->userid:I

    .line 510
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->zip:I

    .line 511
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->usergroupid:I

    .line 513
    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->fbuserid:I

    .line 517
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->token:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->token:Ljava/lang/String;

    .line 519
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->username:Ljava/lang/String;

    .line 520
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->userid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->userid:I

    .line 521
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->firstname:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->firstname:Ljava/lang/String;

    .line 522
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->state:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->state:Ljava/lang/String;

    .line 523
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->dob:Ljava/util/Date;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->dob:Ljava/util/Date;

    .line 524
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->zip:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->zip:I

    .line 525
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->usergroupid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->usergroupid:I

    .line 526
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->gender:Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->gender:Ljava/lang/String;

    .line 527
    iget v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->fbuserid:I

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->fbuserid:I

    .line 528
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->errorList:Ljava/util/List;

    .line 529
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 533
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 534
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "CheckTokenResponse"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ntoken = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfbuserid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->fbuserid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nusername = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nfirstname = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->firstname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 539
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nuserid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->userid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 540
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nusergroupid = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->usergroupid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ndob = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->dob:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\ngender = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->gender:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nstate = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 544
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nzip = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;->zip:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 546
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
