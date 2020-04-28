.class public Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;
.super Ljava/lang/Object;
.source "TabTagController.java"

# interfaces
.implements Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;


# instance fields
.field _tabTag:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

.field _tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

.field _widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;


# direct methods
.method public constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V
    .locals 1
    .param p1, "tabsCtrlr"    # Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;
    .param p2, "wdgtInfo"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabTag:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

    .line 16
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    .line 17
    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .line 18
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 21
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabTag:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

    invoke-virtual {v1, p0}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;->init(Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;)V

    .line 22
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v0

    .line 23
    .local v0, "param":Ljava/lang/String;
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabTag:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;->setIcon(Ljava/lang/String;)V

    .line 24
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabTag:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

    invoke-virtual {v1, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;->setTitle(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public createTabTag()Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 33
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ICON_LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    .line 39
    .local v1, "type":Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
    :goto_0
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getTabTag(Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "contentView":Landroid/view/View;
    check-cast v0, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

    .end local v0    # "contentView":Landroid/view/View;
    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabTag:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

    .line 41
    invoke-direct {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->init()V

    .line 43
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabTag:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

    return-object v2

    .line 35
    .end local v1    # "type":Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
    :cond_0
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->ICON:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    .restart local v1    # "type":Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
    goto :goto_0

    .line 37
    .end local v1    # "type":Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
    :cond_1
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;->LABEL:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;

    .restart local v1    # "type":Lcom/appsgeyser/wWindowsHotmail/Views/TabTag$TagType;
    goto :goto_0
.end method

.method public onTagSelected()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabsController:Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_widgetInfo:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;->onTabSelected(Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public setActiveState(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabTagController;->_tabTag:Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;

    invoke-virtual {v0, p1}, Lcom/appsgeyser/wWindowsHotmail/Views/TabTag;->setActiveState(Z)V

    .line 54
    return-void
.end method
