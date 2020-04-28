.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsBasic;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;
.source "IHRControllerSettingsBasic.java"


# static fields
.field public static final kNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Clear Autoplay Station"

    aput-object v2, v0, v1

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsBasic;->kNames:[Ljava/lang/String;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsBasic;->kNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 18
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsBasic;->kNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 1
    .param p1, "inList"    # Landroid/widget/ListView;
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inPosition"    # I
    .param p4, "inID"    # J

    .prologue
    .line 23
    packed-switch p3, :pswitch_data_0

    .line 31
    :goto_0
    return-void

    .line 25
    :pswitch_0
    const-string v0, "Your autoplay station has been cleared"

    .line 26
    .local v0, "msg":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsBasic;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
