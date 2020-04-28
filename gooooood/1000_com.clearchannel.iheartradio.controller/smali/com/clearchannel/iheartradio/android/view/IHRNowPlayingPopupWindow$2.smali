.class Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;
.super Ljava/lang/Object;
.source "IHRNowPlayingPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;)Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    .line 170
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->dismiss()V

    .line 172
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v7

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->getStation()Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v3

    .line 177
    .local v3, "ihrstation":Lcom/clearchannel/iheartradio/model/IHRStation;
    const-string v5, ""

    .line 178
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRStation;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 179
    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 185
    .restart local v5    # "name":Ljava/lang/String;
    :goto_0
    move-object v6, v5

    .line 186
    .local v6, "station":Ljava/lang/String;
    invoke-virtual {v3, v8}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    .local v1, "callletters":Ljava/lang/String;
    const/4 v7, 0x3

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 189
    .local v2, "description":Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 192
    new-array v4, v8, [Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const-string v8, "Facebook"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string v8, "Email"

    aput-object v8, v4, v7

    .line 194
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v7, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;

    invoke-direct {v7, p0, v6, v2, v1}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2$1;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$3(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;Landroid/app/AlertDialog;)V

    .line 206
    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;)Landroid/app/AlertDialog;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 208
    return-void

    .line 182
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "callletters":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v6    # "station":Ljava/lang/String;
    :cond_0
    const/16 v7, 0xb

    invoke-virtual {v3, v7}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "name":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "name":Ljava/lang/String;
    goto :goto_0
.end method
