.class Lcom/appspot/swisscodemonkeys/pickup/CommentActivity$1;
.super Ljava/lang/Object;
.source "CommentActivity.java"

# interfaces
.implements Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/CommentActivity;->createCommentLoader(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V
    .locals 4
    .param p1, "receiver"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;
    .param p2, "next"    # Ljava/lang/String;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    const/4 v1, -0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/CommentActivity$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, p2, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->getMessages(ILjava/lang/String;Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;->newBlurbList(Lcom/appspot/swisscodemonkeys/client/Ratings$BlurbList;)V

    .line 36
    return-void
.end method
