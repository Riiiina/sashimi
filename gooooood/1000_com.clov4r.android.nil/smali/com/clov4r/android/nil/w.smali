.class Lcom/clov4r/android/nil/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/ScanFileActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/ScanFileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/w;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/clov4r/android/nil/w;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-virtual {v0}, Lcom/clov4r/android/nil/ScanFileActivity;->openOptionsMenu()V

    if-eqz p2, :cond_3

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    :cond_1
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/clov4r/android/nil/w;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    iget-object v0, v0, Lcom/clov4r/android/nil/ScanFileActivity;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/clov4r/android/nil/w;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-virtual {v2}, Lcom/clov4r/android/nil/ScanFileActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

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

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/clov4r/android/nil/library/MediaLibrary;->b:Ljava/util/List;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method
