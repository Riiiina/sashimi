.class public Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;
.super Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;
.source "IHRFavoriteMenuPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private bSongs:Landroid/widget/Button;

.field private bStations:Landroid/widget/Button;

.field private controller:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

.field private inflater:Landroid/view/LayoutInflater;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "controller"    # Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .prologue
    .line 27
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;-><init>(Landroid/view/View;Ljava/lang/Boolean;)V

    .line 28
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->controller:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .line 29
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->onCreate()V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->controller:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->window:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->dismiss()V

    .line 83
    return-void
.end method

.method protected onCreate()V
    .locals 4

    .prologue
    .line 41
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->anchor:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->inflater:Landroid/view/LayoutInflater;

    .line 42
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->inflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030017

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->rootView:Landroid/view/ViewGroup;

    .line 44
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f090067

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->bSongs:Landroid/widget/Button;

    .line 45
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->rootView:Landroid/view/ViewGroup;

    const v2, 0x7f090066

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->bStations:Landroid/widget/Button;

    .line 47
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->bSongs:Landroid/widget/Button;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->controller:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getShowStations()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 48
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->bStations:Landroid/widget/Button;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->controller:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getShowStations()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 50
    move-object v0, p0

    .line 52
    .local v0, "popup":Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->bSongs:Landroid/widget/Button;

    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$1;

    invoke-direct {v2, p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->bStations:Landroid/widget/Button;

    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$2;

    invoke-direct {v2, p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow$2;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;->setContentView(Landroid/view/View;)V

    .line 67
    return-void

    .line 48
    .end local v0    # "popup":Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuPopupWindow;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
