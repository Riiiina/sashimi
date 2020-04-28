.class public Lcom/clov4r/android/nil/ScanFileActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static l:Ljava/lang/String;


# instance fields
.field a:Ljava/lang/String;

.field b:Lcom/clov4r/android/nil/ct;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/ListView;

.field h:Ljava/util/ArrayList;

.field i:Ljava/util/ArrayList;

.field j:Lcom/clov4r/android/nil/cu;

.field k:Landroid/widget/LinearLayout;

.field m:Ljava/lang/String;

.field n:Landroid/view/View$OnClickListener;

.field o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ".ppng"

    sput-object v0, Lcom/clov4r/android/nil/ScanFileActivity;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->b:Lcom/clov4r/android/nil/ct;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    const-string v0, "/"

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->e:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->f:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->g:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->h:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->i:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->j:Lcom/clov4r/android/nil/cu;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->k:Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    new-instance v0, Lcom/clov4r/android/nil/y;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/y;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/clov4r/android/nil/w;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/w;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    const-string v0, ""

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_1

    :cond_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, v8

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    sget-boolean v4, Lcom/clov4r/android/nil/Setting;->k:Z

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isHidden()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/clov4r/android/nil/ScanFileActivity;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v4, Lcom/clov4r/android/nil/Setting;->f:Z

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v3}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v10

    move v5, v9

    :goto_2
    new-instance v6, Lcom/clov4r/android/nil/dg;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v7, v3, v5, v4}, Lcom/clov4r/android/nil/dg;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v9

    move v5, v8

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {v3}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v10

    move v5, v9

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "m3u"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    move v5, v8

    goto :goto_2

    :cond_7
    const/4 v4, 0x3

    move v5, v8

    goto :goto_2

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v9

    move v5, v8

    goto :goto_2

    :cond_9
    move v4, v8

    move v5, v8

    goto :goto_2
.end method

