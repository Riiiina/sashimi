.class Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IHRSingleSignOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SSOHandler"
.end annotation


# instance fields
.field private ccrdaccount:Ljava/lang/String;

.field private dob:Ljava/lang/String;

.field private emailsent:Ljava/lang/String;

.field err:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

.field private error:Ljava/lang/String;

.field private errors:Ljava/lang/String;

.field private fbuserid:Ljava/lang/String;

.field private firstname:Ljava/lang/String;

.field private gender:Ljava/lang/String;

.field private in_ccrdaccount:Z

.field private in_dob:Z

.field private in_emailsent:Z

.field private in_error:Z

.field private in_errors:Z

.field private in_fbuserid:Z

.field private in_firstname:Z

.field private in_gender:Z

.field private in_state:Z

.field private in_token:Z

.field private in_usergroupid:Z

.field private in_userid:Z

.field private in_username:Z

.field private in_zip:Z

.field resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

.field private state:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private usergroupid:Ljava/lang/String;

.field private userid:Ljava/lang/String;

.field private username:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 633
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 640
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_errors:Z

    .line 641
    const-string v0, "errors"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->errors:Ljava/lang/String;

    .line 643
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_error:Z

    .line 644
    const-string v0, "error"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->error:Ljava/lang/String;

    .line 646
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_ccrdaccount:Z

    .line 647
    const-string v0, "ccrdaccount"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->ccrdaccount:Ljava/lang/String;

    .line 649
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_dob:Z

    .line 650
    const-string v0, "dob"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->dob:Ljava/lang/String;

    .line 652
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_emailsent:Z

    .line 653
    const-string v0, "emailsent"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->emailsent:Ljava/lang/String;

    .line 655
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_fbuserid:Z

    .line 656
    const-string v0, "fbuserid"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->fbuserid:Ljava/lang/String;

    .line 658
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_firstname:Z

    .line 659
    const-string v0, "firstname"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->firstname:Ljava/lang/String;

    .line 661
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_gender:Z

    .line 662
    const-string v0, "gender"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->gender:Ljava/lang/String;

    .line 664
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_state:Z

    .line 665
    const-string v0, "state"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->state:Ljava/lang/String;

    .line 667
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_token:Z

    .line 668
    const-string v0, "token"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->token:Ljava/lang/String;

    .line 670
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_usergroupid:Z

    .line 671
    const-string v0, "usergroupid"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->usergroupid:Ljava/lang/String;

    .line 673
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_userid:Z

    .line 674
    const-string v0, "userid"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->userid:Ljava/lang/String;

    .line 676
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_username:Z

    .line 677
    const-string v0, "username"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->username:Ljava/lang/String;

    .line 679
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_zip:Z

    .line 680
    const-string v0, "zip"

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->zip:Ljava/lang/String;

    .line 633
    return-void
.end method

