.class public Lcmn/ThemeManager;
.super Ljava/lang/Object;
.source "ThemeManager.java"


# static fields
.field private static final DEFAULT_THEME_INDEX:Ljava/lang/String; = "0"

.field private static final THEME_PREF_KEY:Ljava/lang/String; = "theme"


# instance fields
.field private final activity:Landroid/app/Activity;

.field private theme:I

.field private themeResource:[I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, -0x1

    iput v0, p0, Lcmn/ThemeManager;->theme:I

    .line 31
    iput-object p1, p0, Lcmn/ThemeManager;->activity:Landroid/app/Activity;

    .line 32
    return-void
.end method


# virtual methods
.method public getTheme()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcmn/ThemeManager;->theme:I

    return v0
.end method

.method public setThemeResources([I)V
    .locals 0
    .param p1, "ids"    # [I

    .prologue
    .line 35
    iput-object p1, p0, Lcmn/ThemeManager;->themeResource:[I

    .line 36
    return-void
.end method

.method public setupTheme()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 47
    iget-object v2, p0, Lcmn/ThemeManager;->themeResource:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcmn/ThemeManager;->themeResource:[I

    array-length v2, v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v2, p0, Lcmn/ThemeManager;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 53
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const/4 v0, 0x0

    .line 55
    .local v0, "newTheme":I
    :try_start_0
    const-string v2, "theme"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    :goto_1
    iget v2, p0, Lcmn/ThemeManager;->theme:I

    if-eq v0, v2, :cond_0

    .line 63
    iget v2, p0, Lcmn/ThemeManager;->theme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 65
    iget-object v2, p0, Lcmn/ThemeManager;->activity:Landroid/app/Activity;

    const-string v3, "updating theme"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 66
    iget-object v2, p0, Lcmn/ThemeManager;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 67
    iget-object v2, p0, Lcmn/ThemeManager;->activity:Landroid/app/Activity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcmn/ThemeManager;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcmn/ThemeManager;->activity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 71
    :cond_2
    iput v0, p0, Lcmn/ThemeManager;->theme:I

    .line 73
    iget v2, p0, Lcmn/ThemeManager;->theme:I

    if-ltz v2, :cond_3

    iget v2, p0, Lcmn/ThemeManager;->theme:I

    iget-object v3, p0, Lcmn/ThemeManager;->themeResource:[I

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 74
    :cond_3
    iput v4, p0, Lcmn/ThemeManager;->theme:I

    .line 76
    :cond_4
    iget-object v2, p0, Lcmn/ThemeManager;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcmn/ThemeManager;->themeResource:[I

    iget v4, p0, Lcmn/ThemeManager;->theme:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v2

    goto :goto_1
.end method
