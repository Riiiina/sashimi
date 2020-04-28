.class public Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

.field b:Ljava/lang/String;

.field c:[Ljava/lang/String;

.field d:[Lcom/blueoxtech/sevenlittlewords/e;

.field e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/GridView;

.field private i:Lcom/blueoxtech/sevenlittlewords/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v3, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v1, v3

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    new-instance v2, Lorg/json/JSONObject;

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "cluesProgress"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->d:[Lcom/blueoxtech/sevenlittlewords/e;

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/e;->b:Lcom/blueoxtech/sevenlittlewords/e;

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->d:[Lcom/blueoxtech/sevenlittlewords/e;

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/e;->c:Lcom/blueoxtech/sevenlittlewords/e;

    aput-object v2, v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->d:[Lcom/blueoxtech/sevenlittlewords/e;

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/e;->a:Lcom/blueoxtech/sevenlittlewords/e;

    aput-object v2, v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0, v0, v0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->setVolumeControlStream(I)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "zone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "zoneName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->f:Ljava/lang/String;

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastPuzzlePlayed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->e:Ljava/lang/String;

    :try_start_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->d:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Puzzles/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/u;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/u;-><init>(Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/blueoxtech/sevenlittlewords/e;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->d:[Lcom/blueoxtech/sevenlittlewords/e;

    :try_start_1
    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->h:Landroid/widget/GridView;

    new-instance v0, Lcom/blueoxtech/sevenlittlewords/a;

    invoke-direct {v0, p0, p0}, Lcom/blueoxtech/sevenlittlewords/a;-><init>(Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->i:Lcom/blueoxtech/sevenlittlewords/a;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->h:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->i:Lcom/blueoxtech/sevenlittlewords/a;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v2, 0x43a00000    # 320.0f

    invoke-static {v4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    int-to-float v1, v1

    sub-float/2addr v1, v2

    const/high16 v2, 0x41700000    # 15.0f

    invoke-static {v4, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-static {v4, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :goto_2
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v1, v0, v5, v0, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/x;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/x;-><init>(Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    float-to-int v0, v2

    goto :goto_2
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->h:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f020008

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f020009

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->i:Landroid/os/Handler;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/y;

    invoke-direct {v1, p0, p3}, Lcom/blueoxtech/sevenlittlewords/y;-><init>(Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;I)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    :try_start_0
    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lastPuzzlePlayed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->i:Lcom/blueoxtech/sevenlittlewords/a;

    invoke-virtual {v0}, Lcom/blueoxtech/sevenlittlewords/a;->notifyDataSetChanged()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
