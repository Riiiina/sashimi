.class public Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;
.super Ljava/lang/Object;
.source "WidgetsController.java"

# interfaces
.implements Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;


# instance fields
.field private _widgetCollection:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    .line 17
    return-void
.end method


# virtual methods
.method public addWidget(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V
    .locals 2
    .param p1, "wdgt"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .prologue
    .line 21
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetEntityComparator;

    invoke-direct {v0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetEntityComparator;-><init>()V

    .line 23
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;>;"
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    return-void
.end method

.method public getEnumeration()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetById(Ljava/lang/String;)Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    .locals 4
    .param p1, "wdgtId"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v2, 0x0

    .line 30
    .local v2, "weResult":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    iget-object v3, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 31
    .local v0, "enumerator":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .line 33
    .local v1, "weCurrent":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    move-object v2, v1

    goto :goto_0

    .line 37
    .end local v1    # "weCurrent":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    :cond_1
    return-object v2
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    .line 55
    return-void
.end method

.method public removeWidgetById(Ljava/lang/String;)V
    .locals 3
    .param p1, "wdgtId"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 44
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .line 46
    .local v1, "weCurrent":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 50
    .end local v1    # "weCurrent":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    :cond_1
    return-void
.end method

.method public widgetsCount()I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetsController;->_widgetCollection:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
