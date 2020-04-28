.class Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;
.super Ljava/lang/Object;
.source "IHRListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MethodCall"
.end annotation


# instance fields
.field private args:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private methodName:Ljava/lang/String;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

.field private typeArgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;Ljava/lang/String;)V
    .locals 1
    .param p2, "methodName"    # Ljava/lang/String;

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 1583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->typeArgs:Ljava/util/ArrayList;

    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->args:Ljava/util/ArrayList;

    .line 1584
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->methodName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addArg(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 1588
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->typeArgs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1589
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->args:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1590
    return-void
.end method

.method public call()V
    .locals 1

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->methodName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->call(Ljava/lang/String;)V

    .line 1599
    return-void
.end method

.method public call(Ljava/lang/String;)V
    .locals 12
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 1616
    :try_start_0
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1618
    .local v2, "cls":Ljava/lang/Class;
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->args:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v1, v9, [Ljava/lang/Object;

    .line 1619
    .local v1, "argList":[Ljava/lang/Object;
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->args:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v6, v9, [Ljava/lang/Class;

    .line 1620
    .local v6, "partypes":[Ljava/lang/Class;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->args:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lt v4, v9, :cond_0

    .line 1625
    invoke-virtual {v2, p1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 1627
    .local v5, "meth":Ljava/lang/reflect/Method;
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v5, v9, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1628
    .local v7, "retobj":Ljava/lang/Object;
    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0

    .line 1635
    .end local v1    # "argList":[Ljava/lang/Object;
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v4    # "i":I
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v6    # "partypes":[Ljava/lang/Class;
    .end local v7    # "retobj":Ljava/lang/Object;
    :goto_1
    return-void

    .line 1621
    .restart local v1    # "argList":[Ljava/lang/Object;
    .restart local v2    # "cls":Ljava/lang/Class;
    .restart local v4    # "i":I
    .restart local v6    # "partypes":[Ljava/lang/Class;
    :cond_0
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->typeArgs:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    aput-object v9, v6, v4

    .line 1622
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->args:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    aput-object v9, v1, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1620
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1631
    .end local v1    # "argList":[Ljava/lang/Object;
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v4    # "i":I
    .end local v6    # "partypes":[Ljava/lang/Class;
    :catch_0
    move-exception v9

    move-object v3, v9

    .line 1633
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Failed to invoke function "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public callWithoutTrace()V
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->methodName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->call(Ljava/lang/String;)V

    .line 1595
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$30(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 1596
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->methodName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1602
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->methodName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, "str":Ljava/lang/String;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$MethodCall;->args:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1603
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1604
    .local v0, "o":Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
