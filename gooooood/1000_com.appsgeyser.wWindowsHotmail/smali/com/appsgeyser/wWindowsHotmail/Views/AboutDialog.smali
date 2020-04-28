.class public Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;
.super Landroid/app/Dialog;
.source "AboutDialog.java"


# instance fields
.field mActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

.field private mAppVersion:Ljava/lang/String;

.field private mDescription:Landroid/widget/TextView;

.field private mLink:Landroid/widget/TextView;

.field private mLogo:Landroid/widget/ImageView;

.field private mWidgetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;I)V
    .locals 0
    .param p1, "activity"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;
    .param p2, "theme"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 51
    invoke-direct {p0, p1}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->init(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V

    .line 52
    return-void
.end method

.method private init(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;)V
    .locals 3
    .param p1, "activity"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    .line 31
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->setContentView(I)V

    .line 32
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mLogo:Landroid/widget/ImageView;

    .line 33
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mDescription:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getConfig()Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/Utils/WebWidgetConfigutation;->getWidgetName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mWidgetName:Ljava/lang/String;

    .line 37
    :try_start_0
    iget-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v0}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v1}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mAppVersion:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mLink:Landroid/widget/TextView;

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->setCancelable(Z)V

    .line 42
    sget-object v0, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    invoke-virtual {p0, v0}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V

    .line 43
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public setApplicationMode(Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;)V
    .locals 5
    .param p1, "mode"    # Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 59
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->COMMON:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    if-ne p1, v1, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mActivity:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;

    invoke-virtual {v2}, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br />ver. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "descr":Ljava/lang/String;
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mDescription:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mLink:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    .end local v0    # "descr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget-object v1, Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;->CUSTOM:Lcom/appsgeyser/wWindowsHotmail/MainNavigationActivity$ApplicationMode;

    if-ne p1, v1, :cond_0

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mWidgetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<br /> <br />ver. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    .restart local v0    # "descr":Ljava/lang/String;
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mDescription:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mLink:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v1, p0, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->mLogo:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public showDialog()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/appsgeyser/wWindowsHotmail/Views/AboutDialog;->show()V

    .line 56
    return-void
.end method
