.class public Lcom/olivephone/cu/LoadChannelService;
.super Landroid/app/Service;
.source "LoadChannelService.java"


# instance fields
.field imageCount:Ljava/lang/String;

.field imageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field isAbleImageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isAbleTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field isAbleVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sp:Landroid/content/SharedPreferences;

.field textCount:Ljava/lang/String;

.field textList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field videoCount:Ljava/lang/String;

.field videoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/LoadChannelService;->textList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/LoadChannelService;->imageList:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/LoadChannelService;->videoList:Ljava/util/List;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/olivephone/cu/LoadChannelService;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/olivephone/cu/LoadChannelService;->loadFirstChannel()V

    return-void
.end method

.method static synthetic access$1(Lcom/olivephone/cu/LoadChannelService;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/olivephone/cu/LoadChannelService;->loadOtherChannel()V

    return-void
.end method

.method private loadFirstChannel()V
    .locals 13

    .prologue
    const-string v12, "textrss_list_size"

    const-string v8, "1"

    const-string v11, ""

    .line 39
    .line 40
    :try_start_0
    const-string v8, "1"

    .line 39
    invoke-static {p0, v8}, Lcom/olivephone/constant/URLConstant;->channelURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 40
    new-instance v9, Lcom/olivephone/parserxml/CateListHandler;

    invoke-direct {v9}, Lcom/olivephone/parserxml/CateListHandler;-><init>()V

    .line 39
    invoke-static {v8, v9}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->textList:Ljava/util/List;

    .line 41
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "channel="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    const-string v10, "1"

    .line 41
    invoke-static {p0, v10}, Lcom/olivephone/constant/URLConstant;->channelURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->sp:Landroid/content/SharedPreferences;

    const-string v9, "textrss_list_size"

    const-string v9, ""

    invoke-interface {v8, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->textCount:Ljava/lang/String;

    .line 47
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "kankan="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/olivephone/cu/LoadChannelService;->textCount:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->textCount:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->textCount:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 49
    :cond_0
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->textList:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->textList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 50
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 51
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->textList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_2

    .line 57
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v9, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(I)V

    .line 58
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_3

    .line 67
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_3
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v6, v8, :cond_6

    .line 71
    const-string v8, "textrss_list_size"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v12, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "XinWen="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "n":I
    :cond_1
    return-void

    .line 43
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 52
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "i":I
    :cond_2
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->textList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/CateList;

    .line 53
    .local v0, "cateList":Lcom/olivephone/model/CateList;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getCateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "str":Ljava/lang/String;
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 59
    .end local v0    # "cateList":Lcom/olivephone/model/CateList;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v4    # "j":I
    :cond_3
    add-int/lit8 v5, v4, 0x1

    .local v5, "k":I
    :goto_4
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_4

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 60
    :cond_4
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 61
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 63
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 59
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 68
    .end local v5    # "k":I
    .restart local v6    # "n":I
    :cond_6
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v8, "n="

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "text"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleTextList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3
.end method

.method private loadOtherChannel()V
    .locals 15

    .prologue
    const-string v14, "videorss_list_size"

    const-string v13, "imagerss_list_size"

    const-string v12, "-"

    const-string v11, ""

    .line 97
    const-string v8, "Demo"

    const-string v9, "loadOtherChannel start"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :try_start_0
    const-string v8, "2"

    .line 100
    invoke-static {p0, v8}, Lcom/olivephone/constant/URLConstant;->channelURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 101
    new-instance v9, Lcom/olivephone/parserxml/CateListHandler;

    invoke-direct {v9}, Lcom/olivephone/parserxml/CateListHandler;-><init>()V

    .line 100
    invoke-static {v8, v9}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->imageList:Ljava/util/List;

    .line 103
    const-string v8, "0"

    .line 102
    invoke-static {p0, v8}, Lcom/olivephone/constant/URLConstant;->channelURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 103
    new-instance v9, Lcom/olivephone/parserxml/CateListHandler;

    invoke-direct {v9}, Lcom/olivephone/parserxml/CateListHandler;-><init>()V

    .line 102
    invoke-static {v8, v9}, Lcom/olivephone/parserxml/ParserXML;->getData(Ljava/lang/String;Lcom/olivephone/parserxml/DefaultHandler;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->videoList:Ljava/util/List;

    .line 104
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->sp:Landroid/content/SharedPreferences;

    const-string v9, "imagerss_list_size"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->imageCount:Ljava/lang/String;

    .line 105
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->sp:Landroid/content/SharedPreferences;

    const-string v9, "videorss_list_size"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->videoCount:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->imageCount:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->imageCount:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 112
    :cond_0
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->imageList:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->imageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 113
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 115
    .local v2, "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->imageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_4

    .line 121
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_5

    .line 129
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_3
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v6, v8, :cond_8

    .line 132
    const-string v8, "imagerss_list_size"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v13, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 133
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 138
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "n":I
    :cond_1
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->videoCount:Ljava/lang/String;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->videoCount:Ljava/lang/String;

    const-string v9, ""

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 139
    :cond_2
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->videoList:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->videoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 140
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 142
    .restart local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->videoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v3, v8, :cond_9

    .line 148
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v4, v8, :cond_a

    .line 156
    const/4 v6, 0x0

    .restart local v6    # "n":I
    :goto_6
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v6, v8, :cond_d

    .line 159
    const-string v8, "videorss_list_size"

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v14, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 164
    .end local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v6    # "n":I
    :cond_3
    return-void

    .line 107
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 116
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "ed":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "i":I
    :cond_4
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->imageList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/CateList;

    .line 117
    .local v0, "cateList":Lcom/olivephone/model/CateList;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getCateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "str":Ljava/lang/String;
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 122
    .end local v0    # "cateList":Lcom/olivephone/model/CateList;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v4    # "j":I
    :cond_5
    add-int/lit8 v5, v4, 0x1

    .local v5, "k":I
    :goto_7
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_6

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 123
    :cond_6
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 124
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 122
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 130
    .end local v5    # "k":I
    .restart local v6    # "n":I
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "image"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleImageList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 129
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .line 143
    .end local v4    # "j":I
    .end local v6    # "n":I
    :cond_9
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->videoList:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/olivephone/model/CateList;

    .line 144
    .restart local v0    # "cateList":Lcom/olivephone/model/CateList;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getCateId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "-"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Lcom/olivephone/model/CateList;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 145
    .restart local v7    # "str":Ljava/lang/String;
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_4

    .line 149
    .end local v0    # "cateList":Lcom/olivephone/model/CateList;
    .end local v7    # "str":Ljava/lang/String;
    .restart local v4    # "j":I
    :cond_a
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "k":I
    :goto_8
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v5, v8, :cond_b

    .line 148
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_5

    .line 150
    :cond_b
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 151
    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 157
    .end local v5    # "k":I
    .restart local v6    # "n":I
    :cond_d
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "video"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v8, p0, Lcom/olivephone/cu/LoadChannelService;->isAbleVideoList:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v2, v9, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 156
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 169
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 35
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 36
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 81
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 82
    const-string v0, "USERINFO"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/olivephone/cu/LoadChannelService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/olivephone/cu/LoadChannelService;->sp:Landroid/content/SharedPreferences;

    .line 83
    new-instance v0, Lcom/olivephone/cu/LoadChannelService$1;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/LoadChannelService$1;-><init>(Lcom/olivephone/cu/LoadChannelService;)V

    .line 88
    invoke-virtual {v0}, Lcom/olivephone/cu/LoadChannelService$1;->start()V

    .line 89
    new-instance v0, Lcom/olivephone/cu/LoadChannelService$2;

    invoke-direct {v0, p0}, Lcom/olivephone/cu/LoadChannelService$2;-><init>(Lcom/olivephone/cu/LoadChannelService;)V

    .line 94
    invoke-virtual {v0}, Lcom/olivephone/cu/LoadChannelService$2;->start()V

    .line 95
    return-void
.end method
