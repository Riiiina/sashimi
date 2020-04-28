.class public Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;
.super Ljava/lang/Object;
.source "IHRSingleSignOn.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;,
        Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCheckToken;,
        Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseCreateUser;,
        Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseForgotPassword;,
        Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseLogin;,
        Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponsePartnerLogin;,
        Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;,
        Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;
    }
.end annotation


# static fields
.field public static final SDF:Ljava/text/SimpleDateFormat;

.field public static final k_CHECK_TOKEN:I = 0x66

.field public static final k_FORGOT_PASSWORD:I = 0x69

.field public static final k_LOGIN:I = 0x67

.field public static final k_PARTNER_LOGIN:I = 0x68

.field public static final k_SIGN_UP:I = 0x65


# instance fields
.field private delegate:Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 31
    const-string v1, "yyyy-MM-dd"

    .line 30
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->SDF:Ljava/text/SimpleDateFormat;

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;)V
    .locals 0
    .param p1, "delegate"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->delegate:Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;

    .line 43
    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;Ljava/util/Hashtable;I)V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request_(Ljava/util/Hashtable;I)V

    return-void
.end method

.method private buildRequest(Ljava/util/Hashtable;I)V
    .locals 11
    .param p1, "pairs"    # Ljava/util/Hashtable;
    .param p2, "type"    # I

    .prologue
    .line 68
    const/4 v4, 0x0

    .line 69
    .local v4, "response":Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    const/4 v2, 0x0

    .line 70
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;

    invoke-direct {v5}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;-><init>()V

    .line 71
    .local v5, "result":Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;
    const-string v8, "apikey"

    const-string v9, "QW5kcm9pZHwzfHhtbHwzLjE="

    invoke-virtual {v5, v8, v9}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const/4 v6, 0x0

    .line 74
    .local v6, "url":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 110
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Wrong type: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 78
    :pswitch_0
    const-string v6, "http://stg02-service.ccrd.clearchannel.com/mobileservices/login_create"

    .line 79
    const-string v8, "email"

    const-string v9, "email"

    invoke-virtual {p1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v8, "password"

    const-string v9, "password"

    invoke-virtual {p1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v8, "firstname"

    const-string v9, "displayname"

    invoke-virtual {p1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v8, "username"

    const-string v9, "displayname"

    invoke-virtual {p1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    :try_start_0
    invoke-static {v6}, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->request(Ljava/lang/String;)[B

    move-result-object v3

    .line 116
    .local v3, "resp":[B
    new-instance v7, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v7, v3, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 117
    .local v7, "xmlResponse":Ljava/lang/String;
    invoke-static {v7}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->parse(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 124
    .end local v3    # "resp":[B
    .end local v7    # "xmlResponse":Ljava/lang/String;
    :goto_1
    iget-object v8, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->delegate:Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;

    invoke-interface {v8, v4, p2, v2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;->onSSOResponse(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;ILjava/lang/Exception;)V

    .line 125
    return-void

    .line 89
    :pswitch_1
    const-string v6, "http://stg02-service.ccrd.clearchannel.com/mobileservices/login"

    .line 90
    const-string v8, "email"

    const-string v9, "email"

    invoke-virtual {p1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v8, "password"

    const-string v9, "password"

    invoke-virtual {p1, v9}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->append(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRURLEncoder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "arguments":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x3f

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gez v9, :cond_0

    const-string v9, "?"

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 95
    goto :goto_0

    .line 93
    :cond_0
    const-string v9, "&"

    goto :goto_2

    .line 98
    .end local v0    # "arguments":Ljava/lang/String;
    :pswitch_2
    const-string v6, "http://stg02-service.ccrd.clearchannel.com/mobileservices/partner_login"

    .line 100
    goto :goto_0

    .line 103
    :pswitch_3
    const-string v6, "http://stg02-service.ccrd.clearchannel.com/mobileservices/login_check"

    .line 104
    goto :goto_0

    .line 107
    :pswitch_4
    const-string v6, "http://service.ccrd.clearchannel.com/service/login_forgot_password/"

    .line 108
    goto :goto_0

    .line 119
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    move-object v2, v1

    goto :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public static parse(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    .locals 7
    .param p0, "xml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 613
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 616
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 618
    .local v5, "xmlReader":Lorg/xml/sax/XMLReader;
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;)V

    .line 619
    .local v4, "ssoHandler":Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;
    invoke-interface {v5, v4}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 622
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 624
    .local v0, "is":Ljava/io/ByteArrayInputStream;
    new-instance v6, Lorg/xml/sax/InputSource;

    invoke-direct {v6, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v5, v6}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 628
    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$SSOHandler;->getResponse()Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    move-result-object v1

    .line 630
    .local v1, "resp":Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    return-object v1
.end method

.method private request_(Ljava/util/Hashtable;I)V
    .locals 10
    .param p1, "pairs"    # Ljava/util/Hashtable;
    .param p2, "type"    # I

    .prologue
    .line 128
    const/4 v3, 0x0

    .line 129
    .local v3, "response":Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    const/4 v1, 0x0

    .line 131
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 132
    .local v4, "url":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 154
    :try_start_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Wrong type: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    move-object v1, v0

    .line 175
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->delegate:Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;

    invoke-interface {v7, v3, p2, v1}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;->onSSOResponse(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;ILjava/lang/Exception;)V

    .line 176
    return-void

    .line 135
    :pswitch_0
    :try_start_1
    const-string v4, "http://service.ccrd.clearchannel.com/service/login_create/"

    .line 157
    :goto_1
    invoke-static {p1}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->toXml(Ljava/util/Hashtable;)Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "xmlRequest":Ljava/lang/String;
    const/4 v6, 0x0

    .line 167
    .local v6, "xmlResponse":Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/clearchannel/iheartradio/model/IHRHTTPClient;->request(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 169
    .local v2, "resp":[B
    new-instance v6, Ljava/lang/String;

    .end local v6    # "xmlResponse":Ljava/lang/String;
    const-string v7, "UTF-8"

    invoke-direct {v6, v2, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 171
    .restart local v6    # "xmlResponse":Ljava/lang/String;
    invoke-static {v6}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->parse(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

    move-result-object v3

    goto :goto_0

    .line 139
    .end local v2    # "resp":[B
    .end local v5    # "xmlRequest":Ljava/lang/String;
    .end local v6    # "xmlResponse":Ljava/lang/String;
    :pswitch_1
    const-string v4, "http://service.ccrd.clearchannel.com/service/login/"

    .line 140
    goto :goto_1

    .line 143
    :pswitch_2
    const-string v4, "http://service.ccrd.clearchannel.com/service/login_partner/"

    .line 144
    goto :goto_1

    .line 147
    :pswitch_3
    const-string v4, "http://service.ccrd.clearchannel.com/service/login_check/"

    .line 148
    goto :goto_1

    .line 151
    :pswitch_4
    const-string v4, "http://service.ccrd.clearchannel.com/service/login_forgot_password/"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 152
    goto :goto_1

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static toDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "item"    # Ljava/lang/String;

    .prologue
    .line 180
    :try_start_0
    sget-object v1, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 182
    :goto_0
    return-object v1

    .line 181
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 182
    .local v0, "e":Ljava/text/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static toInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "item"    # Ljava/lang/String;

    .prologue
    .line 188
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 190
    :goto_0
    return v1

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static toXml(Ljava/util/Hashtable;)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # Ljava/util/Hashtable;

    .prologue
    .line 195
    new-instance v0, Ljava/lang/StringBuffer;

    .line 196
    const-string v5, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"

    .line 195
    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const-string v5, "<sso>\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    .line 200
    .local v2, "keysEnum":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-nez v5, :cond_0

    .line 215
    const-string v5, "</sso>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 201
    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 203
    .local v3, "value":Ljava/lang/Object;
    instance-of v5, v3, Ljava/util/Date;

    if-eqz v5, :cond_2

    .line 204
    sget-object v5, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->SDF:Ljava/text/SimpleDateFormat;

    invoke-virtual {v5, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 213
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "   <"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 205
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 208
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "value":Ljava/lang/Object;
    .local v4, "value":Ljava/lang/String;
    move-object v3, v4

    .restart local v3    # "value":Ljava/lang/Object;
    goto :goto_1

    .line 209
    .end local v4    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static utf8ToUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "utf8String"    # Ljava/lang/String;

    .prologue
    .line 224
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v0

    .line 227
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public request(Ljava/util/Hashtable;I)V
    .locals 1
    .param p1, "pairs"    # Ljava/util/Hashtable;
    .param p2, "type"    # I

    .prologue
    .line 46
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;-><init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;Ljava/util/Hashtable;I)V

    .line 63
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;->start()V

    .line 64
    return-void
.end method
