.class public Lcom/clov4r/android/nil/entrance/EntranceActivity;
.super Landroid/app/Activity;


# instance fields
.field A:Landroid/content/SharedPreferences$Editor;

.field final B:Ljava/lang/String;

.field final C:Ljava/lang/String;

.field D:Ljava/lang/String;

.field E:Ljava/lang/String;

.field F:Ljava/lang/String;

.field G:Ljava/lang/String;

.field H:Ljava/lang/String;

.field I:Landroid/view/View$OnClickListener;

.field J:Landroid/view/View$OnClickListener;

.field private K:La/a/a/f;

.field private L:Ljava/net/URI;

.field a:I

.field b:I

.field c:I

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:I

.field g:Landroid/widget/LinearLayout;

.field h:Landroid/widget/LinearLayout;

.field i:Landroid/widget/LinearLayout;

.field j:Landroid/widget/LinearLayout;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/widget/TextView;

.field m:Landroid/widget/TextView;

.field n:Landroid/widget/EditText;

.field o:Landroid/widget/EditText;

.field p:Landroid/widget/EditText;

.field q:Landroid/widget/Button;

.field r:Landroid/widget/Button;

.field s:Landroid/widget/Button;

.field t:Landroid/widget/Button;

.field u:Landroid/view/View;

.field v:Landroid/widget/ProgressBar;

.field w:Landroid/webkit/WebView;

.field x:Landroid/content/Intent;

.field y:Lcom/clov4r/android/nil/entrance/p;

.field z:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    iput v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->u:Landroid/view/View;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->v:Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->w:Landroid/webkit/WebView;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->y:Lcom/clov4r/android/nil/entrance/p;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->z:Landroid/content/SharedPreferences;

    iput-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->A:Landroid/content/SharedPreferences$Editor;

    const-string v0, "text/html"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->B:Ljava/lang/String;

    const-string v0, "utf-8"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->C:Ljava/lang/String;

    const-string v0, "<font color=\"#FFFFFF\">"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->D:Ljava/lang/String;

    const-string v0, "</font>"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->E:Ljava/lang/String;

    const-string v0, "<a href=\"http://emailToClov4r\">"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->F:Ljava/lang/String;

    const-string v0, "</a>"

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->G:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->H:Ljava/lang/String;

    new-instance v0, Lcom/clov4r/android/nil/entrance/l;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/entrance/l;-><init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->I:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/clov4r/android/nil/entrance/m;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/entrance/m;-><init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->J:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private a()V
    .locals 5

    const v4, 0x7f090087

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090086

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v2, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v3, "page_style"

    const/4 v4, 0x5

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v3, "last_id"

    iget v4, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v3, "userCode"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const-string v2, "userEmail"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_2
    return-void

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_3
    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a(Ljava/lang/String;)V

    move v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private a(I)V
    .locals 7

    const v6, 0x7f09008d

    const/4 v5, 0x1

    const v2, 0x7f090096

    const/4 v3, 0x4

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-ne p1, v5, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f09007b

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->D:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->E:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<br><br>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->u:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09009c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    new-instance v2, Lcom/clov4r/android/nil/entrance/j;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/entrance/j;-><init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x22b

    iget v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->f:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->f:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->f:I

    const/4 v1, -0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_5
    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090099

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->u:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->c:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09008c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_9
    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    if-ne v0, v3, :cond_a

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->k:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    const v1, 0x7f020064

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/entrance/EntranceActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic b(Lcom/clov4r/android/nil/entrance/EntranceActivity;)La/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->K:La/a/a/f;

    return-object v0
.end method

