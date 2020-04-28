.class public Lcom/clearchannel/iheartradio/controller/IHRController;
.super Lcom/clearchannel/iheartradio/model/IHRObject;
.source "IHRController.java"

# interfaces
.implements Lcom/clearchannel/iheartradio/model/IHRSingleSignOnCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRController$IHRAlert;,
        Lcom/clearchannel/iheartradio/controller/IHRController$IHRIgnoreAlert;
    }
.end annotation


# static fields
.field public static FAVORITE_SYNC_URL:Ljava/lang/String; = null

.field public static NEW_FAVORITE_LIST:Ljava/lang/String; = null

.field public static NEW_FAVORITE_SYNC_URL:Ljava/lang/String; = null

.field public static final SYNC_END:B = 0xat

.field public static backGroundSync:Z

.field public static syncInProgress:Z

.field public static syncsQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ex:Ljava/lang/Exception;

.field private handler:Landroid/os/Handler;

.field protected mContent:Landroid/view/View;

.field protected mControllerActivity:Landroid/app/Activity;

.field protected mCreationIntent:Landroid/content/Intent;

.field protected mIdentifier:Ljava/lang/String;

.field protected mResult:I

.field public mTitleContent:Ljava/lang/String;

.field protected popup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

.field public progressDialog:Landroid/app/ProgressDialog;

.field public response:Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;

