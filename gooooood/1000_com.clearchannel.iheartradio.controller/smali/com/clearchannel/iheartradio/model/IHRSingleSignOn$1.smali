.class Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;
.super Ljava/lang/Thread;
.source "IHRSingleSignOn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->request(Ljava/util/Hashtable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

.field private final synthetic val$pairs:Ljava/util/Hashtable;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;Ljava/util/Hashtable;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;->this$0:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;->val$pairs:Ljava/util/Hashtable;

    iput p3, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;->val$type:I

    .line 46
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;->this$0:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;->val$pairs:Ljava/util/Hashtable;

    iget v2, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$1;->val$type:I

    invoke-static {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;->access$0(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;Ljava/util/Hashtable;I)V

    .line 62
    return-void
.end method
