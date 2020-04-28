.class Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1$1;
.super Ljava/lang/Object;
.source "AboutAuthorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;

.field private final synthetic val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "aav"

    const-string v1, "updating profile fields"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;->access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;)Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->updateProfileFields(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 95
    :goto_0
    return-void

    .line 92
    :cond_0
    const-string v0, "aav"

    const-string v1, "Got null profile!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
