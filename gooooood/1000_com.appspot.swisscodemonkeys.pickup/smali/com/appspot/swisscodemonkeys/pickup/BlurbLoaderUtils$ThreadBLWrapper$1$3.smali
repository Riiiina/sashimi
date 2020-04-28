.class Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$3;
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


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$3;->this$2:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$3;->val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1$3;->val$receiver:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;->newBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 83
    return-void
.end method
