.class public Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
.super Ljava/lang/Object;
.source "WidgetEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$1;,
        Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$DefaultWidgetType;
    }
.end annotation


# instance fields
.field private _height:I

.field private _id:Ljava/lang/String;

.field private _link:Ljava/lang/String;

.field private _name:Ljava/lang/String;

.field private _tabIcon:Ljava/lang/String;

.field private _tabName:Ljava/lang/String;

.field private _updateTime:I

.field private _width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_width:I

    .line 14
    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_height:I

    .line 15
    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_updateTime:I

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V
    .locals 1
    .param p1, "wdgt"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_width:I

    .line 14
    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_height:I

    .line 15
    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_updateTime:I

    .line 26
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_id:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_name:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_link:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_width:I

    .line 30
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_height:I

    .line 31
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getUpdateTime()I

    move-result v0

    iput v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_updateTime:I

    .line 32
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static createDefaultWidget(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$DefaultWidgetType;)Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    .locals 6
    .param p0, "type"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$DefaultWidgetType;

    .prologue
    const/16 v4, 0x12c

    const-string v5, ""

    .line 54
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-direct {v0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;-><init>()V

    .line 55
    .local v0, "tmpEntity":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$1;->$SwitchMap$com$appsgeyser$wWindowsHotmail$Model$WidgetEntity$DefaultWidgetType:[I

    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity$DefaultWidgetType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 68
    const/4 v0, 0x0

    .line 71
    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    const-string v1, "pausedwidget_0"

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_id:Ljava/lang/String;

    .line 58
    const-string v1, "PausedWidget"

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_name:Ljava/lang/String;

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getInstance()Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Factory/Factory;->getMainNavigationActivity()Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getConfig()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getWidgetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_link:Ljava/lang/String;

    .line 61
    iput v4, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_width:I

    .line 62
    iput v4, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_height:I

    .line 63
    const/4 v1, 0x0

    iput v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_updateTime:I

    .line 64
    const-string v1, ""

    iput-object v5, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 65
    const-string v1, ""

    iput-object v5, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    .locals 2
    .param p0, "wdgt"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .prologue
    .line 41
    new-instance v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    invoke-direct {v0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;-><init>()V

    .line 42
    .local v0, "tmpEntity":Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_id:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_name:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getLink()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_link:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_width:I

    .line 46
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_height:I

    .line 47
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getUpdateTime()I

    move-result v1

    iput v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_updateTime:I

    .line 48
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getTabName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getTabIcon()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 50
    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_link:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getTabIcon()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getTabName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_updateTime:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_height:I

    .line 107
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_id:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_link:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_name:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTabIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabIcon"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabIcon:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTabName(Ljava/lang/String;)V
    .locals 0
    .param p1, "tabName"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_tabName:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setUpdateTime(I)V
    .locals 0
    .param p1, "update"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_updateTime:I

    .line 114
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->_width:I

    .line 100
    return-void
.end method