.method private a()V
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/CharSequence;

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    aput-object v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method static synthetic a(Lcom/clov4r/android/nil/ScanFileActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->a()V

    return-void
.end method

.method static synthetic a(Lcom/clov4r/android/nil/ScanFileActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/clov4r/android/nil/ScanFileActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/clov4r/android/nil/ScanFileActivity;->a(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->j:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v1, v0}, Lcom/clov4r/android/nil/cu;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->g:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->j:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->e:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_2

    new-instance v1, Lcom/clov4r/android/nil/g;

    invoke-direct {v1}, Lcom/clov4r/android/nil/g;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->j:Lcom/clov4r/android/nil/cu;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/cu;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v1, Landroid/graphics/Rect;

    aget v2, v0, v4

    aget v3, v0, v6

    aget v4, v0, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v0, v0, v6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Lcom/clov4r/android/nil/ct;

    invoke-direct {v0, p0, p1, v1}, Lcom/clov4r/android/nil/ct;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->b:Lcom/clov4r/android/nil/ct;

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->b:Lcom/clov4r/android/nil/ct;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900cc

    new-instance v3, Lcom/clov4r/android/nil/z;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/z;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->b:Lcom/clov4r/android/nil/ct;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900cd

    new-instance v3, Lcom/clov4r/android/nil/aa;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/aa;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->b:Lcom/clov4r/android/nil/ct;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900ce

    new-instance v3, Lcom/clov4r/android/nil/u;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/u;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    const-string v0, ""

    sget-boolean v0, Lcom/clov4r/android/nil/Setting;->A:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020069

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_0
    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->b:Lcom/clov4r/android/nil/ct;

    new-instance v3, Lcom/clov4r/android/nil/v;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/v;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->b:Lcom/clov4r/android/nil/ct;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f0900d1

    new-instance v3, Lcom/clov4r/android/nil/s;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/s;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/clov4r/android/nil/ct;->a(Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->b:Lcom/clov4r/android/nil/ct;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ct;->a()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->finish()V

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->b(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v2, -0x1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "mytag"

    const-string v1, "ScanFileActivity OnResult"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/clov4r/android/nil/ScanFileActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/clov4r/android/nil/CMPlayer;->c:I

    if-eq p1, v0, :cond_2

    const/16 v0, 0x252b

    if-ne p1, v0, :cond_0

    :cond_2
    if-ne p2, v2, :cond_0

    new-instance v1, Lcom/clov4r/android/nil/library/c;

    invoke-direct {v1}, Lcom/clov4r/android/nil/library/c;-><init>()V

    if-eqz p3, :cond_0

    const-string v0, "next"

    const/4 v2, 0x0

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    sget v0, Lcom/clov4r/android/nil/ec;->t:I

    if-lez v0, :cond_3

    sget v0, Lcom/clov4r/android/nil/ec;->t:I

    sget-object v2, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/ec;->s:Ljava/util/ArrayList;

    sget v2, Lcom/clov4r/android/nil/ec;->t:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    sget-object v2, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    if-eqz v0, :cond_0

    invoke-static {v0, p0}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/library/g;Landroid/content/Context;)V

    :cond_3
    :goto_1
    const-string v0, "EXT_START_TIME"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/clov4r/android/nil/library/c;->a:J

    const-string v0, "EXT_TOTAL_TIME"

    invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/clov4r/android/nil/library/c;->b:J

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->c(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    :cond_4
    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->b(Landroid/content/Context;)Z

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, ""

    invoke-static {v0, p0, v2}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7

    const-wide/16 v5, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_1
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iput-wide v5, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, p0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090055

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const v1, 0x7f090056

    new-instance v2, Lcom/clov4r/android/nil/t;

    invoke-direct {v2, p0}, Lcom/clov4r/android/nil/t;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09004b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/DetailDialogActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pathKey"

    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    sput-object v0, Lcom/clov4r/android/nil/MainActivity;->aL:Ljava/lang/String;

    invoke-static {p0}, Lcom/clov4r/android/nil/PlayListActivity;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/util/ArrayList;Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    goto/16 :goto_1

    :cond_3
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v1, v0, Lcom/clov4r/android/nil/library/c;->b:J

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v3, v0, Lcom/clov4r/android/nil/library/c;->a:J

    sub-long v0, v1, v3

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->c:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/c;

    iget-wide v0, v0, Lcom/clov4r/android/nil/library/c;->a:J

    :goto_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/clov4r/android/nil/ScanFileActivity;->p:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/clov4r/android/nil/CMPlayer;->a(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->c:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/clov4r/android/nil/SystemPlayer;->a(Landroid/content/Context;JLjava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-wide v0, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const v4, 0x7f09005a

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->requestWindowFeature(I)Z

    const v0, 0x7f03000d

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->setContentView(I)V

    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0b008f

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/clov4r/android/nil/x;

    invoke-direct {v1, p0}, Lcom/clov4r/android/nil/x;-><init>(Lcom/clov4r/android/nil/ScanFileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b008e

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->k:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->k:Landroid/widget/LinearLayout;

    sget v1, Lcom/clov4r/android/nil/ec;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const v0, 0x7f0b0091

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->g:Landroid/widget/ListView;

    new-instance v0, Lcom/clov4r/android/nil/cu;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/cu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->j:Lcom/clov4r/android/nil/cu;

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->j:Lcom/clov4r/android/nil/cu;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->o:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/cu;->a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->aN:Ljava/lang/String;

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/clov4r/android/nil/MainActivity;->aN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->g:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    sget-object v0, Lcom/clov4r/android/nil/MainActivity;->aN:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->b(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->g(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    move v0, v3

    :goto_1
    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    const-string v0, "ContextMenu"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_3

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    if-ne v2, v4, :cond_2

    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    :cond_2
    if-ne v2, v5, :cond_0

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const v0, 0x7f09004c

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020033

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x2

    const v1, 0x7f09004b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x3

    const v1, 0x7f090044

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    return v3
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, -0x1

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f030004

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->p:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    const/4 v1, 0x1

    :try_start_0
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    if-eq v0, v2, :cond_0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_1

    :cond_2
    if-ne v0, v4, :cond_4

    sput v2, Lcom/clov4r/android/nil/ec;->t:I

    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/clov4r/android/nil/ec;->a(Ljava/lang/String;)Z

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->a:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/library/g;

    invoke-static {v0, p0}, Lcom/clov4r/android/nil/MainActivity;->a(Lcom/clov4r/android/nil/library/g;Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->p:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lcom/clov4r/android/nil/MainActivity;->a(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/PlayListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v1, Lcom/clov4r/android/nil/PlayListActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/clov4r/android/nil/PlayListActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/clov4r/android/nil/ScanFileActivity;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/ScanFileActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/clov4r/android/nil/ScanFileActivity;->finish()V

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Lcom/clov4r/android/nil/library/MediaLibrary;->a(Landroid/content/Context;)Z

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/clov4r/android/nil/ScanFileActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStop()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
