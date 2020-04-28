.class Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;
.super Ljava/lang/Object;
.source "BlurbLoaderUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;

.field private final synthetic val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;

.field private final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;->this$2:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;->val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;->val$result:Ljava/util/List;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;->val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;->val$result:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$2;
    check-cast p0, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    invoke-interface {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;->newBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 76
    return-void
.end method
