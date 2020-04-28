.class Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;
.super Ljava/lang/Object;
.source "IHRGalleryAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;

.field private final synthetic val$content:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

.field private final synthetic val$icon:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;Landroid/widget/ImageView;Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;

    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;->val$icon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;->val$content:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;->val$icon:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;->val$content:Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;

    invoke-virtual {v3}, Lcom/clearchannel/iheartradio/model/IHRFeaturedContent;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;->access$0(Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRGalleryAdapter$1;->val$icon:Landroid/widget/ImageView;

    const v2, 0x7f02006a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
