.class Lcom/clov4r/android/nil/entrance/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/EntranceActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/EntranceActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/l;->a:Lcom/clov4r/android/nil/entrance/EntranceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method
