.class Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;
.super Ljava/lang/Object;
.source "PublishDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->setUpView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;)Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x0

    .line 126
    const-string v2, ""

    .line 127
    .local v2, "encodedIdentifier":Ljava/lang/String;
    const-string v3, "Listen"

    .line 129
    .local v3, "linkTitle":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$0(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$0(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5, v6}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$1(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;Ljava/lang/String;)V

    .line 130
    :cond_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$2(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$2(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5, v6}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$3(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;Ljava/lang/String;)V

    .line 132
    :cond_3
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$4(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 134
    :try_start_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$4(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 135
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "video&"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$4(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$5(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;Ljava/lang/String;)V

    .line 136
    const-string v3, "Watch"
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "encodedIdentifier":Ljava/lang/String;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$4(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/String;-><init>([B)V

    .line 144
    .restart local v2    # "encodedIdentifier":Ljava/lang/String;
    :cond_4
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$6(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, "msg":Ljava/lang/String;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    const/4 v4, 0x0

    .line 147
    :cond_6
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 148
    .local v0, "data":Ljava/util/Hashtable;
    if-eqz v4, :cond_7

    const-string v5, "message"

    invoke-virtual {v0, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_7
    const-string v5, "link"

    const-string v6, "http://www.iheartradio.com/"

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v5, "picture"

    const-string v6, "http://www.iheartradio.com/cc-common/mlib/8169/04/8169_1271368570.jpg"

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v5, "name"

    const-string v6, "iheartradio"

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$0(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const-string v5, "caption"

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v6}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$0(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_8
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$2(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    const-string v5, "description"

    iget-object v6, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v6}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$2(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_9
    const-string v5, "actions"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "{\"name\": \""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\", \"link\": \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "http://www.iheartradio.com/share?q="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\"}"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2$1;

    invoke-direct {v6, p0, v0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2$1;-><init>(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;Ljava/util/Hashtable;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 167
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 168
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Publish request was successfully sent."

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 169
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->dismiss()V

    .line 170
    return-void

    .line 137
    .end local v0    # "data":Ljava/util/Hashtable;
    .end local v4    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 138
    .local v1, "e":Ljava/lang/NumberFormatException;
    iget-object v5, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "station&"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$2;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$4(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->access$5(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
