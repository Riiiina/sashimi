.class public Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;
.super Landroid/app/Activity;


# instance fields
.field a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

.field b:Lorg/json/JSONArray;

.field c:Lorg/json/JSONArray;

.field d:Ljava/io/File;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/FrameLayout;

.field g:Landroid/widget/GridView;

.field h:[Ljava/lang/String;

.field i:[Ljava/lang/String;

.field j:[Landroid/widget/Button;

.field k:Ljava/util/ArrayList;

.field private l:Landroid/view/LayoutInflater;

.field private m:Lorg/json/JSONObject;

.field private n:Lorg/json/JSONArray;

.field private o:Landroid/widget/TableLayout;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:[Ljava/lang/String;

.field private v:[Landroid/widget/TableRow;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x14

    const/4 v1, 0x7

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->u:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->h:[Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    new-array v0, v2, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->j:[Landroid/widget/Button;

    new-array v0, v1, [Landroid/widget/TableRow;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->v:[Landroid/widget/TableRow;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->k:Ljava/util/ArrayList;

    return-void
.end method

.method private a()Landroid/widget/TextView;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x40

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V
    .locals 2

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->d:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->h:[Ljava/lang/String;

    aget-object v1, v0, p1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->v:[Landroid/widget/TableRow;

    aget-object v0, v0, p1

    const v2, 0x7f0a000e

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->v:[Landroid/widget/TableRow;

    aget-object v0, v0, p1

    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->v:[Landroid/widget/TableRow;

    aget-object v0, v0, p1

    const v2, 0x7f0a0010

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    invoke-virtual {p0, v0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/16 v3, 0x14

    const/4 v11, 0x1

    const/4 v10, 0x7

    const/4 v9, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->setVolumeControlStream(I)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "zone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->s:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "puzzle"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->t:Ljava/lang/String;

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->o:Landroid/widget/TableLayout;

    const v0, 0x7f0a0007

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->p:Landroid/widget/Button;

    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->q:Landroid/widget/Button;

    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->f:Landroid/widget/FrameLayout;

    const v0, 0x7f0a000c

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->g:Landroid/widget/GridView;

    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->r:Landroid/widget/Button;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->d:Ljava/io/File;

    :try_start_0
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->d:Ljava/io/File;

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    const-string v1, "cluesProgress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->b:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    const-string v1, "cardsProgress"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->c:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    const-string v1, "cardsPos"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->n:Lorg/json/JSONArray;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->f:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->g:Landroid/widget/GridView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    :cond_0
    move v0, v9

    :goto_0
    if-eqz v0, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->b:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->c:Lorg/json/JSONArray;

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->n:Lorg/json/JSONArray;

    move v0, v9

    :goto_1
    if-ge v0, v10, :cond_1

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->b:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v9

    :goto_2
    if-ge v0, v3, :cond_2

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->c:Lorg/json/JSONArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    const-string v1, "cluesProgress"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    const-string v1, "cardsProgress"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->c:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->m:Lorg/json/JSONObject;

    const-string v1, "cardsPos"

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->n:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_3
    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/w;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/w;-><init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->p:Landroid/widget/Button;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/ac;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/ac;-><init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->q:Landroid/widget/Button;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/ab;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/ab;-><init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0003

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/ae;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/ae;-><init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0005

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/ad;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/ad;-><init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->r:Landroid/widget/Button;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/ah;

    invoke-direct {v1, p0}, Lcom/blueoxtech/sevenlittlewords/ah;-><init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const-string v1, "ratedApp"

    invoke-interface {v0, v1, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->r:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->l:Landroid/view/LayoutInflater;

    :try_start_1
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->d:Landroid/content/res/AssetManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Puzzles/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->u:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->h:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x7

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x14

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_4
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->n:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    move v0, v9

    :goto_5
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->n:Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_5
    move v1, v9

    :goto_6
    :try_start_2
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->n:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->n:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->g:Landroid/widget/GridView;

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/g;

    invoke-direct {v1, p0, p0}, Lcom/blueoxtech/sevenlittlewords/g;-><init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->o:Landroid/widget/TableLayout;

    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    move v4, v9

    :goto_7
    if-ge v4, v10, :cond_8

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->u:[Ljava/lang/String;

    aget-object v5, v0, v4

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->h:[Ljava/lang/String;

    aget-object v6, v0, v4

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->v:[Landroid/widget/TableRow;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->l:Landroid/view/LayoutInflater;

    const v2, 0x7f030005

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    aput-object v0, v1, v4

    const v1, 0x7f0a000e

    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a000f

    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a0010

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " letters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->o:Landroid/widget/TableLayout;

    invoke-virtual {v1, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->o:Landroid/widget/TableLayout;

    invoke-direct {p0}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    :try_start_3
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v0

    if-ne v0, v11, :cond_7

    invoke-virtual {p0, v4}, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_7
    :goto_8
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_8

    :cond_8
    return-void

    :cond_9
    move v0, v11

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->a:Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->e:Landroid/content/SharedPreferences;

    const-string v1, "ratedApp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->r:Landroid/widget/Button;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_0
    return-void
.end method
