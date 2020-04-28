.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$1;
.super Ljava/lang/Object;
.source "Pickup.java"

# interfaces
.implements Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/Pickup;->createLoaderForList(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;I)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

.field private final synthetic val$category:I


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    iput p2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$1;->val$category:I

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V
    .locals 4
    .param p1, "receiver"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;
    .param p2, "next"    # Ljava/lang/String;

    .prologue
    .line 51
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$1;->val$category:I

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    iget-object v3, v3, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->parentBlurb:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getMessages(ILjava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    .line 52
    .local v0, "list":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    invoke-interface {p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;->newBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 53
    return-void
.end method
