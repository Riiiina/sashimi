.class Lcom/clearchannel/iheartradio/android/view/IHRListView$1;
.super Ljava/lang/Object;
.source "IHRListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRListView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 18
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-string v13, ""

    .line 166
    .local v13, "sectionType":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    sput-object v15, Lcom/clearchannel/iheartradio/android/view/IHRListView;->lastDisplayedListView:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->setSortedByName(Z)V

    .line 170
    if-eqz p1, :cond_0

    .line 171
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v6

    check-cast v6, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;

    .line 172
    .local v6, "adapter":Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;
    if-eqz v6, :cond_0

    .line 173
    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;->getSectionCursor(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 184
    .end local v6    # "adapter":Lcom/clearchannel/iheartradio/android/view/IHRSectionedAdapter;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setStationHeader(Ljava/lang/String;Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->MAGICMENU:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_9

    .line 188
    const v15, 0x7f090042

    move-object/from16 v0, p2

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v14

    .line 190
    .local v14, "text":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v5

    .line 193
    .local v5, "activity":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$2(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_2

    .line 194
    const-class v15, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x20000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "category"

    const-string v17, "formats"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v7

    .line 195
    .local v7, "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayGenres()V

    .line 302
    .end local v5    # "activity":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    .end local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    .end local v14    # "text":Ljava/lang/CharSequence;
    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView$1;
    :cond_1
    :goto_1
    return-void

    .line 178
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView$1;
    .restart local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :catch_0
    move-exception v15

    move-object v9, v15

    .line 180
    .local v9, "e":Ljava/lang/Exception;
    const-string v15, "IHRListView.onItemClick"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "error"

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 201
    .end local v9    # "e":Ljava/lang/Exception;
    .end local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .restart local v5    # "activity":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    .restart local v14    # "text":Ljava/lang/CharSequence;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$3(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_3

    .line 202
    const-class v15, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x20000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "category"

    const-string v17, "news"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v7

    .line 203
    .restart local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    const-string v16, "News/Talk"

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenre(Ljava/lang/String;)V

    goto :goto_1

    .line 208
    .end local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$4(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_4

    .line 209
    const-class v15, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x20000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "category"

    const-string v17, "sport"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v7

    .line 210
    .restart local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    const-string v16, "Sports"

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenre(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 213
    .end local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$5(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_5

    .line 214
    const-class v15, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x20000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "category"

    const-string v17, "location"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v7

    .line 215
    .restart local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayLocations()V

    goto/16 :goto_1

    .line 220
    .end local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$6(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_6

    .line 221
    const-class v15, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x20000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "category"

    const-string v17, "personalities"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v7

    .line 222
    .restart local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView;->personalities:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayShortcutGenre(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 227
    .end local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$7(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_7

    .line 228
    const-class v15, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x20000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "source"

    const-string v17, "channels"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "class"

    const-class v17, Lcom/clearchannel/iheartradio/controller/IHRControllerPremiumChannels;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto/16 :goto_1

    .line 230
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$8(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_8

    .line 231
    const-class v15, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x400000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto/16 :goto_1

    .line 233
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$9(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/lang/String;

    move-result-object v15

    if-ne v14, v15, :cond_1

    .line 234
    const-class v15, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v15}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v15

    const/high16 v16, 0x20000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v15

    const-string v16, "category"

    const-string v17, "recent"

    invoke-virtual/range {v15 .. v17}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v5, v15}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v7

    .line 235
    .restart local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->clearStationsListView(Z)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->displayRecent()V

    goto/16 :goto_1

    .line 244
    .end local v5    # "activity":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    .end local v7    # "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    .end local v14    # "text":Ljava/lang/CharSequence;
    .restart local p1    # "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_c

    .line 247
    sget-object v15, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v15

    if-eq v13, v15, :cond_a

    sget-object v15, Lcom/clearchannel/iheartradio/android/view/IHRListView;->FREESECTIONTITLE:Ljava/lang/String;

    if-eq v13, v15, :cond_a

    sget-object v15, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->LOCAL:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v15

    if-ne v13, v15, :cond_b

    .line 248
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->PLAYER:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    .line 253
    .local v8, "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 254
    .local v10, "now":J
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v12

    .line 256
    .local v12, "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    invoke-virtual {v12, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setStreamIsNew(J)V

    .line 257
    const-string v15, "callletters"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->playStation(Ljava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    const-string v16, "callletters"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object v0, v8

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_1

    .line 266
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "now":J
    .end local v12    # "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    :cond_b
    sget-object v15, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATES:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v15

    if-ne v13, v15, :cond_1

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView$1;
    check-cast p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v0, v15

    move-wide/from16 v1, p4

    move-object v3, v13

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setContentList(JLjava/lang/String;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;)V

    goto/16 :goto_1

    .line 270
    .restart local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView$1;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_d

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->PLAYER:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->FAVORITESSTATION:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual/range {v16 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->name()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    .line 275
    .restart local v8    # "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 276
    .restart local v10    # "now":J
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v12

    .line 278
    .restart local v12    # "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    invoke-virtual {v12, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setStreamIsNew(J)V

    .line 279
    const-string v15, "callletters"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->playStation(Ljava/lang/String;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    const-string v16, "callletters"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object v0, v8

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_1

    .line 284
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "now":J
    .end local v12    # "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->RECENT:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v0, v15

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_e

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;->PLAYER:Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$10(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/HashMap;

    move-result-object v15

    sget-object v16, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->STATIONS:Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;

    invoke-virtual/range {v16 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView$Section;->name()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/Cursor;

    .line 289
    .restart local v8    # "cursor":Landroid/database/Cursor;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    .line 290
    .restart local v10    # "now":J
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v12

    .line 292
    .restart local v12    # "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    invoke-virtual {v12, v10, v11}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->setStreamIsNew(J)V

    .line 293
    const-string v15, "callletters"

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v8, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->playStation(Ljava/lang/String;)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    invoke-static {v15}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    move-result-object v15

    const-string v16, "callletters"

    move-object v0, v8

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    move-object v0, v8

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;->createPlayerContent(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    goto/16 :goto_1

    .line 300
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "now":J
    .end local v12    # "player":Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRListView$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->access$1(Lcom/clearchannel/iheartradio/android/view/IHRListView;)Ljava/util/LinkedList;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/android/view/IHRListView$1;
    check-cast p0, Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;

    move-object v0, v15

    move-wide/from16 v1, p4

    move-object v3, v13

    move-object/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->setContentList(JLjava/lang/String;Lcom/clearchannel/iheartradio/android/view/IHRListView$DisplayedList;)V

    goto/16 :goto_1
.end method
