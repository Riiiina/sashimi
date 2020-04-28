.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$1;
.super Ljava/lang/Object;
.source "IHRControllerSSOSignUp.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/DatePicker;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    .local v0, "dob":Ljava/util/Calendar;
    invoke-virtual {v0, p2, p3, p4}, Ljava/util/Calendar;->set(III)V

    .line 71
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->mContent:Landroid/view/View;

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    .line 73
    return-void
.end method
