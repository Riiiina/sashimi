.class final Lcom/blueoxtech/sevenlittlewords/a;
.super Landroid/widget/BaseAdapter;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private synthetic c:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;


# direct methods
.method public constructor <init>(Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/blueoxtech/sevenlittlewords/a;->c:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p2, p0, Lcom/blueoxtech/sevenlittlewords/a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/a;->a:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/blueoxtech/sevenlittlewords/a;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/a;->c:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/a;->c:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const v4, 0x7f0a001a

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/a;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    move-object v1, v0

    :goto_0
    const v0, 0x7f0a0019

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/a;->c:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->d:[Lcom/blueoxtech/sevenlittlewords/e;

    aget-object v0, v0, p1

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/e;->b:Lcom/blueoxtech/sevenlittlewords/e;

    if-ne v0, v2, :cond_1

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/a;->c:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/blueoxtech/sevenlittlewords/a;->c:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v2, v2, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020009

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_2
    return-object v1

    :cond_0
    check-cast p2, Landroid/widget/FrameLayout;

    move-object v1, p2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/blueoxtech/sevenlittlewords/a;->c:Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;

    iget-object v0, v0, Lcom/blueoxtech/sevenlittlewords/PuzzleMenuActivity;->d:[Lcom/blueoxtech/sevenlittlewords/e;

    aget-object v0, v0, p1

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/e;->c:Lcom/blueoxtech/sevenlittlewords/e;

    if-ne v0, v2, :cond_2

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget-object v2, Lcom/blueoxtech/sevenlittlewords/SevenLittleWords;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    const v0, 0x7f020008

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_2
.end method
