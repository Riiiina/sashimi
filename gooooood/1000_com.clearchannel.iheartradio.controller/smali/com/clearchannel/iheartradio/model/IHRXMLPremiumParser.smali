.class public Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;
.super Lcom/clearchannel/iheartradio/model/IHRXMLParser;
.source "IHRXMLPremiumParser.java"


# instance fields
.field public _channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public _current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public _day:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public _key:Ljava/lang/String;

.field public _premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public _premium_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field public _schedule:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public _schedule_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field public _value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRXMLParser;-><init>()V

    return-void
.end method


# virtual methods
.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inName"    # Ljava/lang/String;
    .param p3, "inQualified"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 54
    const-string v1, "day"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_day:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 56
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_day:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 57
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    const-string v1, "schedule"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "days"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 62
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 63
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    goto :goto_0

    .line 64
    :cond_2
    const-string v1, "channel"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 65
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "site"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "site":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    .line 68
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "delegate_url"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "delegate_url"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 69
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "delegate_url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "delegate_url"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    sget-object v2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->kMap:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    sget-object v2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->kMap:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 72
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    sget-object v2, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->kMap:[Ljava/lang/String;

    aget-object v2, v2, v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    sget-object v5, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->kMap:[Ljava/lang/String;

    aget-object v5, v5, v7

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_4
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "validate_url"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "validate_url"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 75
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "validate_url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v5, "validate_url"

    invoke-virtual {v4, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 80
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 81
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    goto/16 :goto_0

    .line 82
    .end local v0    # "site":Ljava/lang/String;
    :cond_6
    const-string v1, "premium"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 83
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    const-string v2, "channels"

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 85
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    goto/16 :goto_0

    .line 86
    :cond_7
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_key:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_key:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->mContents:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iput-object v6, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_key:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "inURL"    # Ljava/lang/String;
    .param p2, "inName"    # Ljava/lang/String;
    .param p3, "inQualified"    # Ljava/lang/String;
    .param p4, "inAttributes"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 97
    const-string v0, "day"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_day:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 99
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_day:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 115
    :cond_0
    :goto_0
    const-string v0, ""

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->mContents:Ljava/lang/String;

    .line 116
    return-void

    .line 100
    :cond_1
    const-string v0, "schedule"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 102
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 103
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_schedule:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    goto :goto_0

    .line 104
    :cond_2
    const-string v0, "channel"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 105
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 106
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_channel:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    goto :goto_0

    .line 107
    :cond_3
    const-string v0, "premium"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium_array:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 109
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .line 110
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_premium:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    goto :goto_0

    .line 111
    :cond_4
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_current:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    if-eqz v0, :cond_0

    .line 112
    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRXMLPremiumParser;->_key:Ljava/lang/String;

    goto :goto_0
.end method
