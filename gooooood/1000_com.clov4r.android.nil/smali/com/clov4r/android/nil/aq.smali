.class Lcom/clov4r/android/nil/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/MainActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/aq;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    const-string v0, "ContextMenu"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const/4 v0, 0x0

    const/16 v1, 0xd

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/clov4r/android/nil/aq;->a:Lcom/clov4r/android/nil/MainActivity;

    invoke-virtual {v3}, Lcom/clov4r/android/nil/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090102

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method
