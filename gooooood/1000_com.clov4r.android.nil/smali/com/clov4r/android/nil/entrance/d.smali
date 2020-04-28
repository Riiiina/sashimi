.class Lcom/clov4r/android/nil/entrance/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/entrance/aa;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/entrance/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/entrance/d;->a:Lcom/clov4r/android/nil/entrance/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    sput-boolean p2, Lcom/clov4r/android/nil/ec;->q:Z

    iget-object v0, p0, Lcom/clov4r/android/nil/entrance/d;->a:Lcom/clov4r/android/nil/entrance/aa;

    invoke-static {v0}, Lcom/clov4r/android/nil/entrance/aa;->b(Lcom/clov4r/android/nil/entrance/aa;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "bg_color_random"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/clov4r/android/nil/Setting;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
