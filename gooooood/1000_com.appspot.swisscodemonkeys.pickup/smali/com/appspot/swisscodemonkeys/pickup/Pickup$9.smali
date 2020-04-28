.class Lcom/appspot/swisscodemonkeys/pickup/Pickup$9;
.super Ljava/lang/Object;
.source "Pickup.java"

# interfaces
.implements Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/Pickup;->addFavorites(Landroid/widget/ViewFlipper;Landroid/widget/AdapterView$OnItemClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/Pickup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$9;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V
    .locals 1
    .param p1, "receiver"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;
    .param p2, "next"    # Ljava/lang/String;

    .prologue
    .line 289
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Pickup$9;->this$0:Lcom/appspot/swisscodemonkeys/pickup/Pickup;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/Pickup;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    invoke-virtual {v0, p2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getFavorites(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;->newBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 290
    return-void
.end method
