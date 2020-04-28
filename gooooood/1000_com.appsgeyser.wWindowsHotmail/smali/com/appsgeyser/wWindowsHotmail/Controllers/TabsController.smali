.class public Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;
.super Ljava/lang/Object;
.source "TabsController.java"

# interfaces
.implements Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;


# instance fields
.field private _activeWidgetId:Ljava/lang/String;

.field private _tabContentsCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;",
            ">;"
        }
    .end annotation
.end field

.field private _tabTagsCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabTagsCollection:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    .line 29
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 109
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    .end local p0    # "this":Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    invoke-interface {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;->destroy()V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public initWithTabs(Ljava/util/Enumeration;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "wdgtsEnumerator":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;>;"
    :try_start_0
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v4

    .line 35
    .local v4, "activity":Landroid/app/Activity;
    const v17, 0x7f0b0010

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 36
    .local v5, "contentPanel":Landroid/widget/FrameLayout;
    const v17, 0x7f0b0011

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 38
    .local v15, "tagPanel":Landroid/widget/LinearLayout;
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 39
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 40
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    .line 42
    const/4 v6, 0x0

    .line 43
    .local v6, "count":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 44
    invoke-interface/range {p1 .. p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .line 45
    .local v16, "wdgt":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 46
    invoke-virtual/range {v16 .. v16}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    .line 48
    :cond_0
    const/4 v10, 0x0

    .line 50
    .local v10, "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v17

    sget-object v18, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->WEB:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getTabContentController(Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    move-result-object v13

    .line 51
    .local v13, "tabContCtrlr":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object v0, v12

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v12, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-interface {v13, v5}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;->createTabContent(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 53
    .local v7, "current":Landroid/view/View;
    invoke-virtual {v5, v7, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/4 v10, 0x0

    .line 58
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getTabTagController(Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;

    move-result-object v14

    .line 59
    .local v14, "tabTagCtrlr":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .end local v10    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v17, -0x1

    const/16 v18, -0x1

    const/high16 v19, 0x3f800000    # 1.0f

    move-object v0, v10

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 60
    .restart local v10    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-interface {v14}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;->createTabTag()Landroid/view/View;

    move-result-object v17

    move-object v0, v15

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabTagsCollection:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v16}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v14

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    goto/16 :goto_0

    .line 65
    .end local v7    # "current":Landroid/view/View;
    .end local v10    # "linearParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v12    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "tabContCtrlr":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
    .end local v14    # "tabTagCtrlr":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;
    .end local v16    # "wdgt":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    :cond_1
    const/16 v17, 0x1

    move v0, v6

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 66
    const/16 v17, 0x8

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->onTabSelected(Ljava/lang/String;)V

    .line 81
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "contentPanel":Landroid/widget/FrameLayout;
    .end local v6    # "count":I
    .end local v15    # "tagPanel":Landroid/widget/LinearLayout;
    :goto_2
    return-void

    .line 67
    .restart local v4    # "activity":Landroid/app/Activity;
    .restart local v5    # "contentPanel":Landroid/widget/FrameLayout;
    .restart local v6    # "count":I
    .restart local v15    # "tagPanel":Landroid/widget/LinearLayout;
    :cond_3
    if-nez v6, :cond_2

    .line 68
    const/16 v17, 0x8

    move-object v0, v15

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 69
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v17

    sget-object v18, Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;->NO_CONTENT_MESSSAGE:Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;

    invoke-virtual/range {v17 .. v18}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getTabContent(Lcom/appsgeyser/wWindowsHotmail/Views/TabContent$ContentType;)Landroid/view/View;

    move-result-object v11

    .line 70
    .local v11, "noContentView":Landroid/view/View;
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v17, -0x1

    const/16 v18, -0x1

    move-object v0, v9

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v9, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5, v11, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 76
    .end local v4    # "activity":Landroid/app/Activity;
    .end local v5    # "contentPanel":Landroid/widget/FrameLayout;
    .end local v6    # "count":I
    .end local v9    # "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "noContentView":Landroid/view/View;
    .end local v15    # "tagPanel":Landroid/widget/LinearLayout;
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 77
    .local v8, "e":Ljava/lang/Exception;
    const-string v17, "initWithTabs Error"

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "initWithTabs Error"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onBackKeyDown()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;
    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    invoke-interface {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;->onBackKeyDown()V

    .line 105
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 117
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 118
    .end local p0    # "this":Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    invoke-interface {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;->onPause()V

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 126
    .end local p0    # "this":Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;
    .local v0, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    invoke-interface {p0}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;->onResume()V

    goto :goto_0

    .line 129
    :cond_0
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 8
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 85
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabTagsCollection:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 86
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 88
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 89
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;

    .line 90
    .local v4, "tag":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;
    iget-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_tabContentsCollection:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;

    .line 91
    .local v0, "content":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 92
    invoke-interface {v4, v7}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;->setActiveState(Z)V

    .line 93
    invoke-interface {v0, v7}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;->setActiveState(Z)V

    goto :goto_0

    .line 95
    :cond_0
    invoke-interface {v4, v6}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;->setActiveState(Z)V

    .line 96
    invoke-interface {v0, v6}, Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;->setActiveState(Z)V

    goto :goto_0

    .line 99
    .end local v0    # "content":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "tag":Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabTagController;
    :cond_1
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Controllers/TabsController;->_activeWidgetId:Ljava/lang/String;

    .line 100
    return-void
.end method
