.class Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;
.super Ljava/lang/Object;
.source "IHRPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

.field private final synthetic val$ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;->val$ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    .line 356
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    .line 357
    .local v7, "callLettersPlayer":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForCallLetters(Ljava/lang/String;)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v8

    .line 359
    .local v8, "ihrstation":Lcom/clearchannel/iheartradio/model/IHRStation;
    if-eqz v8, :cond_0

    .line 366
    const/16 v0, 0xb

    invoke-virtual {v8, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 367
    .local v3, "displayTitle":Ljava/lang/String;
    const/4 v0, 0x3

    invoke-virtual {v8, v0}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 368
    .local v4, "desc":Ljava/lang/String;
    invoke-virtual {v8, v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 371
    .local v5, "identifier":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 372
    .local v6, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 374
    new-array v9, v1, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    const-string v1, "Facebook"

    aput-object v1, v9, v0

    const/4 v0, 0x1

    const-string v1, "Email"

    aput-object v1, v9, v0

    .line 376
    .local v9, "items":[Ljava/lang/CharSequence;
    new-instance v0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;->val$ihrController:Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v9, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 386
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;Landroid/app/AlertDialog;)V

    .line 387
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView$9;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;->access$15(Lcom/clearchannel/iheartradio/android/view/IHRPlayerView;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 389
    .end local v3    # "displayTitle":Ljava/lang/String;
    .end local v4    # "desc":Ljava/lang/String;
    .end local v5    # "identifier":Ljava/lang/String;
    .end local v6    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v9    # "items":[Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method
