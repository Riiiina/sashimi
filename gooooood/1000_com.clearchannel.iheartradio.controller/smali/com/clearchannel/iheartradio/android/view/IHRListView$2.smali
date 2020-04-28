.class Lcom/clearchannel/iheartradio/android/view/IHRListView$2;
.super Ljava/lang/Object;
.source "IHRListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 16
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 600
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBFORMAT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v2, v3, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SUBLOCATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-eq v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v2, v3, :cond_4

    .line 604
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->getSectionCursor(I)Ljava/lang/String;

    move-result-object v15

    .line 605
    .local v15, "sectionType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 608
    .local v5, "cursor":Landroid/database/Cursor;
    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v2

    if-eq v15, v2, :cond_1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->LOCAL:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v2

    if-eq v15, v2, :cond_1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FREESECTIONTITLE:Ljava/lang/String;

    if-ne v15, v2, :cond_2

    .line 610
    :cond_1
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    .local v12, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "name"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 614
    new-instance v14, Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 617
    .local v14, "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_0
    const-string v2, "ccstationid"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->isStationFavourited(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 618
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$15(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 619
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_0
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 631
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$17(Lcom/clearchannel/iheartradio/android/view/IHRListView;Landroid/app/AlertDialog;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$18(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 738
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v14    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v15    # "sectionType":Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x1

    return v2

    .line 622
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v14    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .restart local v15    # "sectionType":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x5

    :try_start_1
    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$16(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 623
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_1
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 625
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    move-object v13, v2

    .line 626
    .local v13, "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 627
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_0

    .line 643
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v14    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v15    # "sectionType":Ljava/lang/String;
    .restart local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v2, v3, :cond_6

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->getSectionCursor(I)Ljava/lang/String;

    move-result-object v15

    .line 645
    .restart local v15    # "sectionType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 647
    .restart local v5    # "cursor":Landroid/database/Cursor;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 648
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "name"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 651
    new-instance v14, Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 655
    .restart local v14    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_2
    const-string v2, "stationid"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->isStationFavourited(J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 656
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$15(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 657
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_2
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_2 .. :try_end_2} :catch_1

    .line 667
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$17(Lcom/clearchannel/iheartradio/android/view/IHRListView;Landroid/app/AlertDialog;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$18(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 660
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_5
    const/4 v2, 0x5

    :try_start_3
    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$16(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 661
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_3
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 663
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    move-object v13, v2

    .line 664
    .restart local v13    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 665
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    .line 671
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v14    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v15    # "sectionType":Ljava/lang/String;
    .restart local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->SEARCH:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v2, v3, :cond_8

    .line 674
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    .end local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p1, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->getSectionCursor(I)Ljava/lang/String;

    move-result-object v15

    .line 675
    .restart local v15    # "sectionType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/database/Cursor;

    .line 678
    .restart local v5    # "cursor":Landroid/database/Cursor;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 679
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "name"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 682
    new-instance v14, Lcom/clearchannel/iheartradio/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 685
    .restart local v14    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    :try_start_4
    const-string v2, "ccstationid"

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v14, v2, v3}, Lcom/clearchannel/iheartradio/db/DataHelper;->isStationFavourited(J)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 686
    const/4 v2, 0x5

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$15(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 687
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_4
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_4 .. :try_end_4} :catch_2

    .line 697
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$17(Lcom/clearchannel/iheartradio/android/view/IHRListView;Landroid/app/AlertDialog;)V

    .line 698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$18(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 690
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_7
    const/4 v2, 0x5

    :try_start_5
    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$16(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 691
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    :try_end_5
    .catch Lcom/clearchannel/iheartradio/db/IHRDataAccessException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    .line 693
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :catch_2
    move-exception v2

    move-object v13, v2

    .line 694
    .restart local v13    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    const/4 v2, 0x4

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 695
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    sget-object v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_3

    .line 700
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v13    # "e":Lcom/clearchannel/iheartradio/db/IHRDataAccessException;
    .end local v14    # "helper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v15    # "sectionType":Ljava/lang/String;
    .restart local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v2, v3, :cond_a

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 704
    .local v9, "c":Landroid/database/Cursor;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 705
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 707
    const/4 v2, 0x6

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$11(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$12(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "autoplay"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$19(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    :goto_4
    aput-object v3, v4, v2

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$15(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 708
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v7, v0

    sget-object v10, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v8, v4

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$17(Lcom/clearchannel/iheartradio/android/view/IHRListView;Landroid/app/AlertDialog;)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$18(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 707
    .end local v4    # "items":[Ljava/lang/CharSequence;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$20(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    .line 712
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v2, v3, :cond_b

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 716
    .restart local v9    # "c":Landroid/database/Cursor;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 717
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "song"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 719
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$15(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 720
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v7, v0

    sget-object v10, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSONGS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v8, v4

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$17(Lcom/clearchannel/iheartradio/android/view/IHRListView;Landroid/app/AlertDialog;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$18(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    .line 725
    .end local v4    # "items":[Ljava/lang/CharSequence;
    .end local v9    # "c":Landroid/database/Cursor;
    .end local v12    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    if-ne v2, v3, :cond_2

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v2

    sget-object v3, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 728
    .restart local v9    # "c":Landroid/database/Cursor;
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v12, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 729
    .restart local v12    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "name"

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 731
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$13(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v3, v0

    invoke-static {v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$14(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    .line 732
    .restart local v4    # "items":[Ljava/lang/CharSequence;
    new-instance v6, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v7, v0

    sget-object v10, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->VIDEOS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v8, v4

    move-object/from16 v11, p2

    invoke-direct/range {v6 .. v11}, Lcom/clearchannel/iheartradio/android/view/IHRListView$ContextualMenuClickListener;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;[Ljava/lang/CharSequence;Landroid/database/Cursor;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;Landroid/view/View;)V

    invoke-virtual {v12, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$17(Lcom/clearchannel/iheartradio/android/view/IHRListView;Landroid/app/AlertDialog;)V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$2;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v2, v0

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$18(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1
.end method
