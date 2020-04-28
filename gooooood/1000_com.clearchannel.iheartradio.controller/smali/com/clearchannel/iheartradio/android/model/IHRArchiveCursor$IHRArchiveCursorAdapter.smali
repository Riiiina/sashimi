.class public Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "IHRArchiveCursor.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRArchiveCursorAdapter"
.end annotation


# instance fields
.field private _views:[Landroid/view/View;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 275
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 274
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 308
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;)[I

    move-result-object v0

    aget v0, v0, p1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 313
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->_views:[Landroid/view/View;

    if-nez v9, :cond_4

    const/4 v9, 0x0

    move-object v6, v9

    .line 314
    .local v6, "result":Landroid/view/View;
    :goto_0
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    invoke-static {v9}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;)[I

    move-result-object v9

    if-nez v9, :cond_5

    const/4 v9, 0x0

    move v4, v9

    .line 317
    .local v4, "mapped":I
    :goto_1
    if-nez v6, :cond_3

    .line 318
    const/4 p2, 0x0

    .line 320
    if-nez v4, :cond_6

    .line 321
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 323
    const v9, 0x7f09004e

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 324
    .local v8, "view":Landroid/view/View;
    if-eqz v8, :cond_0

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 327
    :cond_0
    const v9, 0x7f09004f

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 328
    if-eqz v8, :cond_1

    check-cast v8, Landroid/widget/ImageView;

    .end local v8    # "view":Landroid/view/View;
    const v9, 0x7f02001e

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    :cond_1
    const v9, 0x7f090051

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 331
    .restart local v8    # "view":Landroid/view/View;
    if-eqz v8, :cond_2

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 333
    :cond_2
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    const/16 v10, 0xd

    invoke-virtual {v9, v10}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 367
    .end local v8    # "view":Landroid/view/View;
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    :goto_2
    return-object v6

    .line 313
    .end local v4    # "mapped":I
    .end local v6    # "result":Landroid/view/View;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_4
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->_views:[Landroid/view/View;

    aget-object v9, v9, p1

    move-object v6, v9

    goto :goto_0

    .line 314
    .restart local v6    # "result":Landroid/view/View;
    :cond_5
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    invoke-static {v9}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;)[I

    move-result-object v9

    aget v9, v9, p1

    move v4, v9

    goto :goto_1

    .line 334
    .restart local v4    # "mapped":I
    :cond_6
    if-gez v4, :cond_9

    .line 335
    instance-of v9, p2, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;

    if-eqz v9, :cond_7

    move-object v0, p2

    check-cast v0, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;

    move-object p3, v0

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object v7, p3

    .line 336
    .local v7, "separator":Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;
    :goto_3
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    neg-int v10, v4

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 337
    .local v2, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 338
    .local v5, "name":Ljava/lang/String;
    const-string v9, "Hour"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 340
    .local v1, "found":I
    iget-object v9, v7, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    if-lez v1, :cond_8

    const/4 v10, 0x0

    const/4 v11, 0x1

    sub-int v11, v1, v11

    invoke-virtual {v5, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :goto_4
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    const/4 v9, 0x1

    invoke-static {v7, v9}, Lcom/clearchannel/iheartradio/controller/IHRControllerList;->replaceLayout(Landroid/view/View;I)V

    .line 345
    move-object v6, v7

    goto :goto_2

    .line 335
    .end local v1    # "found":I
    .end local v2    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "separator":Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_7
    new-instance v9, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;-><init>(Landroid/content/Context;)V

    move-object v7, v9

    goto :goto_3

    .end local p3    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "found":I
    .restart local v2    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "separator":Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;
    :cond_8
    move-object v10, v5

    .line 340
    goto :goto_4

    .line 346
    .end local v1    # "found":I
    .end local v2    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "separator":Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_9
    if-lez v4, :cond_3

    .line 347
    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    const/4 v10, 0x1

    sub-int v10, v4, v10

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 348
    .restart local v2    # "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v3

    .line 350
    .local v3, "link":Ljava/lang/String;
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 352
    const v9, 0x7f09004f

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 353
    .restart local v8    # "view":Landroid/view/View;
    if-eqz v8, :cond_a

    .line 354
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 355
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 356
    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x1

    sub-int v10, v4, v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 359
    :cond_a
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 361
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->progressForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->applyProgressToRow(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Landroid/view/View;)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 303
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v6, 0x0

    .line 284
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;)[I

    move-result-object v2

    if-nez v2, :cond_2

    move v0, v6

    .line 286
    .local v0, "mapped":I
    :goto_0
    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 287
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->minutesToShow(J[Ljava/lang/String;)I

    move-result v1

    .line 289
    .local v1, "minutes":I
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->tolerance()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 290
    const/4 v0, 0x1

    .line 293
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlatform;->isBeingDebugged()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    const/4 v0, 0x1

    .line 298
    .end local v1    # "minutes":I
    :cond_1
    if-lez v0, :cond_3

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 284
    .end local v0    # "mapped":I
    :cond_2
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;)[I

    move-result-object v2

    aget v2, v2, p1

    move v0, v2

    goto :goto_0

    .restart local v0    # "mapped":I
    :cond_3
    move v2, v6

    .line 298
    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 382
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 383
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v4, v3, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mContents:Ljava/util/List;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;

    .line 386
    .local v1, "item":Lcom/clearchannel/iheartradio/model/IHRPremiumItem;
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;

    iget-object v3, v3, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->mChannel:Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRPremiumChannel;->getSite()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v6, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->cachePremiumItem(Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 388
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRPremiumItem;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->progressForURL(Ljava/lang/String;)Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    move-result-object v2

    .line 390
    .local v2, "progress":Lcom/clearchannel/iheartradio/android/model/IHRHashtable;
    const-string v3, "length"

    invoke-virtual {v2, v3, v5}, Lcom/clearchannel/iheartradio/android/model/IHRHashtable;->integerValue(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_1

    .line 391
    invoke-static {v2, p1}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->applyProgressToRow(Lcom/clearchannel/iheartradio/android/model/IHRHashtable;Landroid/view/View;)V

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    invoke-static {}, Lcom/clearchannel/iheartradio/model/IHRCache;->shared()Lcom/clearchannel/iheartradio/model/IHRCache;

    move-result-object v3

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRCache;->available()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 396
    invoke-static {v5, v6, v5, p1}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor;->applyProgressToRow(IIZLandroid/view/View;)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 374
    const/4 v0, 0x1

    .line 375
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/model/IHRArchiveCursor$IHRArchiveCursorAdapter;->onClick(Landroid/view/View;)V

    .line 378
    :cond_0
    return v0
.end method
