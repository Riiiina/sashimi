.class Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;
.super Ljava/lang/Object;
.source "AboutAuthorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->fetchDetailsForUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

.field private final synthetic val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private final synthetic val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iput-object p3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;)Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 82
    const-string v1, "aav"

    const-string v2, "Loading profile..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->val$service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->val$blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->loadProfile(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    move-result-object v0

    .line 84
    .local v0, "profile":Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1$1;

    invoke-direct {v2, p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 97
    return-void
.end method
