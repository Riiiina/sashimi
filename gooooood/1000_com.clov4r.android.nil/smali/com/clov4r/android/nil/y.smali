.class Lcom/clov4r/android/nil/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/ScanFileActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/ScanFileActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/y;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/clov4r/android/nil/y;->a:Lcom/clov4r/android/nil/ScanFileActivity;

    invoke-static {v1, v0}, Lcom/clov4r/android/nil/ScanFileActivity;->a(Lcom/clov4r/android/nil/ScanFileActivity;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f0b0004
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
