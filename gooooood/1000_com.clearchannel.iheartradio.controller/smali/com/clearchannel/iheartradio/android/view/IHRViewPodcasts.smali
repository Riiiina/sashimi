.class public Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;
.super Ljava/lang/Object;
.source "IHRViewPodcasts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRViewPodcasts$tabName:[I

.field private static FAVORITES_TAB_TEXT:Ljava/lang/String;

.field private static STATION_TAB_TEXT:Ljava/lang/String;

.field private static VIDEO_TAB_TEXT:Ljava/lang/String;

.field private static ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;


# instance fields
.field private iHrController:Lcom/clearchannel/iheartradio/controller/IHRController;

.field private selectedView:Landroid/view/View;

.field private tabFavorites:Landroid/widget/TabHost$TabSpec;

.field private tabHost:Landroid/widget/TabHost;

.field private tabStation:Landroid/widget/TabHost$TabSpec;

.field private tabVideos:Landroid/widget/TabHost$TabSpec;

.field private tabView:Landroid/view/View;


# direct methods
.method static synthetic $SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRViewPodcasts$tabName()[I
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRViewPodcasts$tabName:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->values()[Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->favorites:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->stations:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->videos:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRViewPodcasts$tabName:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 5
    .param p1, "iHrController"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->iHrController:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 47
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->iHrController:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->STATION_TAB_TEXT:Ljava/lang/String;

    .line 48
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->iHrController:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->VIDEO_TAB_TEXT:Ljava/lang/String;

    .line 49
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->iHrController:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07004a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->FAVORITES_TAB_TEXT:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 51
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f03002b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabView:Landroid/view/View;

    .line 57
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabView:Landroid/view/View;

    const v2, 0x7f0900b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    .line 58
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->setup()V

    .line 59
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->STATION_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    .line 60
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->STATION_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02004e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 62
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->VIDEO_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabVideos:Landroid/widget/TabHost$TabSpec;

    .line 63
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabVideos:Landroid/widget/TabHost$TabSpec;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->VIDEO_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02004f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 65
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->FAVORITES_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    .line 66
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->FAVORITES_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02004d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    .line 71
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)Landroid/view/View;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->selectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$3(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)Landroid/widget/TabHost$TabSpec;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    return-object v0
.end method

.method static synthetic access$4(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->iHrController:Lcom/clearchannel/iheartradio/controller/IHRController;

    return-object v0
.end method

.method public static getIhrViewTab(Lcom/clearchannel/iheartradio/controller/IHRController;)Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;
    .locals 1
    .param p0, "iHrController"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 187
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    .line 190
    :cond_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->ihrViewTab:Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;

    return-object v0
.end method

.method private initializeListeners()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$5;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$5;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$6;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$6;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$7;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$7;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    return-void
.end method

.method public static setTabColor(Landroid/widget/TabHost;)V
    .locals 3
    .param p0, "tabhost"    # Landroid/widget/TabHost;

    .prologue
    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 198
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020042

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 200
    return-void

    .line 196
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020044

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getTabView()Landroid/view/View;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabView:Landroid/view/View;

    return-object v0
.end method

.method public setTabContent(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "tName"    # Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;

    .prologue
    const v2, 0x7f0900b5

    .line 75
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->selectedView:Landroid/view/View;

    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->$SWITCH_TABLE$com$clearchannel$iheartradio$android$view$IHRViewPodcasts$tabName()[I

    move-result-object v0

    .line 77
    invoke-virtual {p2}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$tabName;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 137
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->setTabColor(Landroid/widget/TabHost;)V

    .line 138
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$4;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$4;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 147
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$1;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 85
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 5
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabVideos:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 88
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabVideos:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 89
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 90
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 91
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->STATION_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 92
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->initializeListeners()V

    goto :goto_0

    .line 97
    :pswitch_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabVideos:Landroid/widget/TabHost$TabSpec;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$2;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$2;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 104
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 105
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 106
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabVideos:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 107
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 108
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 109
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->VIDEO_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 110
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->initializeListeners()V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    new-instance v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$3;

    invoke-direct {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts$3;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    .line 122
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 123
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabStation:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 124
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabVideos:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v2}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    .line 125
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabVideos:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 126
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabFavorites:Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 127
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->tabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->FAVORITES_TAB_TEXT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 128
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewPodcasts;->initializeListeners()V

    goto/16 :goto_0

    .line 77
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
