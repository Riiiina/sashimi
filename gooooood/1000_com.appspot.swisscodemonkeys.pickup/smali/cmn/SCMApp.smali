.class public abstract Lcmn/SCMApp;
.super Landroid/app/Activity;
.source "SCMApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcmn/SCMApp$ActivityListener;
    }
.end annotation


# static fields
.field private static final ABOUT:I = 0x3

.field private static final APP_FOR_ANDROID:I = 0x8

.field private static final CLOSE:I = 0x0

.field private static final ONLY_FROM_ANDROID:I = 0x7

.field private static final OTHER_APPS:I = 0x5

.field private static final REALLY_COOL:I = 0x6

.field private static final SEND_FEEDBACK:I = 0x4

.field private static final SEND_FRIEND:I = 0x1

.field private static final SHARE:I = 0x2


# instance fields
.field private i18n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iconId:I

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcmn/SCMApp$ActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private notificationBar:Lcmn/NotificationBar;

.field protected prefs:Landroid/content/SharedPreferences;

.field protected props:Lcmn/AppProperties;

.field private showShare:Z

.field private start:J

.field protected themeManager:Lcmn/ThemeManager;

.field private title:Ljava/lang/String;

.field private versionInt:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcmn/SCMApp;->showShare:Z

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcmn/SCMApp;->listeners:Ljava/util/List;

    .line 41
    return-void
.end method

