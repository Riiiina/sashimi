.class public Lcom/clov4r/android/nil/entrance/aa;
.super Landroid/app/AlertDialog;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/clov4r/android/nil/entrance/o;

.field private c:Lcom/clov4r/android/nil/entrance/s;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/clov4r/android/nil/entrance/s;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/aa;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/clov4r/android/nil/entrance/aa;->c:Lcom/clov4r/android/nil/entrance/s;

    iput p3, p0, Lcom/clov4r/android/nil/entrance/aa;->d:I

    return-void
.end method

.method public static a()I
    .locals 6

    const-wide/high16 v3, 0x4054000000000000L    # 80.0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    mul-double/2addr v0, v3

    double-to-int v0, v0

    int-to-byte v0, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    mul-double/2addr v1, v3

    double-to-int v1, v1

    int-to-byte v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x4051800000000000L    # 70.0

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0xff

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/clov4r/android/nil/entrance/aa;)Lcom/clov4r/android/nil/entrance/s;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/aa;->c:Lcom/clov4r/android/nil/entrance/s;

    return-object v0
.end method

.method static synthetic b(Lcom/clov4r/android/nil/entrance/aa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/aa;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v6, -0x2

    const/4 v5, 0x5

    new-instance v0, Lcom/clov4r/android/nil/entrance/e;

    invoke-direct {v0, p0}, Lcom/clov4r/android/nil/entrance/e;-><init>(Lcom/clov4r/android/nil/entrance/aa;)V

    new-instance v1, Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/clov4r/android/nil/entrance/aa;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/clov4r/android/nil/entrance/aa;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v3, "Random Change Color When Startup"

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    sget-boolean v3, Lcom/clov4r/android/nil/ec;->q:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v3, Lcom/clov4r/android/nil/entrance/d;

    invoke-direct {v3, p0}, Lcom/clov4r/android/nil/entrance/d;-><init>(Lcom/clov4r/android/nil/entrance/aa;)V

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/clov4r/android/nil/entrance/aa;->a:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x11

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance v5, Lcom/clov4r/android/nil/entrance/o;

    iget-object v6, p0, Lcom/clov4r/android/nil/entrance/aa;->a:Landroid/content/Context;

    iget v7, p0, Lcom/clov4r/android/nil/entrance/aa;->d:I

    invoke-direct {v5, v6, v0, v7}, Lcom/clov4r/android/nil/entrance/o;-><init>(Landroid/content/Context;Lcom/clov4r/android/nil/entrance/s;I)V

    iput-object v5, p0, Lcom/clov4r/android/nil/entrance/aa;->b:Lcom/clov4r/android/nil/entrance/o;

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/aa;->b:Lcom/clov4r/android/nil/entrance/o;

    invoke-virtual {v0, v4}, Lcom/clov4r/android/nil/entrance/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/aa;->b:Lcom/clov4r/android/nil/entrance/o;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/clov4r/android/nil/entrance/aa;->setView(Landroid/view/View;)V

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
