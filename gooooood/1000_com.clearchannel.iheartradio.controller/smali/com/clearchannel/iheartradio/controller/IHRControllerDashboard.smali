.class public Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerDashboard.java"


# instance fields
.field private mGallery:Landroid/widget/Gallery;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    .line 32
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)Landroid/widget/Gallery;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mGallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method private prepare()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f090006

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f090009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f09000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$3;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$4;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$4;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$5;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$5;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$6;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$6;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f09001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$7;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$7;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$8;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$8;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f090020

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$9;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$9;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f090026

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$10;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$10;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v1, 0x7f090028

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$11;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$11;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mGallery:Landroid/widget/Gallery;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$12;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard$12;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;)V

    invoke-virtual {v0, v1}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 209
    return-void
.end method


# virtual methods
.method public afterShown(Z)V
    .locals 0
    .param p1, "inShown"    # Z

    .prologue
    .line 39
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->getContext()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f030001

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    .line 44
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 47
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->featured()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 50
    .local v1, "totalitems":I
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v6, 0x7f090023

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 51
    .local v2, "view":Landroid/view/View;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v6, 0x7f090026

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 52
    .local v3, "viewLeftArrow":Landroid/view/View;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v6, 0x7f090028

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 55
    .local v4, "viewRightArrow":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 57
    if-eqz v3, :cond_0

    .line 58
    if-le v1, v10, :cond_3

    .line 59
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 65
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 66
    if-le v1, v10, :cond_4

    .line 67
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 73
    :cond_1
    :goto_1
    if-nez v1, :cond_5

    .line 74
    invoke-virtual {v2, v9}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mView:Landroid/view/View;

    const v6, 0x7f090027

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Gallery;

    iput-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mGallery:Landroid/widget/Gallery;

    .line 81
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mGallery:Landroid/widget/Gallery;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/Gallery;->setSpacing(I)V

    .line 82
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->mGallery:Landroid/widget/Gallery;

    new-instance v6, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->getContext()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6}, Landroid/widget/Gallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 84
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->prepare()V

    .line 86
    return-void

    .line 61
    :cond_3
    invoke-virtual {v3, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 69
    :cond_4
    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 76
    :cond_5
    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 213
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->getPopup()Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->getPopup()Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->dismiss()V

    :goto_0
    move v0, v1

    .line 224
    :goto_1
    return v0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerDashboard;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 224
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
