.class public Lcom/clearchannel/iheartradio/model/IHRComparator;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/model/IHRComparator$IHRStringPrefixComparator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    return-void
.end method

.method public static stringComparator()Lcom/clearchannel/iheartradio/model/IHRComparator;
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRComparator$1;

    invoke-direct {v0}, Lcom/clearchannel/iheartradio/model/IHRComparator$1;-><init>()V

    return-object v0
.end method

.method public static stringPrefixComparator(I)Lcom/clearchannel/iheartradio/model/IHRComparator;
    .locals 1
    .param p0, "prefixLength"    # I

    .prologue
    .line 13
    new-instance v0, Lcom/clearchannel/iheartradio/model/IHRComparator$IHRStringPrefixComparator;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/model/IHRComparator$IHRStringPrefixComparator;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method
