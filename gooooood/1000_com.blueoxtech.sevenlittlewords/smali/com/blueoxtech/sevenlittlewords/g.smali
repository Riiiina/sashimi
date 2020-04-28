.class final Lcom/blueoxtech/sevenlittlewords/g;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/g;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/g;->b:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/g;->c:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->j:[Landroid/widget/Button;

    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/g;->c:Landroid/view/LayoutInflater;

    const v1, 0x7f030004

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->j:[Landroid/widget/Button;

    const v2, 0x7f0a000d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, p1

    new-instance v1, Lcom/blueoxtech/sevenlittlewords/q;

    invoke-direct {v1, p0, p1}, Lcom/blueoxtech/sevenlittlewords/q;-><init>(Lcom/blueoxtech/sevenlittlewords/g;I)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->i:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :try_start_0
    iget-object v1, p0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v1, v1, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->c:Lorg/json/JSONArray;

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/g;->a:Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/GameBoardActivity;->j:[Landroid/widget/Button;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_2
    check-cast p2, Landroid/widget/Button;

    move-object v0, p2

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