.method private b(I)V
    .locals 9

    const/4 v7, 0x0

    const-string v0, ""

    const-string v0, ""

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const-string v0, "registerUser"

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->e:Ljava/lang/String;

    move-object v2, v0

    move v0, v7

    :goto_0
    new-instance v3, Lcom/clov4r/android/nil/entrance/p;

    new-instance v4, Lcom/clov4r/android/nil/entrance/k;

    invoke-direct {v4, p0}, Lcom/clov4r/android/nil/entrance/k;-><init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V

    invoke-direct {v3, p0, v2, v4}, Lcom/clov4r/android/nil/entrance/p;-><init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;Ljava/lang/String;Lcom/clov4r/android/nil/entrance/af;)V

    iput-object v3, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->y:Lcom/clov4r/android/nil/entrance/p;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "emailAddr"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phoneModel"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "phoneVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "versionNumber"

    new-instance v3, Ljava/lang/Integer;

    const/16 v4, 0x57

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "lang"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceID"

    const-string v3, "12345"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v3, "universal"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "currentTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userNum"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v7

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->y:Lcom/clov4r/android/nil/entrance/p;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/entrance/p;->a([Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "checkUserState"

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->d:Ljava/lang/String;

    iget v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->c:I

    move v8, v2

    move-object v2, v0

    move v0, v8

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v4, 0x4

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03000c

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->setContentView(I)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->x:Landroid/content/Intent;

    sget-object v0, Lcom/clov4r/android/nil/ec;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->L:Ljava/net/URI;

    new-instance v0, La/a/a/f;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->L:Ljava/net/URI;

    invoke-direct {v0, v1}, La/a/a/f;-><init>(Ljava/net/URI;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->K:La/a/a/f;

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->z:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->z:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->A:Landroid/content/SharedPreferences$Editor;

    const v0, 0x7f0b007b

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0b007f

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0082

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->i:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0084

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0088

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->k:Landroid/widget/LinearLayout;

    const v0, 0x7f0b007c

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->l:Landroid/widget/TextView;

    const v0, 0x7f0b007e

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->m:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0b0083

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->n:Landroid/widget/EditText;

    const v0, 0x7f0b0085

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->o:Landroid/widget/EditText;

    const v0, 0x7f0b0086

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->p:Landroid/widget/EditText;

    const v0, 0x7f0b0081

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->q:Landroid/widget/Button;

    const v0, 0x7f0b0080

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->r:Landroid/widget/Button;

    const v0, 0x7f0b007d

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->u:Landroid/view/View;

    const v0, 0x7f0b008b

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    const v0, 0x7f0b008d

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    const v0, 0x7f0b0087

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->w:Landroid/webkit/WebView;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->w:Landroid/webkit/WebView;

    invoke-virtual {v0, v6}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->o:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->n:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->o:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->p:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->r:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->s:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->t:Landroid/widget/Button;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->J:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0089

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->v:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->v:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userCode"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->c:I

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "userEmail"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "result_code"

    const/16 v2, 0x1bc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->f:I

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "register_email"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "page_style"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "last_id"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    if-ne v0, v4, :cond_0

    const v0, 0x7f09009a

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->D:Ljava/lang/String;

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->F:Ljava/lang/String;

    aput-object v2, v1, v3

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->G:Ljava/lang/String;

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->E:Ljava/lang/String;

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->w:Landroid/webkit/WebView;

    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->w:Landroid/webkit/WebView;

    new-instance v1, Lcom/clov4r/android/nil/entrance/i;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/entrance/i;-><init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :cond_0
    invoke-static {}, Lcom/clov4r/android/nil/library/NativeLibrary;->a()I

    move-result v0

    if-lt v0, v8, :cond_1

    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init sdkversion = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/clov4r/android/nil/entrance/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->H:Ljava/lang/String;

    :cond_1
    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->n:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->z:Landroid/content/SharedPreferences;

    const-string v1, "userEmail"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->z:Landroid/content/SharedPreferences;

    const-string v2, "userCode"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->H:Ljava/lang/String;

    if-eqz v2, :cond_4

    const-string v2, ""

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->H:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->o:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->H:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->p:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a(I)V

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    if-ne v0, v8, :cond_3

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b:I

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->b(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->o:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget v0, p0, Lcom/clov4r/android/nil/entrance/EntranceActivity;->a:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/entrance/EntranceActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
