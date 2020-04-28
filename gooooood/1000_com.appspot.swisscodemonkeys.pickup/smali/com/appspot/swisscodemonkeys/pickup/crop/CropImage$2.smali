.class Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$2;
.super Ljava/lang/Object;
.source "CropImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->setResult(I)V

    .line 136
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->finish()V

    .line 137
    return-void
.end method
