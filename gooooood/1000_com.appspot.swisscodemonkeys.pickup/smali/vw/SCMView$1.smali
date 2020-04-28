.class Lvw/SCMView$1;
.super Ljava/lang/Thread;
.source "SCMView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/SCMView;->refreshAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvw/SCMView;

.field private final synthetic val$t:J


# direct methods
.method constructor <init>(Lvw/SCMView;J)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMView$1;->this$0:Lvw/SCMView;

    iput-wide p2, p0, Lvw/SCMView$1;->val$t:J

    .line 263
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lvw/SCMView$1;)Lvw/SCMView;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lvw/SCMView$1;->this$0:Lvw/SCMView;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 266
    :try_start_0
    iget-wide v3, p0, Lvw/SCMView$1;->val$t:J

    invoke-static {}, Lvw/SCMView;->access$0()J

    move-result-wide v5

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 270
    .local v0, "cacheResult":Lvw/SCMView$ViewResult;
    :goto_0
    if-eqz v0, :cond_1

    .line 271
    move-object v2, v0

    .line 277
    .local v2, "result":Lvw/SCMView$ViewResult;
    :goto_1
    iget-object v3, p0, Lvw/SCMView$1;->this$0:Lvw/SCMView;

    invoke-static {v3}, Lvw/SCMView;->access$5(Lvw/SCMView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lvw/SCMView$1$1;

    invoke-direct {v4, p0, v2}, Lvw/SCMView$1$1;-><init>(Lvw/SCMView$1;Lvw/SCMView$ViewResult;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    .end local v0    # "cacheResult":Lvw/SCMView$ViewResult;
    .end local v2    # "result":Lvw/SCMView$ViewResult;
    :goto_2
    return-void

    .line 267
    :cond_0
    invoke-static {}, Lvw/SCMView;->access$1()Lvw/SCMView$ViewResult;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 273
    .restart local v0    # "cacheResult":Lvw/SCMView$ViewResult;
    :cond_1
    invoke-static {}, Lvw/SCMView;->access$2()Lvw/ViewProvider;

    move-result-object v3

    iget-object v4, p0, Lvw/SCMView$1;->this$0:Lvw/SCMView;

    invoke-virtual {v4}, Lvw/SCMView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcmn/AppProperties;->get(Landroid/content/Context;)Lcmn/AppProperties;

    move-result-object v4

    invoke-virtual {v3, v4}, Lvw/ViewProvider;->getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;

    move-result-object v2

    .line 274
    .restart local v2    # "result":Lvw/SCMView$ViewResult;
    invoke-static {v2}, Lvw/SCMView;->access$3(Lvw/SCMView$ViewResult;)V

    .line 275
    iget-wide v3, p0, Lvw/SCMView$1;->val$t:J

    invoke-static {v3, v4}, Lvw/SCMView;->access$4(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 309
    .end local v0    # "cacheResult":Lvw/SCMView$ViewResult;
    .end local v2    # "result":Lvw/SCMView$ViewResult;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 311
    iget-object v3, p0, Lvw/SCMView$1;->this$0:Lvw/SCMView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lvw/SCMView;->access$9(Lvw/SCMView;Z)V

    goto :goto_2
.end method
