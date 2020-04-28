.class public Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseForgotPassword;
.super Ljava/lang/Object;
.source "IHRSingleSignOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResponseForgotPassword"
.end annotation


# static fields
.field public static final URL:Ljava/lang/String; = "http://service.ccrd.clearchannel.com/service/login_forgot_password/"


# instance fields
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


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;)V
    .locals 1
    .param p1, "resp"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    .prologue
    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseForgotPassword;->emailsent:Z

    .line 605
    iget-boolean v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->emailsent:Z

    iput-boolean v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseForgotPassword;->emailsent:Z

    .line 606
    iget-object v0, p1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;->errorList:Ljava/util/List;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseForgotPassword;->errorList:Ljava/util/List;

    .line 607
    return-void
.end method
