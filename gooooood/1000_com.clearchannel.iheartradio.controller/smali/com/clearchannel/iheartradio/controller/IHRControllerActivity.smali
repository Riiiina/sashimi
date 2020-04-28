.class public Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
.super Landroid/app/Activity;
.source "IHRControllerActivity.java"


# static fields
.field public static final kKeyClass:Ljava/lang/String; = "class"

.field public static final kKeyModal:Ljava/lang/String; = "controller_report_result"

.field public static final kKeyOrder:Ljava/lang/String; = "controller_stack_insert_order"

.field public static final kKeyStack:Ljava/lang/String; = "controller_activity_intent_stack"

.field public static final kKeyState:Ljava/lang/String; = "controller_saved_instance_state"


# instance fields
.field protected mController:Lcom/clearchannel/iheartradio/controller/IHRController;

.field protected mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

.field protected mState:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private modifyControllerStack(Lcom/clearchannel/iheartradio/controller/IHRController;II)V
    .locals 10
    .param p1, "inController"    # Lcom/clearchannel/iheartradio/controller/IHRController;
    .param p2, "inPop"    # I
    .param p3, "inIndex"    # I

    .prologue
    .line 171
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v7, :cond_2

    const/4 v7, 0x0

    move v1, v7

    .line 172
    .local v1, "count":I
    :goto_0
    const/4 v3, -0x1

    .line 173
    .local v3, "index":I
    if-lez v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v7, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    move v2, v7

    .line 176
    .local v2, "found":I
    :goto_1
    new-instance v6, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v6}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    .line 177
    .local v6, "removed":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    const/4 v0, 0x0

    .line 180
    .local v0, "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    if-gez p2, :cond_0

    if-ltz v2, :cond_0

    .line 181
    const/4 p2, 0x1

    .line 184
    :cond_0
    if-lez p2, :cond_16

    .line 185
    const/4 v7, 0x2

    if-le p2, v7, :cond_11

    .line 186
    if-gez v2, :cond_4

    iget-object v7, p1, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    const-string v8, "controller_finished"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    :cond_1
    :goto_2
    return-void

    .line 171
    .end local v0    # "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    .end local v1    # "count":I
    .end local v2    # "found":I
    .end local v3    # "index":I
    .end local v6    # "removed":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :cond_2
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v7

    move v1, v7

    goto :goto_0

    .line 173
    .restart local v1    # "count":I
    .restart local v3    # "index":I
    :cond_3
    const/4 v7, -0x1

    move v2, v7

    goto :goto_1

    .line 187
    .restart local v0    # "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    .restart local v2    # "found":I
    .restart local v6    # "removed":Lcom/clearchannel/iheartradio/android/model/IHRVector;
    :cond_4
    move v3, v2

    .line 189
    if-lez v3, :cond_5

    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    const/4 v8, 0x1

    sub-int v8, v3, v8

    invoke-virtual {v7, v8}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 190
    .restart local v0    # "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_5
    const/4 p1, 0x0

    .line 211
    :cond_6
    :goto_3
    if-eqz p1, :cond_b

    .line 212
    if-gez v2, :cond_18

    .line 213
    iput-object p0, p1, Lcom/clearchannel/iheartradio/controller/IHRController;->mControllerActivity:Landroid/app/Activity;

    .line 214
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v7, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 216
    iget v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_7

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onStart()V

    .line 217
    :cond_7
    iget v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_8

    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Lcom/clearchannel/iheartradio/controller/IHRController;->onPostCreate(Landroid/os/Bundle;)V

    .line 218
    :cond_8
    iget v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_9

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onResume()V

    .line 220
    :cond_9
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onPushController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 227
    :cond_a
    :goto_4
    move-object v0, p1

    .line 230
    :cond_b
    if-lez p2, :cond_1c

    .line 231
    if-ge v3, v1, :cond_1b

    .line 232
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->showController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 235
    :cond_c
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v7, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 237
    .local v5, "pop":Lcom/clearchannel/iheartradio/controller/IHRController;
    iget v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    const/4 v8, 0x2

    if-le v7, v8, :cond_d

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRController;->onPause()V

    .line 238
    :cond_d
    iget v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    const/4 v8, 0x1

    if-le v7, v8, :cond_e

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRController;->onStop()V

    .line 239
    :cond_e
    iget v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    if-lez v7, :cond_f

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRController;->onDestroy()V

    .line 241
    :cond_f
    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onPopController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 242
    invoke-virtual {v6, v5}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 243
    if-lt v3, v1, :cond_c

    .line 245
    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v1

    .line 247
    const/4 v3, 0x0

    :goto_5
    if-lt v3, v1, :cond_19

    .line 262
    .end local v5    # "pop":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_10
    :goto_6
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v7}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 263
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onNoController(Z)V

    goto/16 :goto_2

    .line 191
    :cond_11
    if-ltz v2, :cond_12

    const/4 v7, 0x1

    if-le p2, v7, :cond_15

    .line 193
    :cond_12
    if-gez p3, :cond_13

    const/4 v3, 0x0

    goto :goto_3

    .line 194
    :cond_13
    if-ge p3, v1, :cond_14

    add-int/lit8 v3, p3, 0x1

    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v7, p3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRController;

    .restart local v0    # "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    goto/16 :goto_3

    .line 195
    :cond_14
    move v3, v1

    goto/16 :goto_3

    .line 198
    :cond_15
    add-int/lit8 v3, v2, 0x1

    .line 199
    move-object v0, p1

    .line 200
    const/4 p1, 0x0

    goto/16 :goto_3

    .line 202
    :cond_16
    if-nez p1, :cond_6

    .line 204
    if-gez p3, :cond_17

    add-int v7, v1, p3

    move v3, v7

    .line 206
    :goto_7
    if-ltz v3, :cond_6

    if-ge v3, v1, :cond_6

    .line 207
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    move v2, v3

    invoke-virtual {v7, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "inController":Lcom/clearchannel/iheartradio/controller/IHRController;
    check-cast p1, Lcom/clearchannel/iheartradio/controller/IHRController;

    .restart local p1    # "inController":Lcom/clearchannel/iheartradio/controller/IHRController;
    goto/16 :goto_3

    :cond_17
    move v3, p3

    .line 204
    goto :goto_7

    .line 221
    :cond_18
    const/4 v7, 0x1

    sub-int v7, v1, v7

    if-ge v2, v7, :cond_a

    .line 222
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v7, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->remove(I)Ljava/lang/Object;

    .line 223
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v7, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z

    .line 224
    iget v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    if-lez v7, :cond_a

    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onRestart()V

    goto/16 :goto_4

    .line 248
    .restart local v5    # "pop":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_19
    invoke-virtual {v6, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "pop":Lcom/clearchannel/iheartradio/controller/IHRController;
    check-cast v5, Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 249
    .restart local v5    # "pop":Lcom/clearchannel/iheartradio/controller/IHRController;
    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRController;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 250
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "controller_report_result"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 252
    if-lez v2, :cond_1a

    .line 253
    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/controller/IHRController;->getResult()I

    move-result v7

    invoke-virtual {p0, v2, v7, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onControllerResult(IILandroid/content/Intent;)V

    .line 256
    :cond_1a
    const/4 v7, 0x0

    iput-object v7, v5, Lcom/clearchannel/iheartradio/controller/IHRController;->mControllerActivity:Landroid/app/Activity;

    .line 247
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 258
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v5    # "pop":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_1b
    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    if-nez v7, :cond_10

    .line 259
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->showController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    goto/16 :goto_6

    .line 265
    :cond_1c
    if-eqz p1, :cond_1

    .line 266
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->showController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    goto/16 :goto_2
.end method


# virtual methods
.method public ancestor(Lcom/clearchannel/iheartradio/controller/IHRController;I)Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 4
    .param p1, "inController"    # Lcom/clearchannel/iheartradio/controller/IHRController;
    .param p2, "inDepth"    # I

    .prologue
    .line 145
    const/4 v2, 0x0

    .line 147
    .local v2, "result":Lcom/clearchannel/iheartradio/controller/IHRController;
    if-eqz p1, :cond_0

    .line 148
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v0, v3

    .line 149
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v3, p1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move v1, v3

    .line 151
    .local v1, "index":I
    :goto_1
    if-ltz v1, :cond_0

    .line 152
    sub-int/2addr v1, p2

    .line 154
    if-lez v1, :cond_0

    if-ge v1, v0, :cond_0

    .line 155
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v3, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "result":Lcom/clearchannel/iheartradio/controller/IHRController;
    check-cast v2, Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 160
    .end local v0    # "count":I
    .end local v1    # "index":I
    .restart local v2    # "result":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_0
    return-object v2

    .line 148
    :cond_1
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v3

    move v0, v3

    goto :goto_0

    .line 149
    .restart local v0    # "count":I
    :cond_2
    const/4 v3, -0x1

    move v1, v3

    goto :goto_1
.end method

.method public controllers()[Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    check-cast p0, [Lcom/clearchannel/iheartradio/controller/IHRController;

    move-object v0, p0

    goto :goto_0
.end method

.method public displayAlert(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "inText"    # Ljava/lang/CharSequence;

    .prologue
    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->displayAlert(Ljava/lang/CharSequence;I)V

    .line 681
    return-void
.end method

.method public displayAlert(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "inText"    # Ljava/lang/CharSequence;
    .param p2, "inDuration"    # I

    .prologue
    .line 676
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 677
    return-void
.end method

.method public displayAlert(Ljava/lang/CharSequence;II)V
    .locals 2
    .param p1, "inText"    # Ljava/lang/CharSequence;
    .param p2, "inXPos"    # I
    .param p3, "inYPos"    # I

    .prologue
    .line 670
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 671
    .local v0, "toast":Landroid/widget/Toast;
    const/16 v1, 0x33

    invoke-virtual {v0, v1, p2, p3}, Landroid/widget/Toast;->setGravity(III)V

    .line 672
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 673
    return-void
.end method

.method public existingController(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 271
    const/4 v9, 0x0

    .line 276
    .local v9, "result":Lcom/clearchannel/iheartradio/controller/IHRController;
    iget-object v12, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v12, :cond_0

    const/4 v12, 0x0

    move v3, v12

    .line 277
    .local v3, "index":I
    :goto_0
    if-nez p1, :cond_1

    const/4 v12, 0x0

    move-object v2, v12

    .line 278
    .local v2, "extras":Landroid/os/Bundle;
    :goto_1
    if-nez v2, :cond_2

    const/4 v12, 0x0

    move-object v10, v12

    .line 279
    .local v10, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_2
    if-nez v10, :cond_3

    const/4 v12, 0x0

    move v1, v12

    .line 280
    .local v1, "count":I
    :goto_3
    if-nez v1, :cond_4

    const/4 v12, 0x0

    move-object v6, v12

    .end local p1    # "intent":Landroid/content/Intent;
    .local v6, "keys":[Ljava/lang/String;
    :goto_4
    move v4, v3

    .line 283
    .end local v3    # "index":I
    .local v4, "index":I
    :goto_5
    add-int/lit8 v3, v4, -0x1

    .end local v4    # "index":I
    .restart local v3    # "index":I
    if-gtz v4, :cond_5

    .line 312
    :goto_6
    return-object v9

    .line 276
    .end local v1    # "count":I
    .end local v2    # "extras":Landroid/os/Bundle;
    .end local v3    # "index":I
    .end local v6    # "keys":[Ljava/lang/String;
    .end local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v12, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v12}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v12

    move v3, v12

    goto :goto_0

    .line 277
    .restart local v3    # "index":I
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    move-object v2, v12

    goto :goto_1

    .line 278
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v12

    move-object v10, v12

    goto :goto_2

    .line 279
    .restart local v10    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v12

    move v1, v12

    goto :goto_3

    .line 280
    .restart local v1    # "count":I
    :cond_4
    new-array v12, v1, [Ljava/lang/String;

    invoke-interface {v10, v12}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "intent":Landroid/content/Intent;
    check-cast p1, [Ljava/lang/String;

    move-object v6, p1

    goto :goto_4

    .line 284
    .restart local v6    # "keys":[Ljava/lang/String;
    :cond_5
    iget-object v12, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v12, v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 285
    .local v0, "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    if-eqz v0, :cond_6

    iget-object v12, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    if-nez v12, :cond_7

    :cond_6
    const/4 v12, 0x0

    move-object v8, v12

    .line 286
    .local v8, "other":Landroid/os/Bundle;
    :goto_7
    const/4 v7, 0x0

    .line 288
    .local v7, "match":I
    const/4 v11, 0x0

    .local v11, "trial":I
    :goto_8
    if-lt v11, v1, :cond_8

    .line 306
    if-ne v7, v1, :cond_c

    .line 307
    move-object v9, v0

    .line 308
    goto :goto_6

    .line 285
    .end local v7    # "match":I
    .end local v8    # "other":Landroid/os/Bundle;
    .end local v11    # "trial":I
    :cond_7
    iget-object v12, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    invoke-virtual {v12}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v12

    move-object v8, v12

    goto :goto_7

    .line 289
    .restart local v7    # "match":I
    .restart local v8    # "other":Landroid/os/Bundle;
    .restart local v11    # "trial":I
    :cond_8
    aget-object v5, v6, v11

    .line 291
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v8, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 292
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v8, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 293
    add-int/lit8 v7, v7, 0x1

    .line 288
    :cond_9
    :goto_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 295
    :cond_a
    const-string v12, "identifier"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 296
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    iget-object v13, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 297
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 300
    :cond_b
    invoke-virtual {v2, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ljava/lang/Boolean;

    if-eqz v12, :cond_9

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 301
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .end local v5    # "key":Ljava/lang/String;
    :cond_c
    move v4, v3

    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto/16 :goto_5
.end method

.method public getIhrController()Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    return-object v0
.end method

.method public getTitleContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRController;->getTitleContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasConnectivity()Z
    .locals 3

    .prologue
    .line 692
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 693
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 695
    .local v1, "network":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    goto :goto_0
.end method

.method public makeController(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    const/4 v2, 0x0

    .line 317
    .local v2, "result":Lcom/clearchannel/iheartradio/controller/IHRController;
    const-string v3, "identifier"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 320
    .local v1, "identifier":Ljava/lang/String;
    :try_start_0
    const-string v3, "class"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRController;

    move-object v2, v0

    .line 322
    if-eqz v1, :cond_0

    iput-object v1, v2, Lcom/clearchannel/iheartradio/controller/IHRController;->mIdentifier:Ljava/lang/String;

    .line 323
    :cond_0
    iput-object p0, v2, Lcom/clearchannel/iheartradio/controller/IHRController;->mControllerActivity:Landroid/app/Activity;

    .line 324
    iput-object p1, v2, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    .line 325
    const-string v3, "controller_saved_instance_state"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 327
    iget-object v3, v2, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    const-string v4, "controller_finished"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 328
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onDestroy()V

    .line 329
    const/4 v2, 0x0

    .line 335
    :goto_0
    return-object v2

    .line 331
    :cond_1
    invoke-virtual {v2, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onNewIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "c"    # Landroid/content/res/Configuration;

    .prologue
    .line 648
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 650
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 653
    return-void

    .line 651
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "inItem"    # Landroid/view/MenuItem;

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method protected onControllerResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "inUnique"    # I
    .param p2, "inResult"    # I
    .param p3, "inParameters"    # Landroid/content/Intent;

    .prologue
    .line 107
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 481
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 483
    new-instance v5, Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-direct {v5}, Lcom/clearchannel/iheartradio/android/model/IHRVector;-><init>()V

    iput-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    .line 486
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->prepareContent()V

    .line 488
    if-eqz p1, :cond_0

    .line 489
    const-string v5, "controller_activity_intent_stack"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 490
    .local v3, "intents":[Landroid/os/Parcelable;
    if-nez v3, :cond_1

    const/4 v5, 0x0

    move v4, v5

    .line 492
    .local v4, "n":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-lt v1, v4, :cond_2

    .line 502
    .end local v1    # "i":I
    .end local v3    # "intents":[Landroid/os/Parcelable;
    .end local v4    # "n":I
    :cond_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 503
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v5}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->lastElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->showController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 508
    :goto_2
    iput v6, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    .line 509
    return-void

    .line 490
    .restart local v3    # "intents":[Landroid/os/Parcelable;
    :cond_1
    array-length v5, v3

    move v4, v5

    goto :goto_0

    .line 494
    .restart local v1    # "i":I
    .restart local v4    # "n":I
    :cond_2
    :try_start_0
    aget-object v2, v3, v1

    check-cast v2, Landroid/content/Intent;

    .line 495
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->makeController(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v0

    .line 497
    .local v0, "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v5, v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    .end local v0    # "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 505
    .end local v1    # "i":I
    .end local v3    # "intents":[Landroid/os/Parcelable;
    .end local v4    # "n":I
    :cond_4
    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onNoController(Z)V

    goto :goto_2

    .line 498
    .restart local v1    # "i":I
    .restart local v3    # "intents":[Landroid/os/Parcelable;
    .restart local v4    # "n":I
    :catch_0
    move-exception v5

    goto :goto_3
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .param p1, "ioMenu"    # Landroid/view/ContextMenu;
    .param p2, "inView"    # Landroid/view/View;
    .param p3, "inDetails"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 657
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 659
    instance-of v0, p2, Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;

    if-eqz v0, :cond_0

    .line 660
    check-cast p2, Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;

    .end local p2    # "inView":Landroid/view/View;
    invoke-virtual {p2, p1, p3}, Lcom/clearchannel/iheartradio/android/view/IHRFavoritesListView;->addContextMenuItems(Landroid/view/ContextMenu;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 662
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 610
    const/4 v1, 0x0

    iput v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    .line 612
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 616
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 617
    return-void

    .line 613
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onDestroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 456
    const/4 v0, 0x0

    .line 458
    .local v0, "result":Z
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    if-eqz v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 462
    :cond_0
    if-nez v0, :cond_2

    .line 463
    const/4 v1, 0x4

    if-ne v1, p1, :cond_4

    .line 464
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_3

    .line 465
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onNoController(Z)V

    .line 470
    :goto_0
    const/4 v0, 0x1

    .line 476
    :cond_2
    :goto_1
    return v0

    .line 467
    :cond_3
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popTopController()Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0

    .line 472
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1
.end method

.method protected onNoController(Z)V
    .locals 0
    .param p1, "inCreating"    # Z

    .prologue
    .line 100
    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->finish()V

    .line 103
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 588
    const/4 v1, 0x2

    iput v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    .line 590
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 595
    return-void

    .line 591
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onPause()V

    goto :goto_0
.end method

.method protected onPopController(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 0
    .param p1, "inPopping"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 97
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 547
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 549
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 555
    return-void

    .line 551
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 553
    .local v0, "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    iget-object v2, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    const-string v3, "controller_saved_instance_state"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onPostCreate(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onPostResume()V
    .locals 2

    .prologue
    .line 570
    invoke-super {p0}, Landroid/app/Activity;->onPostResume()V

    .line 572
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 575
    return-void

    .line 573
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onPostResume()V

    goto :goto_0
.end method

.method protected onPushController(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 0
    .param p1, "inPushing"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 93
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 513
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 515
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    const/4 v1, 0x1

    iput v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    .line 520
    return-void

    .line 516
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onRestart()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 535
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 537
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 543
    return-void

    .line 539
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 541
    .local v0, "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    iget-object v2, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    const-string v3, "controller_saved_instance_state"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 559
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 561
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 565
    const/4 v1, 0x3

    iput v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    .line 566
    return-void

    .line 562
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onResume()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "ioState"    # Landroid/os/Bundle;

    .prologue
    .line 621
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 623
    const/4 v2, 0x0

    .line 624
    .local v2, "index":I
    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v6, :cond_0

    const/4 v6, 0x0

    move v1, v6

    .line 625
    .local v1, "count":I
    :goto_0
    new-array v4, v1, [Landroid/os/Parcelable;

    .line 627
    .local v4, "intents":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_1

    .line 642
    const-string v6, "controller_activity_intent_stack"

    invoke-virtual {p1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 644
    return-void

    .line 624
    .end local v1    # "count":I
    .end local v4    # "intents":[Landroid/os/Parcelable;
    :cond_0
    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v6}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v6

    move v1, v6

    goto :goto_0

    .line 628
    .restart local v1    # "count":I
    .restart local v4    # "intents":[Landroid/os/Parcelable;
    :cond_1
    iget-object v6, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v6, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 629
    .local v0, "controller":Lcom/clearchannel/iheartradio/controller/IHRController;
    iget-object v3, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    .line 630
    .local v3, "intent":Landroid/content/Intent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 632
    .local v5, "state":Landroid/os/Bundle;
    if-nez v3, :cond_2

    .line 633
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "class"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 636
    :cond_2
    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/controller/IHRController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 637
    const-string v6, "controller_saved_instance_state"

    invoke-virtual {v3, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 639
    aput-object v3, v4, v2

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method protected onShowController(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 0
    .param p1, "inPushing"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 89
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 526
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 530
    const/4 v1, 0x2

    iput v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    .line 531
    return-void

    .line 527
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onStart()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 599
    const/4 v1, 0x1

    iput v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    .line 601
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 605
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 606
    return-void

    .line 602
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onStop()V

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    .prologue
    .line 579
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 581
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 584
    return-void

    .line 582
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/clearchannel/iheartradio/controller/IHRController;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->onUserLeaveHint()V

    goto :goto_0
.end method

.method public popController(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 2
    .param p1, "inController"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 436
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->modifyControllerStack(Lcom/clearchannel/iheartradio/controller/IHRController;II)V

    .line 437
    return-void
.end method

.method public popToController(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 2
    .param p1, "inController"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 440
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->modifyControllerStack(Lcom/clearchannel/iheartradio/controller/IHRController;II)V

    .line 441
    return-void
.end method

.method public popToRoot()V
    .locals 3

    .prologue
    .line 432
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->modifyControllerStack(Lcom/clearchannel/iheartradio/controller/IHRController;II)V

    .line 433
    return-void
.end method

.method public popTopController()Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 5

    .prologue
    .line 444
    const/4 v1, 0x0

    .line 445
    .local v1, "result":Lcom/clearchannel/iheartradio/controller/IHRController;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move v0, v2

    .line 447
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_0

    .line 448
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    sub-int v4, v0, v4

    invoke-direct {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->modifyControllerStack(Lcom/clearchannel/iheartradio/controller/IHRController;II)V

    .line 451
    :cond_0
    return-object v1

    .line 445
    .end local v0    # "count":I
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method protected prepareContent()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public pushController(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 1
    .param p1, "inController"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    const/4 v0, -0x1

    .line 339
    invoke-direct {p0, p1, v0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->modifyControllerStack(Lcom/clearchannel/iheartradio/controller/IHRController;II)V

    .line 340
    return-void
.end method

.method public pushControllerClass(Ljava/lang/String;Landroid/os/Bundle;)Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 2
    .param p1, "inClass"    # Ljava/lang/String;
    .param p2, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 423
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 425
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 426
    if-eqz p2, :cond_0

    const-string v1, "controller_saved_instance_state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 428
    :cond_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v1

    return-object v1
.end method

.method public pushControllerForResult(Landroid/content/Intent;I)Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "inUnique"    # I

    .prologue
    .line 415
    const-string v1, "controller_report_result"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v0

    .line 417
    .local v0, "result":Lcom/clearchannel/iheartradio/controller/IHRController;
    const/4 v1, 0x0

    iput v1, v0, Lcom/clearchannel/iheartradio/controller/IHRController;->mResult:I

    .line 419
    return-object v0
.end method

.method public pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 351
    const/4 v2, 0x0

    .line 352
    .local v2, "result":Lcom/clearchannel/iheartradio/controller/IHRController;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 354
    .local v0, "flags":I
    const/high16 v3, 0x24020000

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    .line 355
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->existingController(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v2

    .line 358
    :cond_0
    if-nez v2, :cond_4

    .line 360
    :try_start_0
    const-string v3, "controller_stack_insert_order"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 362
    .local v1, "order":I
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->makeController(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v2

    .line 364
    if-eqz v2, :cond_1

    .line 366
    if-ltz v1, :cond_2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 367
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v3, v1, v2}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->add(ILjava/lang/Object;)V

    .line 369
    iget v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mState:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 370
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/controller/IHRController;->onStart()V

    .line 371
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRController;->onPostCreate(Landroid/os/Bundle;)V

    .line 411
    .end local v1    # "order":I
    :cond_1
    :goto_0
    return-object v2

    .line 373
    .restart local v1    # "order":I
    :cond_2
    const/high16 v3, 0x10000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_3

    .line 375
    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->modifyControllerStack(Lcom/clearchannel/iheartradio/controller/IHRController;II)V

    goto :goto_0

    .line 380
    .end local v1    # "order":I
    :catch_0
    move-exception v3

    goto :goto_0

    .line 378
    .restart local v1    # "order":I
    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->modifyControllerStack(Lcom/clearchannel/iheartradio/controller/IHRController;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    .end local v1    # "order":I
    :cond_4
    const/high16 v3, 0x20000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->lastElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 384
    :cond_5
    const/high16 v3, 0x4000000

    and-int/2addr v3, v0

    if-eqz v3, :cond_6

    .line 388
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 389
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0

    .line 392
    :cond_6
    const/high16 v3, 0x20000

    and-int/2addr v3, v0

    if-eqz v3, :cond_1

    .line 397
    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 398
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    goto :goto_0
.end method

.method public pushing(Ljava/lang/Class;I)Landroid/content/Intent;
    .locals 1
    .param p1, "inClass"    # Ljava/lang/Class;
    .param p2, "inFlags"    # I

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public pushing(Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2
    .param p1, "inClass"    # Ljava/lang/String;
    .param p2, "inFlags"    # I

    .prologue
    .line 343
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "class"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public quit()V
    .locals 2

    .prologue
    .line 700
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->stop()V

    .line 703
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/model/IHRPlayerClient;->serviceTell(I)V

    .line 705
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onNoController(Z)V

    .line 706
    return-void
.end method

.method public saveWallOnScreenTimer()V
    .locals 5

    .prologue
    .line 710
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 711
    .local v1, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 712
    .local v0, "prefEditor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "savedMillisUntilNextWOS"

    invoke-static {}, Lcom/clearchannel/iheartradio/android/services/IHRServicePlayer;->getMillisUntilFinished()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 713
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 715
    return-void
.end method

.method protected showController(Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 5
    .param p1, "inController"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    if-eq v2, p1, :cond_4

    .line 115
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 116
    .local v1, "old":Lcom/clearchannel/iheartradio/controller/IHRController;
    move-object v0, p1

    .line 118
    .local v0, "now":Lcom/clearchannel/iheartradio/controller/IHRController;
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 120
    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/controller/IHRController;->beingShown(Z)V

    .line 121
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/controller/IHRController;->beingShown(Z)V

    .line 123
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->swapController(Lcom/clearchannel/iheartradio/controller/IHRController;Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 125
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Lcom/clearchannel/iheartradio/controller/IHRController;->afterShown(Z)V

    .line 126
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/controller/IHRController;->afterShown(Z)V

    .line 128
    :cond_3
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->onShowController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 130
    .end local v0    # "now":Lcom/clearchannel/iheartradio/controller/IHRController;
    .end local v1    # "old":Lcom/clearchannel/iheartradio/controller/IHRController;
    :cond_4
    return-void
.end method

.method protected swapController(Lcom/clearchannel/iheartradio/controller/IHRController;Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 1
    .param p1, "inNew"    # Lcom/clearchannel/iheartradio/controller/IHRController;
    .param p2, "inOld"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 110
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->setContentView(Landroid/view/View;)V

    .line 111
    return-void

    .line 110
    :cond_0
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->content()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public topController()Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    :goto_0
    return-object v0

    .restart local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mControllers:Lcom/clearchannel/iheartradio/android/model/IHRVector;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRVector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    check-cast p0, Lcom/clearchannel/iheartradio/controller/IHRController;

    move-object v0, p0

    goto :goto_0
.end method

.method public visibleController()Lcom/clearchannel/iheartradio/controller/IHRController;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->mController:Lcom/clearchannel/iheartradio/controller/IHRController;

    return-object v0
.end method
