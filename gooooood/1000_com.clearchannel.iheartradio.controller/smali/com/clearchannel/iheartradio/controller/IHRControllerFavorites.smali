.class public Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;
.source "IHRControllerFavorites.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites$IHRFavorites;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;-><init>()V

    return-void
.end method


# virtual methods
.method protected createContainerView()Landroid/view/ViewGroup;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites$IHRFavorites;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites$IHRFavorites;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;Landroid/content/Context;)V

    return-object v0
.end method

.method protected createHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;->createHeaderView(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected createHeaderView(I)Landroid/view/View;
    .locals 2
    .param p1, "inID"    # I

    .prologue
    .line 20
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "result":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    const v1, 0x7f02007d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 24
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 25
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    return-object v0
.end method

.method protected createListView()Landroid/widget/ListView;
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewFavorites;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewFavorites;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;)V

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "inView"    # Landroid/view/View;

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;
    check-cast p0, Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRActivity;->pushTagged()V

    .line 38
    return-void
.end method
