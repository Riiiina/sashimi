.class Lcom/appspot/swisscodemonkeys/image/ImageUtil$2;
.super Ljava/lang/Object;
.source "ImageUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageUtil;->createTakePhotoClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageUtil;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$2;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageUtil$2;->this$0:Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->takePhotoActivity()V

    .line 112
    return-void
.end method
