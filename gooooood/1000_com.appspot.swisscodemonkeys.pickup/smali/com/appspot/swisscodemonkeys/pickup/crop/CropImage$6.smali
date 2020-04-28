.class Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$6;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->onSaveClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

.field private final synthetic val$b:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$6;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$6;->val$b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$10(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;Landroid/graphics/Bitmap;)V

    .line 294
    return-void
.end method
