.class Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;
.super Ljava/lang/Object;
.source "AboutAuthorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;

.field private final synthetic val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 111
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    if-eqz v3, :cond_1

    .line 112
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;)Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    move-result-object v3

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->updateProfileFields(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 116
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;)Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->getContext()Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 117
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;)Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    instance-of v3, v3, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;

    if-eqz v3, :cond_0

    .line 120
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    .line 119
    check-cast v3, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;

    .line 120
    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;

    invoke-static {v4}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;)Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 121
    iget-object v5, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->val$profile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    invoke-virtual {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getUserId()I

    move-result v5

    .line 120
    invoke-interface {v3, v4, v5}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$ProfileAppInterface;->getExtraAuthorView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    .line 122
    .local v1, "extraView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 123
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;

    invoke-static {v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;->access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;)Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    move-result-object v3

    const v4, 0x7f0b0008

    invoke-virtual {v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 124
    .local v2, "frame":Landroid/widget/FrameLayout;
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 125
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 133
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "extraView":Landroid/view/View;
    .end local v2    # "frame":Landroid/widget/FrameLayout;
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    const-string v3, ""

    const-string v4, " error loading user"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
