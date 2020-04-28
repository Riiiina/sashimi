.class Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;
.super Ljava/lang/Object;
.source "IHRListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContextualMenuClickListener"
.end annotation


# instance fields
.field private c:Landroid/database/Cursor;

.field private items:[Ljava/lang/CharSequence;

.field private srcView:Landroid/view/View;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

.field private type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V
    .locals 0
    .param p2, "items"    # [Ljava/lang/CharSequence;
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "type"    # Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;
    .param p5, "srcView"    # Landroid/view/View;

    .prologue
    .line 440
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 436
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    .line 437
    iput-object p5, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->srcView:Landroid/view/View;

    .line 438
    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    .line 439
    iput-object p4, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 25
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 443
    const/16 v18, 0x0

    .line 445
    .local v18, "showLoginDialog":Z
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v13, "inParameters":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v5, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v5, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v5, v6, :cond_0

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v5, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v5, v6, :cond_c

    .line 451
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v5, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v5, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v5, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v5, v6, :cond_4

    .line 452
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "stationid"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 456
    .local v22, "stationId":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "name"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 457
    .local v20, "station":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "callletters"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSelectedCallletters:Ljava/lang/String;

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "description"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 460
    .local v21, "stationDesc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$15(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 472
    :try_start_0
    new-instance v11, Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v11, v5}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 474
    .local v11, "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v5, v0

    invoke-virtual {v11, v5, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;->flagFavouriteStationForRemoval(J)V

    .line 476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->refresh()V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getSelectedTab()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FAVORITES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v7, v0

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$21(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v11    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$18(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getContext()Landroid/app/Activity;

    move-result-object v10

    .line 557
    .local v10, "context":Landroid/content/Context;
    if-eqz v18, :cond_3

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$29(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v13, v10}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSOMenu;->showLoginDialog(Ljava/lang/String;Landroid/content/Intent;Landroid/content/Context;)Z

    .line 585
    .end local v10    # "context":Landroid/content/Context;
    .end local v20    # "station":Ljava/lang/String;
    .end local v21    # "stationDesc":Ljava/lang/String;
    .end local v22    # "stationId":I
    :cond_3
    :goto_2
    return-void

    .line 454
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "ccstationid"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .restart local v22    # "stationId":I
    goto/16 :goto_0

    .line 482
    .restart local v20    # "station":Ljava/lang/String;
    .restart local v21    # "stationDesc":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v12, v5

    .line 483
    .local v12, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const/16 v18, 0x0

    .line 484
    const-string v5, "IHRListView"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Exception: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getSelectedTab()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FAVORITES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$22(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 493
    .end local v12    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 495
    new-instance v4, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->srcView:Landroid/view/View;

    move-object v5, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;->stations:Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v8, v0

    const-string v9, "ccstationid"

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;-><init>(Landroid/view/View;Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow$PopUpType;JLcom/clearchannel/iheartradio/controller/IHRActivity;)V

    .line 496
    .local v4, "nowPlayingPopUpWindow":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    const/16 v7, 0x1e

    invoke-virtual {v6, v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->dpToPix(I)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;->showLikeQuickAction(II)V

    goto/16 :goto_1

    .line 497
    .end local v4    # "nowPlayingPopUpWindow":Lcom/clearchannel/iheartradio/android/view/IHRNowPlayingPopupWindow;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 499
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    .line 500
    .local v15, "now":J
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v17

    .line 501
    .local v17, "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setStreamIsNew(J)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "callletters"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->playStation(Ljava/lang/String;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v7, v0

    const-string v8, "callletters"

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_1

    .line 504
    .end local v15    # "now":J
    .end local v17    # "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 505
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSelectedCallletters:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->shareViaFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 506
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->STATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    move-object v0, v5

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->shareViaEmail(Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;)V

    goto/16 :goto_1

    .line 508
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$16(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 520
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$23(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/db/DataHelper;

    move-result-object v5

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertFavouriteStation(J)V

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->refresh()V

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->getSelectedTab()Ljava/lang/String;

    move-result-object v5

    const-string v6, "FAVORITES"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v7, v0

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$24(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 528
    :catch_1
    move-exception v5

    move-object v12, v5

    .line 529
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "Error adding Favorite"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 532
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$20(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 534
    :try_start_2
    new-instance v5, Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Lcom/clearchannel/iheartradio/db/DataHelper;->setAutoplayStation(J)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->refresh()V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v7, v0

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$25(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 537
    :catch_2
    move-exception v5

    move-object v12, v5

    .line 538
    .local v12, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const/16 v18, 0x0

    .line 539
    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$26(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 542
    .end local v12    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$19(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 544
    :try_start_3
    new-instance v5, Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->removeAutoplayStation()V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->refresh()V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$27(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 547
    :catch_3
    move-exception v5

    move-object v12, v5

    .line 548
    .restart local v12    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const/16 v18, 0x0

    .line 549
    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$28(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 559
    .end local v12    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v20    # "station":Ljava/lang/String;
    .end local v21    # "stationDesc":Ljava/lang/String;
    .end local v22    # "stationId":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v5, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v5, v6, :cond_d

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "mediaid"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 561
    .local v14, "mediaId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "song"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 563
    .local v19, "song":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$15(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 565
    :try_start_4
    new-instance v5, Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    int-to-long v6, v14

    invoke-virtual {v5, v6, v7}, Lcom/clearchannel/iheartradio/db/DataHelper;->flagFavouriteSongForRemoval(J)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v7, v0

    invoke-static {v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$21(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->refresh()V
    :try_end_4
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_2

    .line 569
    :catch_4
    move-exception v5

    move-object v12, v5

    .line 570
    .restart local v12    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/db/IHRDataAccessException;->printStackTrace()V

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$22(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 574
    .end local v12    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v14    # "mediaId":I
    .end local v19    # "song":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->type:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v5, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v5, v6, :cond_3

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "name"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 576
    .local v23, "video":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "media_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSelectedIdentifier:Ljava/lang/String;

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->c:Landroid/database/Cursor;

    move-object v6, v0

    const-string v7, "description"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 579
    .local v24, "videoDesc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView;->currentSelectedIdentifier:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->shareViaFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 581
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->items:[Ljava/lang/CharSequence;

    move-object v5, v0

    aget-object v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v6, v0

    invoke-static {v6}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v5, v0

    invoke-static {v5}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v5

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->VIDEO:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    move-object v0, v5

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->shareViaEmail(Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;)V

    goto/16 :goto_2
.end method
