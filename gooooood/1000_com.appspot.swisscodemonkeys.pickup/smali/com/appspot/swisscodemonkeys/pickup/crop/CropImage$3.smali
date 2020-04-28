.class Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$3;
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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;->access$7(Lcom/appspot/swisscodemonkeys/pickup/crop/CropImage;)V

    .line 143
    return-void
.end method
