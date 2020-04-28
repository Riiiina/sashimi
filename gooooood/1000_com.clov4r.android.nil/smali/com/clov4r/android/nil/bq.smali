.class Lcom/clov4r/android/nil/bq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/clov4r/android/nil/ThumbCreateActivity;


# direct methods
.method constructor <init>(Lcom/clov4r/android/nil/ThumbCreateActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/clov4r/android/nil/bq;->a:Lcom/clov4r/android/nil/ThumbCreateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/clov4r/android/nil/library/MediaLibrary;->e:Z

    return-void
.end method
