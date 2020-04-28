.class public Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;
    }
.end annotation


# static fields
.field private static _instance:Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;


# instance fields
.field private _activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

.field private _tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

.field private _widgetsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_instance:Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;

    invoke-direct {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_widgetsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    .line 20
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;

    invoke-direct {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    .line 21
    return-void
.end method

.method public static getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_instance:Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    invoke-direct {v0}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;-><init>()V

    sput-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_instance:Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    .line 27
    :cond_0
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_instance:Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    return-object v0
.end method


# virtual methods
.method public Init(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .line 39
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    iput-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_widgetsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    .line 32
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    invoke-interface {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;->destroy()V

    .line 33
    iput-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    .line 34
    sput-object v1, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_instance:Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    .line 35
    return-void
.end method

.method public getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    return-object v0
.end method

.method public getTabContent(Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;)Landroid/view/View;
    .locals 5
    .param p1, "type"    # Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    if-nez v2, :cond_0

    .line 55
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "MainActivity doesn\'t specified"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 57
    :cond_0
    const/4 v1, 0x0

    .line 58
    .local v1, "tcRes":Landroid/view/View;
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabContent$ContentType:[I

    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 69
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unknown Content Type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    :pswitch_0
    const v2, 0x7f030008

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 71
    :goto_0
    return-object v1

    .line 65
    :pswitch_1
    const v2, 0x7f030005

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 66
    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getTabContentController(Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
    .locals 3
    .param p1, "type"    # Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;
    .param p2, "wdgtInfo"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 76
    .local v0, "tccRes":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabContent$ContentType:[I

    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 82
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Unknown Content Type"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :pswitch_0
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;

    .end local v0    # "tccRes":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
    invoke-direct {v0, p2}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WebContentController;-><init>(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V

    .line 84
    .restart local v0    # "tccRes":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
    return-object v0

    .line 76
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getTabTag(Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;)Landroid/view/View;
    .locals 6
    .param p1, "type"    # Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f030006

    .line 88
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    if-nez v2, :cond_0

    .line 89
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "MainActivity doesn\'t specified"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 91
    :cond_0
    const/4 v1, 0x0

    .line 92
    .local v1, "ttRes":Landroid/view/View;
    const/4 v0, 0x0

    .line 93
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Views$TabTag$TagType:[I

    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 107
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Unknown Tag Type"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 95
    :pswitch_0
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    :goto_0
    return-object v1

    .line 99
    :pswitch_1
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 100
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 101
    goto :goto_0

    .line 103
    :pswitch_2
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_activity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 105
    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getTabTagController(Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;
    .locals 1
    .param p1, "tabCtrlr"    # Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;
    .param p2, "wdgtInfo"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "ttcRes":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;

    .end local v0    # "ttcRes":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;
    invoke-direct {v0, p1, p2}, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;-><init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V

    .line 117
    .restart local v0    # "ttcRes":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;
    return-object v0
.end method

.method public getTabsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    return-object v0
.end method

.method public getWidgetsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->_widgetsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    return-object v0
.end method
