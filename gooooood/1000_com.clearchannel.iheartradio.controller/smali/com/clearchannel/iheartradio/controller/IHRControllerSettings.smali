.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;
.source "IHRControllerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerSettings$IHRViewSettings;
    }
.end annotation


# static fields
.field public static final kNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 12
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 13
    const-string v2, "Premium"

    aput-object v2, v0, v1

    .line 12
    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->kNames:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerAdapterList;-><init>()V

    return-void
.end method


# virtual methods
.method protected createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings$IHRViewSettings;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings$IHRViewSettings;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;Landroid/content/Context;)V

    return-object v0
.end method

.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 59
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 60
    .local v0, "res":I
    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->kNames:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "inPosition"    # I

    .prologue
    .line 23
    sget-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->kNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "inPosition"    # I
    .param p2, "inConvert"    # Landroid/view/View;
    .param p3, "inParent"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    const v1, 0x7f03000f

    invoke-virtual {p0, v1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->getViewByID(ILandroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, "result":Landroid/view/View;
    const v1, 0x7f090042

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const/16 v1, 0x34

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->dpToPix(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->assignLayout(Landroid/view/View;II)V

    .line 45
    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "inList"    # Landroid/widget/ListView;
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inPosition"    # I
    .param p4, "inID"    # J

    .prologue
    .line 28
    const/4 v0, 0x0

    .line 30
    .local v0, "c":Ljava/lang/Class;
    packed-switch p3, :pswitch_data_0

    .line 34
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/Class;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 35
    :cond_0
    return-void

    .line 31
    :pswitch_0
    const-class v0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettingsPremium;

    goto :goto_0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