.method public static confirm(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 406
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Confirm"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 407
    const-string v1, "No"

    const/4 v2, 0x0

    .line 406
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 407
    const-string v1, "Yes"

    new-instance v2, Lcmn/SCMApp$4;

    invoke-direct {v2, p2}, Lcmn/SCMApp$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 414
    return-void
.end method

.method private doUpdateCheck()V
    .locals 2

    .prologue
    .line 188
    new-instance v0, Lcmn/UpdateChecker;

    iget-object v1, p0, Lcmn/SCMApp;->props:Lcmn/AppProperties;

    invoke-direct {v0, p0, v1}, Lcmn/UpdateChecker;-><init>(Landroid/content/Context;Lcmn/AppProperties;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcmn/UpdateChecker;->checkForUpdate(Z)V

    .line 189
    return-void
.end method

.method private getSCMString(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 344
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcmn/SCMApp;
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private varargs getSCMString(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcmn/SCMApp;
    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initI18N()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 320
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "About"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Share"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Send to friend:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Close"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Send Feedback"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "You might want to try our other apps:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "This %s app is really cool.\n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(The link only works directly from your Android device)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "%s for Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v0, "de"

    invoke-virtual {p0}, Lcmn/SCMApp;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Info"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Senden"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "An Freund schicken:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Schliessen"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Feedback schicken"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Hier sind unsere anderen Anwendungen:"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Die %s Anwendung ist wirklich cool.\n"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "(Der Link geht nur direkt von dem Android Handy)"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v0, p0, Lcmn/SCMApp;->i18n:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "%s fuer Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    :cond_0
    return-void
.end method

.method public static final isThisUIThread()Z
    .locals 2

    .prologue
    .line 354
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showMarketDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 89
    new-instance v0, Lcmn/SCMApp$1;

    invoke-direct {v0, p0}, Lcmn/SCMApp$1;-><init>(Lcmn/SCMApp;)V

    .line 99
    .local v0, "click":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcmn/SCMApp$2;

    invoke-direct {v1, p0}, Lcmn/SCMApp$2;-><init>(Lcmn/SCMApp;)V

    .line 106
    .local v1, "quit":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 107
    const-string v3, "Go to market page now"

    .line 106
    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 107
    const-string v3, "Quit"

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 108
    return-void
.end method

.method public static final warnWhenNotUIThread()V
    .locals 3

    .prologue
    .line 358
    invoke-static {}, Lcmn/SCMApp;->isThisUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 359
    const-string v1, "scm"

    const-string v2, "Not on UI thread when expected to!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 366
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public addActivityListener(Lcmn/SCMApp$ActivityListener;)V
    .locals 1
    .param p1, "listener"    # Lcmn/SCMApp$ActivityListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcmn/SCMApp;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method protected addExtraMenuItems(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 248
    return-void
.end method

.method protected configureThemes(Lcmn/ThemeManager;)V
    .locals 0
    .param p1, "themeManager"    # Lcmn/ThemeManager;

    .prologue
    .line 152
    return-void
.end method

.method protected abstract getExtraEmailLine()Ljava/lang/String;
.end method

.method protected getNotificationId()I
    .locals 1

    .prologue
    .line 244
    const v0, 0x1080078

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 114
    invoke-direct {p0}, Lcmn/SCMApp;->initI18N()V

    .line 115
    new-instance v3, Lcmn/ThemeManager;

    invoke-direct {v3, p0}, Lcmn/ThemeManager;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcmn/SCMApp;->themeManager:Lcmn/ThemeManager;

    .line 116
    iget-object v3, p0, Lcmn/SCMApp;->themeManager:Lcmn/ThemeManager;

    invoke-virtual {p0, v3}, Lcmn/SCMApp;->configureThemes(Lcmn/ThemeManager;)V

    .line 117
    iget-object v3, p0, Lcmn/SCMApp;->themeManager:Lcmn/ThemeManager;

    invoke-virtual {v3}, Lcmn/ThemeManager;->setupTheme()V

    .line 119
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcmn/SCMApp;->prefs:Landroid/content/SharedPreferences;

    .line 122
    const-string v3, "Cool App"

    iput-object v3, p0, Lcmn/SCMApp;->title:Ljava/lang/String;

    .line 123
    invoke-static {p0}, Lcmn/AppProperties;->get(Landroid/content/Context;)Lcmn/AppProperties;

    move-result-object v3

    iput-object v3, p0, Lcmn/SCMApp;->props:Lcmn/AppProperties;

    .line 125
    iget-object v3, p0, Lcmn/SCMApp;->props:Lcmn/AppProperties;

    invoke-static {p0, v3}, Lcmn/ExCatch;->init(Landroid/content/Context;Lcmn/AppProperties;)V

    .line 129
    :try_start_0
    invoke-virtual {p0}, Lcmn/SCMApp;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcmn/SCMApp;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 130
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v3, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 131
    .local v0, "labelRes":I
    invoke-virtual {p0}, Lcmn/SCMApp;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcmn/SCMApp;->title:Ljava/lang/String;

    .line 132
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v3, p0, Lcmn/SCMApp;->versionInt:I

    .line 133
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->icon:I

    iput v3, p0, Lcmn/SCMApp;->iconId:I

    .line 134
    invoke-virtual {p0}, Lcmn/SCMApp;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 135
    .local v2, "pkg":Ljava/lang/String;
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    .end local v0    # "labelRes":I
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v2    # "pkg":Ljava/lang/String;
    :goto_0
    new-instance v3, Lcmn/NotificationBar;

    iget-object v4, p0, Lcmn/SCMApp;->props:Lcmn/AppProperties;

    invoke-direct {v3, p0, v4}, Lcmn/NotificationBar;-><init>(Lcmn/SCMApp;Lcmn/AppProperties;)V

    iput-object v3, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    .line 139
    iget-object v3, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    invoke-virtual {v3}, Lcmn/NotificationBar;->readPrefs()V

    .line 140
    invoke-direct {p0}, Lcmn/SCMApp;->doUpdateCheck()V

    .line 141
    return-void

    .line 136
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 281
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 282
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcmn/SCMApp;->getSCMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcmn/SCMApp;->iconId:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 284
    iget-boolean v0, p0, Lcmn/SCMApp;->showShare:Z

    if-eqz v0, :cond_0

    .line 285
    invoke-direct {p0, v4}, Lcmn/SCMApp;->getSCMString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080052

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 288
    invoke-virtual {p0, v4, p1}, Lcmn/SCMApp;->addExtraMenuItems(ILandroid/view/Menu;)V

    .line 292
    :goto_0
    return v3

    .line 290
    :cond_0
    invoke-virtual {p0, v3, p1}, Lcmn/SCMApp;->addExtraMenuItems(ILandroid/view/Menu;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v2, 0x1

    .line 255
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcmn/SCMApp;->showShare:Z

    if-eqz v0, :cond_1

    .line 271
    const/4 v0, 0x2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcmn/SCMApp;->selectMenuItem(II)V

    :goto_0
    move v0, v2

    .line 275
    :goto_1
    return v0

    .line 257
    :pswitch_0
    invoke-virtual {p0}, Lcmn/SCMApp;->showAboutDialog()V

    move v0, v2

    .line 258
    goto :goto_1

    .line 260
    :pswitch_1
    iget-boolean v0, p0, Lcmn/SCMApp;->showShare:Z

    if-eqz v0, :cond_0

    .line 261
    invoke-virtual {p0}, Lcmn/SCMApp;->sendEmail()V

    move v0, v2

    .line 262
    goto :goto_1

    .line 273
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcmn/SCMApp;->selectMenuItem(II)V

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 170
    iget-object v2, p0, Lcmn/SCMApp;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 171
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p0, v1}, Lcmn/SCMApp;->writePreferences(Landroid/content/SharedPreferences$Editor;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcmn/SCMApp$3;

    invoke-direct {v3, p0, v1}, Lcmn/SCMApp$3;-><init>(Lcmn/SCMApp;Landroid/content/SharedPreferences$Editor;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 176
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 178
    :cond_0
    iget-object v2, p0, Lcmn/SCMApp;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    return-void

    .line 178
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmn/SCMApp$ActivityListener;

    .line 179
    .local v0, "al":Lcmn/SCMApp$ActivityListener;
    invoke-interface {v0}, Lcmn/SCMApp$ActivityListener;->onPause()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 7

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcmn/SCMApp;->start:J

    .line 195
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 196
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 197
    .local v2, "marketMessage":Ljava/lang/String;
    const-string v5, "minver"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    const-string v5, "minver"

    const-string v6, "0"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 199
    .local v3, "minVersion":I
    iget v5, p0, Lcmn/SCMApp;->versionInt:I

    if-ge v5, v3, :cond_0

    .line 200
    const-string v2, "This version of this application is too old. Please upgrade the application to a newer version."

    .line 203
    .end local v3    # "minVersion":I
    :cond_0
    const-string v5, "exp_i"

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 204
    const-string v5, "exp_i"

    const-string v6, "22"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 205
    .local v1, "expectedI":I
    iget-object v5, p0, Lcmn/SCMApp;->props:Lcmn/AppProperties;

    invoke-virtual {v5}, Lcmn/AppProperties;->getInstallCode()I

    move-result v5

    if-eq v5, v1, :cond_1

    .line 206
    const-string v5, "exp_imsg"

    .line 207
    const-string v6, "This app seems not properly installed via the market."

    .line 206
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    .end local v1    # "expectedI":I
    :cond_1
    if-eqz v2, :cond_2

    .line 212
    :try_start_0
    invoke-direct {p0, v2}, Lcmn/SCMApp;->showMarketDialog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_2
    :goto_0
    invoke-virtual {p0, v4}, Lcmn/SCMApp;->readPreferences(Landroid/content/SharedPreferences;)V

    .line 219
    invoke-direct {p0}, Lcmn/SCMApp;->doUpdateCheck()V

    .line 223
    iget-object v5, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    invoke-virtual {v5}, Lcmn/NotificationBar;->updateNotificationBarUI()V

    .line 225
    iget-object v5, p0, Lcmn/SCMApp;->listeners:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 228
    return-void

    .line 225
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcmn/SCMApp$ActivityListener;

    .line 226
    .local v0, "al":Lcmn/SCMApp$ActivityListener;
    invoke-interface {v0}, Lcmn/SCMApp$ActivityListener;->onResume()V

    goto :goto_1

    .line 213
    .end local v0    # "al":Lcmn/SCMApp$ActivityListener;
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method protected readPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "preferences"    # Landroid/content/SharedPreferences;

    .prologue
    .line 184
    return-void
.end method

.method protected selectMenuItem(II)V
    .locals 0
    .param p1, "startIndex"    # I
    .param p2, "index"    # I

    .prologue
    .line 251
    return-void
.end method

.method protected sendEmail()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://swisscodemonkeys.appspot.com/app/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcmn/AppProperties;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 301
    const-string v3, "?t=em"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "link":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v1, "sendIntent":Landroid/content/Intent;
    const-string v2, "android.intent.extra.SUBJECT"

    const/16 v3, 0x8

    new-array v4, v7, [Ljava/lang/String;

    iget-object v5, p0, Lcmn/SCMApp;->title:Ljava/lang/String;

    aput-object v5, v4, v8

    invoke-direct {p0, v3, v4}, Lcmn/SCMApp;->getSCMString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v2, "android.intent.extra.TEXT"

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    new-array v5, v7, [Ljava/lang/String;

    iget-object v6, p0, Lcmn/SCMApp;->title:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-direct {p0, v4, v5}, Lcmn/SCMApp;->getSCMString(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcmn/SCMApp;->getExtraEmailLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 305
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    invoke-direct {p0, v7}, Lcmn/SCMApp;->getSCMString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcmn/SCMApp;->startActivity(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 370
    iget-object v1, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    invoke-virtual {v1}, Lcmn/NotificationBar;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcmn/SCMApp;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 372
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    invoke-virtual {v1, v0}, Lcmn/NotificationBar;->setContentViewWithNotification(Landroid/view/View;)V

    .line 376
    .end local v0    # "view":Landroid/view/View;
    :goto_0
    return-void

    .line 374
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 389
    iget-object v0, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    invoke-virtual {v0}, Lcmn/NotificationBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    invoke-virtual {v0, p1}, Lcmn/NotificationBar;->setContentViewWithNotification(Landroid/view/View;)V

    .line 394
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 380
    iget-object v0, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    invoke-virtual {v0}, Lcmn/NotificationBar;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcmn/SCMApp;->notificationBar:Lcmn/NotificationBar;

    invoke-virtual {v0, p1}, Lcmn/NotificationBar;->setContentViewWithNotification(Landroid/view/View;)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setFullSize()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcmn/SCMApp;->requestWindowFeature(I)Z

    .line 84
    invoke-virtual {p0}, Lcmn/SCMApp;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 86
    return-void
.end method

.method public setShowShare(Z)V
    .locals 0
    .param p1, "showShare"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcmn/SCMApp;->showShare:Z

    .line 156
    return-void
.end method

.method setSuperContentView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 402
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 403
    return-void
.end method

.method public showAboutDialog()V
    .locals 3

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcmn/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "props"

    iget-object v2, p0, Lcmn/SCMApp;->props:Lcmn/AppProperties;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v0}, Lcmn/SCMApp;->startActivity(Landroid/content/Intent;)V

    .line 234
    return-void
.end method

.method public showAboutDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcmn/AboutActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "props"

    iget-object v2, p0, Lcmn/SCMApp;->props:Lcmn/AppProperties;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 239
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-virtual {p0, v0}, Lcmn/SCMApp;->startActivity(Landroid/content/Intent;)V

    .line 241
    return-void
.end method

.method protected writePreferences(Landroid/content/SharedPreferences$Editor;)Z
    .locals 1
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method
