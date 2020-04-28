.class public Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XMLConfigurationHandler.java"


# static fields
.field private static final TAG_BANNER_POSITION:Ljava/lang/String; = "bannerPosition"

.field private static final TAG_CONTENT:Ljava/lang/String; = "content"

.field private static final TAG_CONTENT_HEIGHT:Ljava/lang/String; = "height"

.field private static final TAG_CONTENT_PROTECTION:Ljava/lang/String; = "contentProtection"

.field private static final TAG_CONTENT_WIDTH:Ljava/lang/String; = "width"

.field private static final TAG_FULL_SCREEN_MODE:Ljava/lang/String; = "fullScreenMode"

.field private static final TAG_ID:Ljava/lang/String; = "id"

.field private static final TAG_LINK:Ljava/lang/String; = "link"

.field private static final TAG_LOCATON_URL:Ljava/lang/String; = "locationUrl"

.field private static final TAG_LOGIN:Ljava/lang/String; = "login"

.field private static final TAG_NAME:Ljava/lang/String; = "name"

.field private static final TAG_PASSWORD:Ljava/lang/String; = "password"

.field private static final TAG_RATE_ITEM_VISIBILITY:Ljava/lang/String; = "rateItemVisibility"

.field private static final TAG_REGISTERED_URL:Ljava/lang/String; = "registeredUrl"

.field private static final TAG_TAB_ICON:Ljava/lang/String; = "tabIcon"

.field private static final TAG_TAB_NAME:Ljava/lang/String; = "tabName"

.field private static final TAG_UPDATE:Ljava/lang/String; = "update"

.field private static final TAG_USAGE:Ljava/lang/String; = "usage"

.field private static final TAG_USER_INTERFACE:Ljava/lang/String; = "userInterface"

.field private static final TAG_WIDGET_NAME:Ljava/lang/String; = "widgetName"


# instance fields
.field private _currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

.field private builder:Ljava/lang/StringBuilder;

.field private current2ndParentTag:Ljava/lang/String;

.field private currentParentTag:Ljava/lang/String;

.field private webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 13
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const-string v4, ""

    .line 53
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    .line 54
    invoke-static {p1, p2, p3}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\t"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string v7, "contentProtection"

    const-string v4, "content"

    const-string v3, "link"

    const-string v5, ""

    .line 94
    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "fullScreenMode"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const-string v1, ""

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    .line 191
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 192
    return-void

    .line 98
    :cond_1
    const-string v1, "registeredUrl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "usage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "locationUrl"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "content"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "contentProtection"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    :cond_2
    const-string v1, ""

    iput-object v5, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 105
    const-string v1, "content"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getWidgetsController()Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-interface {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;->addWidget(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V

    .line 108
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    goto :goto_0

    .line 111
    :cond_3
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    const-string v2, "fullScreenMode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 112
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_4
    const-string v1, "name"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 117
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 119
    :cond_5
    const-string v1, "link"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 120
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    if-eqz v1, :cond_0

    .line 121
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 122
    :cond_6
    const-string v1, "update"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 123
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 125
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setUpdateTime(I)V

    goto/16 :goto_0

    .line 127
    :cond_7
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-virtual {v1, v6}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setUpdateTime(I)V

    goto/16 :goto_0

    .line 128
    :cond_8
    const-string v1, "width"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 129
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setWidth(I)V

    goto/16 :goto_0

    .line 131
    :cond_9
    const-string v1, "height"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 132
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setHeight(I)V

    goto/16 :goto_0

    .line 135
    :cond_a
    const-string v1, "tabName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 136
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setTabName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_b
    const-string v1, "tabIcon"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->setTabIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 143
    :cond_c
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v2, "registeredUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 144
    const-string v1, "link"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setRegisteredUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_d
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v2, "usage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 148
    const-string v1, "link"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setAddUsageUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 151
    :cond_e
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v2, "locationUrl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 152
    const-string v1, "link"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setLocationUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 155
    :cond_f
    const-string v1, "id"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 156
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\n"

    const-string v4, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\t"

    const-string v4, ""

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setApplicationId(I)V

    goto/16 :goto_0

    .line 159
    :cond_10
    const-string v1, "widgetName"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 160
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setWidgetName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_11
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    const-string v2, "contentProtection"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 162
    const-string v1, "login"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 163
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setHttpAccessLogin(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 164
    :cond_12
    const-string v1, "password"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setHttpAccessPassword(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    :cond_13
    const-string v1, "userInterface"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 168
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    .local v0, "value":Ljava/lang/String;
    const-string v1, "standard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 170
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V

    goto/16 :goto_0

    .line 171
    :cond_14
    const-string v1, "custom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V

    goto/16 :goto_0

    .line 174
    .end local v0    # "value":Ljava/lang/String;
    :cond_15
    const-string v1, "bannerPosition"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 175
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "value":Ljava/lang/String;
    const-string v1, "top"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 177
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->TOP:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setBannerPosition(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;)V

    goto/16 :goto_0

    .line 178
    :cond_16
    const-string v1, "bottom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    sget-object v2, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;->BOTTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setBannerPosition(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$BannerPosition;)V

    goto/16 :goto_0

    .line 181
    .end local v0    # "value":Ljava/lang/String;
    :cond_17
    const-string v1, "rateItemVisibility"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "value":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 184
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setRateItemVisibility(Z)V

    goto/16 :goto_0

    .line 186
    :cond_18
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-virtual {v1, v6}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->setRateItemVisibility(Z)V

    goto/16 :goto_0
.end method

.method public getWebWidgetConfigutation()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    return-object v0
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0}, Lorg/xml/sax/helpers/DefaultHandler;->startDocument()V

    .line 64
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    invoke-direct {v0}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->webWidgetConfigutation:Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->builder:Ljava/lang/StringBuilder;

    .line 66
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 74
    const-string v0, "fullScreenMode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->current2ndParentTag:Ljava/lang/String;

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const-string v0, "registeredUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_2
    const-string v0, "usage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 79
    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_3
    const-string v0, "locationUrl"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_4
    const-string v0, "content"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 83
    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    .line 84
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-direct {v0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;-><init>()V

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->_currentWidgetEntity:Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    goto :goto_0

    .line 85
    :cond_5
    const-string v0, "contentProtection"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iput-object p2, p0, Lcom/appsgeyser/wWindowsHotmail/Utils/XMLConfigurationHandler;->currentParentTag:Ljava/lang/String;

    goto :goto_0
.end method
