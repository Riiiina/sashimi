.class Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;
.super Ljava/lang/Object;
.source "AboutAuthorWithBlurbsView.java"

# interfaces
.implements Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V
    .locals 3
    .param p1, "receiver"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;
    .param p2, "next"    # Ljava/lang/String;

    .prologue
    .line 31
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 32
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    .line 33
    .local v0, "b":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    invoke-interface {p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;->newBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 39
    .end local v0    # "b":Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->access$1(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)Lcom/appspot/swisscodemonkeys/client/RatingsService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 36
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->access$1(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)Lcom/appspot/swisscodemonkeys/client/RatingsService;

    move-result-object v1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->access$2(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getMessagesFromUser(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;->newBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    goto :goto_0
.end method