.method synthetic constructor <init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;)V
    .locals 0

    .prologue
    .line 633
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .prologue
    .line 796
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 797
    .local v0, "item":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_error:Z

    if-eqz v1, :cond_1

    .line 798
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->err:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->error:Ljava/lang/String;

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 799
    :cond_1
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_ccrdaccount:Z

    if-eqz v1, :cond_2

    .line 800
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->toInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->ccrdaccount:I

    goto :goto_0

    .line 801
    :cond_2
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_dob:Z

    if-eqz v1, :cond_3

    .line 802
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->dob:Ljava/util/Date;

    goto :goto_0

    .line 803
    :cond_3
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_emailsent:Z

    if-eqz v1, :cond_4

    .line 804
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, v0}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->emailsent:Z

    goto :goto_0

    .line 805
    :cond_4
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_fbuserid:Z

    if-eqz v1, :cond_5

    .line 806
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->toInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->fbuserid:I

    goto :goto_0

    .line 807
    :cond_5
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_firstname:Z

    if-eqz v1, :cond_6

    .line 808
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->firstname:Ljava/lang/String;

    goto :goto_0

    .line 809
    :cond_6
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_gender:Z

    if-eqz v1, :cond_7

    .line 810
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->gender:Ljava/lang/String;

    goto :goto_0

    .line 811
    :cond_7
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_state:Z

    if-eqz v1, :cond_8

    .line 812
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->state:Ljava/lang/String;

    goto :goto_0

    .line 813
    :cond_8
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_token:Z

    if-eqz v1, :cond_9

    .line 814
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->token:Ljava/lang/String;

    goto :goto_0

    .line 815
    :cond_9
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_usergroupid:Z

    if-eqz v1, :cond_a

    .line 816
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->toInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->usergroupid:I

    goto :goto_0

    .line 817
    :cond_a
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_userid:Z

    if-eqz v1, :cond_b

    .line 818
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->toInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->userid:I

    goto/16 :goto_0

    .line 819
    :cond_b
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_username:Z

    if-eqz v1, :cond_c

    .line 820
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->username:Ljava/lang/String;

    goto/16 :goto_0

    .line 821
    :cond_c
    iget-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_zip:Z

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->toInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->zip:I

    goto/16 :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 698
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 755
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->error:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_error:Z

    .line 757
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->err:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->error:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->err:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->error:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->err:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->errors:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 761
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_errors:Z

    goto :goto_0

    .line 762
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->ccrdaccount:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 763
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_ccrdaccount:Z

    goto :goto_0

    .line 764
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->dob:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "birth_date"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 765
    :cond_4
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_dob:Z

    goto :goto_0

    .line 766
    :cond_5
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->emailsent:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 767
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_emailsent:Z

    goto :goto_0

    .line 768
    :cond_6
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->fbuserid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "fb_user_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 769
    :cond_7
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_fbuserid:Z

    goto :goto_0

    .line 770
    :cond_8
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->firstname:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "first_name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 771
    :cond_9
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_firstname:Z

    goto :goto_0

    .line 772
    :cond_a
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->gender:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 773
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_gender:Z

    goto :goto_0

    .line 774
    :cond_b
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->state:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 775
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_state:Z

    goto :goto_0

    .line 776
    :cond_c
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->token:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 777
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_token:Z

    goto :goto_0

    .line 778
    :cond_d
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->usergroupid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "user_group_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 779
    :cond_e
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_usergroupid:Z

    goto/16 :goto_0

    .line 780
    :cond_f
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->userid:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "user_id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 781
    :cond_10
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_userid:Z

    goto/16 :goto_0

    .line 782
    :cond_11
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->username:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 783
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_username:Z

    goto/16 :goto_0

    .line 784
    :cond_12
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->zip:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "zip_code"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    :cond_13
    iput-boolean v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_zip:Z

    goto/16 :goto_0
.end method

.method public getResponse()Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 691
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->resp:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .line 692
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 709
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->error:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 710
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_error:Z

    .line 711
    new-instance v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    invoke-direct {v1}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;-><init>()V

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->err:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    .line 712
    const-string v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 714
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->err:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->id:I

    .line 747
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 717
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->errors:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 718
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_errors:Z

    goto :goto_0

    .line 719
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->ccrdaccount:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 720
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_ccrdaccount:Z

    goto :goto_0

    .line 721
    :cond_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->dob:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "birth_date"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 722
    :cond_4
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_dob:Z

    goto :goto_0

    .line 723
    :cond_5
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->fbuserid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "fb_user_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 724
    :cond_6
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_fbuserid:Z

    goto :goto_0

    .line 725
    :cond_7
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->emailsent:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 726
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_emailsent:Z

    goto :goto_0

    .line 727
    :cond_8
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->firstname:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "first_name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 728
    :cond_9
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_firstname:Z

    goto :goto_0

    .line 729
    :cond_a
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->gender:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 730
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_gender:Z

    goto :goto_0

    .line 731
    :cond_b
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->state:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 732
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_state:Z

    goto :goto_0

    .line 733
    :cond_c
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->token:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 734
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_token:Z

    goto :goto_0

    .line 735
    :cond_d
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->usergroupid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "user_group_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 736
    :cond_e
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_usergroupid:Z

    goto/16 :goto_0

    .line 737
    :cond_f
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->userid:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "user_id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 738
    :cond_10
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_userid:Z

    goto/16 :goto_0

    .line 739
    :cond_11
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->username:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 740
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_username:Z

    goto/16 :goto_0

    .line 742
    :cond_12
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->zip:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "zip_code"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 744
    :cond_13
    iput-boolean v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->in_zip:Z

    goto/16 :goto_0
.end method
