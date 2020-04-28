.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;
.super Ljava/lang/Object;
.source "IHRControllerSSOSignUp.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->prepareView()V
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
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    .line 102
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 103
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-static {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->access$2(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Landroid/app/DatePickerDialog$OnDateSetListener;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-static {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Landroid/widget/EditText;

    move-result-object v3

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp$3;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;

    invoke-static {v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->access$1(Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->getCalendar(Landroid/widget/EditText;Ljava/lang/String;Z)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOSignUp;->showDialog(Landroid/app/DatePickerDialog$OnDateSetListener;Ljava/util/Calendar;)V

    .line 104
    :cond_0
    return v6
.end method
