.class public Lcom/clov4r/android/nil/cu;
.super Landroid/widget/BaseAdapter;


# static fields
.field static a:Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field b:Landroid/content/Context;

.field c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clov4r/android/nil/cu;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/clov4r/android/nil/cu;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    sput-object p1, Lcom/clov4r/android/nil/cu;->a:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/cu;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/clov4r/android/nil/cu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    iput-object p1, p0, Lcom/clov4r/android/nil/cu;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/clov4r/android/nil/cu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/clov4r/android/nil/cu;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/clov4r/android/nil/dg;

    iget-object v1, p0, Lcom/clov4r/android/nil/cu;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/clov4r/android/nil/dg;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