.field protected toast:Landroid/widget/Toast;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "http://service.ccrd.clearchannel.com/service/favorites_sync_list/"

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRController;->FAVORITE_SYNC_URL:Ljava/lang/String;

    .line 45
    const-string v0, "http://stg02-service.ccrd.clearchannel.com/mobileservices/update_favorites"

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRController;->NEW_FAVORITE_SYNC_URL:Ljava/lang/String;

    .line 46
    const-string v0, "http://stg02-service.ccrd.clearchannel.com/mobileservices/list_favorites"

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRController;->NEW_FAVORITE_LIST:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRController;->syncsQueue:Ljava/util/LinkedList;

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/clearchannel/iheartradio/controller/IHRController;->backGroundSync:Z

    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/clearchannel/iheartradio/controller/IHRController;->syncInProgress:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/model/IHRObject;-><init>()V

    .line 72
    new-instance v0, Lcom/clearchannel/iheartradio/controller/IHRController$1;

    invoke-direct {v0, p0}, Lcom/clearchannel/iheartradio/controller/IHRController$1;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->handler:Landroid/os/Handler;

    .line 94
    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->progressDialog:Landroid/app/ProgressDialog;

    .line 98
    iput-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mTitleContent:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public MessageAlert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "messg"    # Ljava/lang/String;
    .param p2, "button1"    # Ljava/lang/String;
    .param p3, "button2"    # Ljava/lang/String;

    .prologue
    .line 278
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Inside Message Alert"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 279
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mControllerActivity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 281
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 282
    new-instance v3, Lcom/clearchannel/iheartradio/controller/IHRController$2;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/controller/IHRController$2;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    invoke-virtual {v2, p2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 287
    new-instance v3, Lcom/clearchannel/iheartradio/controller/IHRController$3;

    invoke-direct {v3, p0}, Lcom/clearchannel/iheartradio/controller/IHRController$3;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    invoke-virtual {v2, p3, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 292
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 293
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 294
    return-void
.end method

.method public activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;
    .locals 0

    .prologue
    .line 104
    iget-object p0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mControllerActivity:Landroid/app/Activity;

    .end local p0    # "this":Lcom/clearchannel/iheartradio/controller/IHRController;
    check-cast p0, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    return-object p0
.end method

.method public afterShown(Z)V
    .locals 0
    .param p1, "inShown"    # Z

    .prologue
    .line 220
    return-void
.end method

.method public beingShown(Z)V
    .locals 0
    .param p1, "inShown"    # Z

    .prologue
    .line 215
    return-void
.end method

.method public buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "buttonName"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 320
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1080078

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 321
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 322
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 324
    new-instance v2, Lcom/clearchannel/iheartradio/controller/IHRController$4;

    invoke-direct {v2, p0}, Lcom/clearchannel/iheartradio/controller/IHRController$4;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 323
    invoke-virtual {v0, p3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 329
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 330
    .local v1, "dialog":Landroid/app/AlertDialog;
    return-object v1
.end method

.method public buildProgressDialog(Ljava/lang/String;)Landroid/app/ProgressDialog;
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 308
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 309
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 311
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 312
    return-object v0
.end method

.method public cleanTabViewControllers()V
    .locals 5

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->controllers()[Lcom/clearchannel/iheartradio/controller/IHRController;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 579
    return-void

    .line 574
    :cond_0
    aget-object v0, v1, v3

    .line 575
    .local v0, "ctrl":Lcom/clearchannel/iheartradio/controller/IHRController;
    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    instance-of v4, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    if-eqz v4, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 574
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public content()Landroid/view/View;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public debugLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "inMethod"    # Ljava/lang/String;
    .param p2, "inLog"    # Ljava/lang/String;

    .prologue
    .line 273
    const-string v0, "::: UI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "inID"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->popController(Lcom/clearchannel/iheartradio/controller/IHRController;)V

    .line 198
    :cond_0
    return-void
.end method

.method public getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mControllerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mCreationIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPopup()Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->popup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mResult:I

    return v0
.end method

.method public getTitleContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mTitleContent:Ljava/lang/String;

    return-object v0
.end method

.method public getmControllerActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mControllerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public hideKeyboard(I)V
    .locals 4
    .param p1, "inFlags"    # I

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 238
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object v1, v2

    .line 240
    .local v1, "window":Landroid/os/IBinder;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1, p1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 241
    :cond_0
    return-void

    .line 238
    .end local v1    # "window":Landroid/os/IBinder;
    :cond_1
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    move-object v1, v2

    goto :goto_0
.end method

.method public identifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public inflateLayout(I)Landroid/view/View;
    .locals 2
    .param p1, "inID"    # I

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "c"    # Landroid/content/res/Configuration;

    .prologue
    .line 170
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->prepareView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 172
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 173
    .local v0, "consumed":Ljava/lang/Boolean;
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->popup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->popup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;->dismiss()V

    .line 176
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 179
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 144
    const-string v0, "Activity"

    const-string v1, "New intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 151
    return-void
.end method

.method protected onPostResume()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 148
    const-string v0, "Activity"

    const-string v1, "Restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 152
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onSSOResponse(Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;ILjava/lang/Exception;)V
    .locals 0
    .param p1, "resp"    # Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$ResponseSuper;
    .param p2, "type"    # I
    .param p3, "ex"    # Ljava/lang/Exception;

    .prologue
    .line 343
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "ioState"    # Landroid/os/Bundle;

    .prologue
    .line 169
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 150
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 0

    .prologue
    .line 163
    return-void
.end method

.method protected prepareView()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "inRun"    # Ljava/lang/Runnable;

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 204
    :cond_0
    return-void
.end method

.method public setContentView(I)V
    .locals 1
    .param p1, "inID"    # I

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->inflateLayout(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "inView"    # Landroid/view/View;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mContent:Landroid/view/View;

    return-void
.end method

.method public setPopup(Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;)V
    .locals 0
    .param p1, "popup"    # Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->popup:Lcom/clearchannel/iheartradio/android/view/ActionPopupWindow;

    .line 184
    return-void
.end method

.method public setResult(I)V
    .locals 0
    .param p1, "inResult"    # I

    .prologue
    .line 190
    iput p1, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->mResult:I

    return-void
.end method

.method public shareViaEmail(Ljava/lang/String;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "shareType"    # Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    .prologue
    .line 358
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    const-string v1, "<br />"

    .line 361
    .local v1, "lineBreak":Ljava/lang/String;
    const-string v4, "listening to"

    .line 363
    .local v4, "verb":Ljava/lang/String;
    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->VIDEO:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    if-ne p3, v5, :cond_2

    .line 364
    const-string v4, "watching"

    .line 367
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Check out "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on iheartradio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "subject":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v5, "<font face=\'helvetica\' size=\'3\'><p>Hello --</p>"

    invoke-direct {v0, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "body":Ljava/lang/StringBuffer;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    const-string v5, "<p>I was just "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    const-string v5, " <b>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 374
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 375
    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;->VIDEO:Lcom/clearchannel/iheartradio/android/view/IHRListView$ShareType;

    if-ne p3, v5, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 376
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 377
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    :cond_3
    const-string v5, "</b> on iheartradio and I think you would enjoy it too! Listen for free*, where ever you go.</p>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    const-string v5, "<a href=\'http://www.iheartradio.com/\'>Explore over 750 other radio stations on iheartradio</a>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 384
    const-string v5, "<a href=\'http://www.iheartradio.com/cc-common/radio_app/index.html\'>Download iheartradio for: iPhone, iPad, Blackberry, Android, Windows Phone 7</a>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    const-string v5, "<p>*Standard carrier charges may apply.</p></font>"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 397
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SEND"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    .local v2, "sendIntent":Landroid/content/Intent;
    const-string v5, "text/html"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v5, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v5, "android.intent.extra.TEXT"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 403
    const-string v5, "sms_body"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 406
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v5

    const-string v6, "Send mail..."

    invoke-static {v2, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public shareViaFacebook(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "caption"    # Ljava/lang/String;
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "identifier"    # Ljava/lang/String;

    .prologue
    .line 347
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/clearchannel/iheartradio/controller/IHRController$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/clearchannel/iheartradio/controller/IHRController$5;-><init>(Lcom/clearchannel/iheartradio/controller/IHRController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 353
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 355
    return-void
.end method

.method public showKeyboard(I)V
    .locals 3
    .param p1, "inFlags"    # I

    .prologue
    .line 223
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 231
    .local v0, "manager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 234
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->toast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 303
    :goto_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->toast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 305
    :cond_0
    return-void

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRController;->toast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public startController(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 192
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    return-void
.end method

.method public startControllerForResult(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "inUnique"    # I

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerForResult(Landroid/content/Intent;I)Lcom/clearchannel/iheartradio/controller/IHRController;

    return-void
.end method

.method public validateEmail(Ljava/lang/String;)Z
    .locals 2
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v0, 0x1

    .line 416
    .local v0, "result":Z
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 424
    :goto_0
    return v1

    .line 417
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 418
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 419
    const-string v1, "@"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 420
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 422
    :cond_1
    const/4 v0, 0x0

    :cond_2
    move v1, v0

    .line 424
    goto :goto_0
.end method

.method public wantsBanner()Z
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    return v0
.end method
