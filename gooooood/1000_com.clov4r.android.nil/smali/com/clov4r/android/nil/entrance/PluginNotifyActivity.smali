.class public Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;
.super Landroid/app/Activity;


# instance fields
.field A:Landroid/os/Handler;

.field B:J

.field C:J

.field D:Z

.field E:I

.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Ljava/lang/String;

.field J:Ljava/lang/String;

.field K:Ljava/lang/String;

.field L:Ljava/lang/String;

.field M:Ljava/lang/String;

.field N:Ljava/lang/String;

.field O:Ljava/lang/String;

.field final P:Ljava/lang/String;

.field final Q:Ljava/lang/String;

.field R:Landroid/widget/LinearLayout;

.field S:Landroid/view/View$OnClickListener;

.field private T:I

.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ListView;

.field h:Landroid/widget/Button;

.field i:Landroid/widget/Button;

.field j:Landroid/widget/ProgressBar;

.field k:Landroid/widget/ProgressBar;

.field l:Landroid/widget/Button;

.field m:Landroid/widget/Button;

.field n:Landroid/widget/TextView;

.field o:Landroid/content/SharedPreferences;

.field p:Landroid/content/SharedPreferences$Editor;

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Ljava/lang/String;

.field t:J

.field u:J

.field v:I

.field public w:I

.field x:Z

.field y:Lcom/clov4r/android/nil/entrance/b;

.field z:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->j:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->k:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->n:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->p:Landroid/content/SharedPreferences$Editor;

    iput v2, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->T:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->w:I

    iput-boolean v2, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->x:Z

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->z:Ljava/util/ArrayList;

    new-instance v0, Lcom/clov4r/android/nil/entrance/x;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/entrance/x;-><init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->A:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->D:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->F:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->H:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->I:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->J:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->K:Ljava/lang/String;

    const-string v0, "<font color=\"#FFFFFF\">"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->L:Ljava/lang/String;

    const-string v0, "</font>"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->M:Ljava/lang/String;

    const-string v0, "<a href=\"http://emailToClov4r\">"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->N:Ljava/lang/String;

    const-string v0, "</a>"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->O:Ljava/lang/String;

    const-string v0, "text/html"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->P:Ljava/lang/String;

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->Q:Ljava/lang/String;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->R:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/clov4r/android/nil/entrance/v;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/entrance/v;-><init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->S:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)I
    .locals 1

    iget v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->T:I

    return v0
.end method

.method private b()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->R:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->R:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->J:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/clov4r/android/nil/entrance/t;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/t;-><init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->R:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->R:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->w:I

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->D:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    const v1, 0x7f09009f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->D:Z

    goto :goto_0
.end method

.method a(JJ)V
    .locals 4

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->p:Landroid/content/SharedPreferences$Editor;

    const-string v1, "pub_date"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->q:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->p:Landroid/content/SharedPreferences$Editor;

    const-string v1, "file_name"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->p:Landroid/content/SharedPreferences$Editor;

    const-string v1, "download_url"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->s:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->p:Landroid/content/SharedPreferences$Editor;

    const-string v1, "file_size"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->p:Landroid/content/SharedPreferences$Editor;

    const-string v1, "download_progress"

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->p:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method a()Z
    .locals 4

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.android.vending"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v5, 0x4

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v2, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->requestWindowFeature(I)Z

    const-string v0, "file_info"

    invoke-virtual {p0, v0, v6}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->p:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "pub_date"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->q:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "file_name"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->r:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "download_url"

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->s:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "file_size"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->u:J

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "download_progress"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->t:J

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->o:Landroid/content/SharedPreferences;

    const-string v1, "index"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->v:I

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activity_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->T:I

    const-string v1, "reDownload"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->D:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apkUrl"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->F:Ljava/lang/String;

    :cond_0
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->setContentView(I)V

    const v0, 0x7f0b00df

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->c:Landroid/widget/TextView;

    const v0, 0x7f0b00e5

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->d:Landroid/widget/TextView;

    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0b00e8

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->f:Landroid/widget/TextView;

    const v0, 0x7f0b00e4

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->g:Landroid/widget/ListView;

    const v0, 0x7f0b00ea

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->h:Landroid/widget/Button;

    const v0, 0x7f0b00eb

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    const v0, 0x7f0b00e7

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->j:Landroid/widget/ProgressBar;

    const v0, 0x7f0b00ec

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->k:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->j:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->E:I

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->h:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->S:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    const v0, 0x7f0b00e1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->l:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->l:Landroid/widget/Button;

    new-instance v1, Lcom/clov4r/android/nil/entrance/w;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/w;-><init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const v0, 0x7f0b00e2

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->m:Landroid/widget/Button;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->m:Landroid/widget/Button;

    new-instance v1, Lcom/clov4r/android/nil/entrance/z;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/z;-><init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->T:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    new-instance v0, Lcom/clov4r/android/nil/entrance/b;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/entrance/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->g:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->y:Lcom/clov4r/android/nil/entrance/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->g:Landroid/widget/ListView;

    new-instance v1, Lcom/clov4r/android/nil/entrance/y;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/y;-><init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ed

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<br>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<br>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900ef

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "<br>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900f0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->J:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->J:Ljava/lang/String;

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, ".so"

    const-string v5, ".zip"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    aput-object v0, v3, v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->L:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->N:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v8

    const/4 v0, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->O:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->M:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->J:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " &nbsp;&nbsp;&nbsp;&nbsp; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900e8

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->G:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&nbsp;&nbsp;&nbsp;&nbsp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900e9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->H:Ljava/lang/String;

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&nbsp;&nbsp;&nbsp;&nbsp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->I:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->I:Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v3, v1, v6

    sget-object v3, Lcom/clov4r/android/nil/MainActivity;->ag:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->I:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->K:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->K:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->I:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0b00e3

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->n:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/clov4r/android/nil/entrance/u;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/u;-><init>(Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/clov4r/android/nil/entrance/g;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    const v0, 0x7f0900e0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->m:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->l:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->i:Landroid/widget/Button;

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&nbsp;&nbsp;&nbsp;&nbsp;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0900ea

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->H:Ljava/lang/String;

    goto/16 :goto_2

    :cond_5
    iget v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->T:I

    if-eqz v0, :cond_1

    sput-boolean v2, Lcom/clov4r/android/nil/entrance/g;->a:Z

    new-instance v0, Lcom/clov4r/android/nil/entrance/h;

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->F:Ljava/lang/String;

    iget-object v5, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->A:Landroid/os/Handler;

    move-object v1, p0

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/clov4r/android/nil/entrance/h;-><init>(Landroid/content/Context;ZLjava/lang/String;ILandroid/os/Handler;)V

    goto :goto_3
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    move-object v0, v2

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900df

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    :sswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->b()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onStop()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/clov4r/android/nil/entrance/g;->a:Z

    iget-wide v0, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->B:J

    iget-wide v2, p0, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->C:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/clov4r/android/nil/entrance/PluginNotifyActivity;->a(JJ)V

    :cond_0
    return-void
.end method
