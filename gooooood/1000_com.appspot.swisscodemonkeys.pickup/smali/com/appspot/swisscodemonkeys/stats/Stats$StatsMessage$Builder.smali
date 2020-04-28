.class public final Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;",
        "Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 772
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->buildParsed()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$12()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 1

    .prologue
    .line 735
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->create()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 774
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .line 775
    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    .line 776
    invoke-virtual {v0}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    .line 775
    throw v0

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 3

    .prologue
    .line 736
    new-instance v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;-><init>()V

    .line 737
    .local v0, "builder":Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    new-instance v1, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;-><init>(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)V

    iput-object v1, v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .line 738
    return-object v0
.end method


# virtual methods
.method public addAllEvent(Ljava/lang/Iterable;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;",
            ">;)",
            "Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;"
        }
    .end annotation

    .prologue
    .line 1322
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;>;"
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1323
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/util/List;)V

    .line 1325
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 1326
    return-object p0
.end method

.method public addEvent(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "builderForValue"    # Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/util/List;)V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->build()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    return-object p0
.end method

.method public addEvent(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .prologue
    .line 1304
    if-nez p1, :cond_0

    .line 1305
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1307
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1308
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/util/List;)V

    .line 1310
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1311
    return-object p0
.end method

.method public build()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->build()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 3

    .prologue
    .line 782
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    if-nez v1, :cond_0

    .line 783
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 784
    const-string v2, "build() has already been called on this Builder."

    .line 783
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_0
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-eq v1, v2, :cond_1

    .line 787
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .line 788
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 787
    invoke-static {v1, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/util/List;)V

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .line 791
    .local v0, "returnMe":Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .line 792
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 748
    const-string v1, "Cannot call clear() after build()."

    .line 747
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 750
    :cond_0
    new-instance v0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;-><init>(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .line 751
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->clear()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAllAppCount()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1175
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$26(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1176
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$27(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V

    .line 1177
    return-object p0
.end method

.method public clearAndroidId()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$10(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1014
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAndroidId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1015
    return-object p0
.end method

.method public clearAppName()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$12(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1035
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$13(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1036
    return-object p0
.end method

.method public clearAppVersion()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$14(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1056
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$15(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1057
    return-object p0
.end method

.method public clearEvent()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1329
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/util/List;)V

    .line 1330
    return-object p0
.end method

.method public clearInstallTime()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1157
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$24(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1158
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$25(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V

    .line 1159
    return-object p0
.end method

.method public clearLanguage()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$16(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1077
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$17(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1078
    return-object p0
.end method

.method public clearModel()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$36(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1278
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$37(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1279
    return-object p0
.end method

.method public clearNetworkCountry()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$32(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1236
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNetworkCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$33(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1237
    return-object p0
.end method

.method public clearNscm()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$20(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1119
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNscm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$21(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1120
    return-object p0
.end method

.method public clearPaidAppCount()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1193
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$28(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1194
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$29(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V

    .line 1195
    return-object p0
.end method

.method public clearScm()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$22(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1140
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getScm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$23(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1141
    return-object p0
.end method

.method public clearSdkVersion()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$30(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1215
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSdkVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$31(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1216
    return-object p0
.end method

.method public clearSendTimestamp()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 3

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$40(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1365
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$41(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V

    .line 1366
    return-object p0
.end method

.method public clearServerTimestamp()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 3

    .prologue
    .line 1346
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$38(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1347
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$39(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V

    .line 1348
    return-object p0
.end method

.method public clearSimCountry()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$34(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1257
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSimCountry()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$35(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1258
    return-object p0
.end method

.method public clearSysVersion()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$18(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1098
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSysVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$19(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1099
    return-object p0
.end method

.method public clearTimestamp()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 3

    .prologue
    .line 992
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$8(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 993
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$9(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V

    .line 994
    return-object p0
.end method

.method public clearVersion()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$6(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 975
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$7(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 976
    return-object p0
.end method

.method public clone()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2

    .prologue
    .line 755
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->create()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->clone()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/MessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->clone()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAllAppCount()I
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAllAppCount()I

    move-result v0

    return v0
.end method

.method public getAndroidId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1

    .prologue
    .line 759
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->getDefaultInstanceForType()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public getEvent(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getEvent(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v0

    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getEventCount()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstallTime()I
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getInstallTime()I

    move-result v0

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1224
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNetworkCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNscm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNscm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaidAppCount()I
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getPaidAppCount()I

    move-result v0

    return v0
.end method

.method public getScm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getScm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSendTimestamp()J
    .locals 2

    .prologue
    .line 1356
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSendTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getServerTimestamp()J
    .locals 2

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getServerTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSimCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSimCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSysVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSysVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasAllAppCount()Z
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAllAppCount()Z

    move-result v0

    return v0
.end method

.method public hasAndroidId()Z
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAndroidId()Z

    move-result v0

    return v0
.end method

.method public hasAppName()Z
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppName()Z

    move-result v0

    return v0
.end method

.method public hasAppVersion()Z
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppVersion()Z

    move-result v0

    return v0
.end method

.method public hasInstallTime()Z
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasInstallTime()Z

    move-result v0

    return v0
.end method

.method public hasLanguage()Z
    .locals 1

    .prologue
    .line 1062
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasLanguage()Z

    move-result v0

    return v0
.end method

.method public hasModel()Z
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasModel()Z

    move-result v0

    return v0
.end method

.method public hasNetworkCountry()Z
    .locals 1

    .prologue
    .line 1221
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNetworkCountry()Z

    move-result v0

    return v0
.end method

.method public hasNscm()Z
    .locals 1

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNscm()Z

    move-result v0

    return v0
.end method

.method public hasPaidAppCount()Z
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasPaidAppCount()Z

    move-result v0

    return v0
.end method

.method public hasScm()Z
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasScm()Z

    move-result v0

    return v0
.end method

.method public hasSdkVersion()Z
    .locals 1

    .prologue
    .line 1200
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSdkVersion()Z

    move-result v0

    return v0
.end method

.method public hasSendTimestamp()Z
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSendTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasServerTimestamp()Z
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasServerTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasSimCountry()Z
    .locals 1

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSimCountry()Z

    move-result v0

    return v0
.end method

.method public hasSysVersion()Z
    .locals 1

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSysVersion()Z

    move-result v0

    return v0
.end method

.method public hasTimestamp()Z
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasTimestamp()Z

    move-result v0

    return v0
.end method

.method public hasVersion()Z
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasVersion()Z

    move-result v0

    return v0
.end method

.method protected internalGetResult()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    return-object v0
.end method

.method protected bridge synthetic internalGetResult()Lcom/google/protobuf/GeneratedMessageLite;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->internalGetResult()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    return-object v0
.end method

.method public isInitialized()Z
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "other"    # Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    .prologue
    .line 796
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getDefaultInstance()Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-object p0

    .line 797
    :cond_1
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 798
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 800
    :cond_2
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasTimestamp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 801
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 803
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAndroidId()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 804
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAndroidId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 806
    :cond_4
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppName()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 807
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAppName(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 809
    :cond_5
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAppVersion()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 810
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAppVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 812
    :cond_6
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasLanguage()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 813
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setLanguage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 815
    :cond_7
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSysVersion()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 816
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSysVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSysVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 818
    :cond_8
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNscm()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 819
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNscm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setNscm(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 821
    :cond_9
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasScm()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 822
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getScm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setScm(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 824
    :cond_a
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasInstallTime()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 825
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getInstallTime()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setInstallTime(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 827
    :cond_b
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasAllAppCount()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 828
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getAllAppCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAllAppCount(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 830
    :cond_c
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasPaidAppCount()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 831
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getPaidAppCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setPaidAppCount(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 833
    :cond_d
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSdkVersion()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 834
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSdkVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 836
    :cond_e
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasNetworkCountry()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 837
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getNetworkCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setNetworkCountry(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 839
    :cond_f
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSimCountry()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 840
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSimCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSimCountry(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 842
    :cond_10
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasModel()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 843
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setModel(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 845
    :cond_11
    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 846
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 847
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$5(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/util/List;)V

    .line 849
    :cond_12
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 851
    :cond_13
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasServerTimestamp()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 852
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getServerTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setServerTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    .line 854
    :cond_14
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->hasSendTimestamp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->getSendTimestamp()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSendTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto/16 :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/CodedInputStream;
    .param p2, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 865
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 866
    .local v1, "tag":I
    sparse-switch v1, :sswitch_data_0

    .line 870
    invoke-virtual {p0, p1, p2, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 871
    :sswitch_0
    return-object p0

    .line 876
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 880
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 884
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAndroidId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 888
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAppName(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 892
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAppVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 896
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setLanguage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 900
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSysVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 904
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setNscm(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 908
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setScm(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 912
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setInstallTime(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 916
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setAllAppCount(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 920
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setPaidAppCount(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 924
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSdkVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 928
    :sswitch_e
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setNetworkCountry(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto :goto_0

    .line 932
    :sswitch_f
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSimCountry(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto/16 :goto_0

    .line 936
    :sswitch_10
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setModel(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto/16 :goto_0

    .line 940
    :sswitch_11
    invoke-static {}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;->newBuilder()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    move-result-object v0

    .line 941
    .local v0, "subBuilder":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 942
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->buildPartial()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->addEvent(Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto/16 :goto_0

    .line 946
    .end local v0    # "subBuilder":Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;
    :sswitch_12
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setServerTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto/16 :goto_0

    .line 950
    :sswitch_13
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->setSendTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    goto/16 :goto_0

    .line 866
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x50 -> :sswitch_a
        0x58 -> :sswitch_b
        0x60 -> :sswitch_c
        0x6a -> :sswitch_d
        0x72 -> :sswitch_e
        0x7a -> :sswitch_f
        0x82 -> :sswitch_10
        0x8a -> :sswitch_11
        0x90 -> :sswitch_12
        0x98 -> :sswitch_13
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1
    check-cast p1, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-virtual {p0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAllAppCount(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$26(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1171
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$27(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V

    .line 1172
    return-object p0
.end method

.method public setAndroidId(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1005
    if-nez p1, :cond_0

    .line 1006
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1008
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$10(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1009
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$11(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1010
    return-object p0
.end method

.method public setAppName(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1026
    if-nez p1, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$12(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1030
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$13(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1031
    return-object p0
.end method

.method public setAppVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1047
    if-nez p1, :cond_0

    .line 1048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1050
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$14(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1051
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$15(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1052
    return-object p0
.end method

.method public setEvent(ILcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent$Builder;->build()Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1301
    return-object p0
.end method

.method public setEvent(ILcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Lcom/appspot/swisscodemonkeys/stats/Stats$StatEvent;

    .prologue
    .line 1293
    if-nez p2, :cond_0

    .line 1294
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1296
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$4(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1297
    return-object p0
.end method

.method public setInstallTime(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1152
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$24(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1153
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$25(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V

    .line 1154
    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1068
    if-nez p1, :cond_0

    .line 1069
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$16(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1072
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$17(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1073
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1269
    if-nez p1, :cond_0

    .line 1270
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1272
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$36(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1273
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$37(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1274
    return-object p0
.end method

.method public setNetworkCountry(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1227
    if-nez p1, :cond_0

    .line 1228
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1230
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$32(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1231
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$33(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1232
    return-object p0
.end method

.method public setNscm(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1110
    if-nez p1, :cond_0

    .line 1111
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1113
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$20(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1114
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$21(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1115
    return-object p0
.end method

.method public setPaidAppCount(I)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 1188
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$28(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1189
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$29(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;I)V

    .line 1190
    return-object p0
.end method

.method public setScm(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1131
    if-nez p1, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$22(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1135
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$23(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1136
    return-object p0
.end method

.method public setSdkVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1206
    if-nez p1, :cond_0

    .line 1207
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1209
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$30(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1210
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$31(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1211
    return-object p0
.end method

.method public setSendTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$40(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1360
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$41(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V

    .line 1361
    return-object p0
.end method

.method public setServerTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$38(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1342
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$39(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V

    .line 1343
    return-object p0
.end method

.method public setSimCountry(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1248
    if-nez p1, :cond_0

    .line 1249
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1251
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$34(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1252
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$35(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1253
    return-object p0
.end method

.method public setSysVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1089
    if-nez p1, :cond_0

    .line 1090
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$18(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 1093
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$19(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 1094
    return-object p0
.end method

.method public setTimestamp(J)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # J

    .prologue
    .line 987
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$8(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 988
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$9(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;J)V

    .line 989
    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 966
    if-nez p1, :cond_0

    .line 967
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$6(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Z)V

    .line 970
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage$Builder;->result:Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;

    invoke-static {v0, p1}, Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;->access$7(Lcom/appspot/swisscodemonkeys/stats/Stats$StatsMessage;Ljava/lang/String;)V

    .line 971
    return-object p0
.end method
