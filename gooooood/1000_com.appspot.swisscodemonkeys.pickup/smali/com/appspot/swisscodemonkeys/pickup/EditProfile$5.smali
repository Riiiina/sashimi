.class Lcom/appspot/swisscodemonkeys/pickup/EditProfile$5;
.super Ljava/lang/Object;
.source "EditProfile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->showWarnDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

.field private final synthetic val$photo:Z


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    iput-boolean p2, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$5;->val$photo:Z

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$5;->val$photo:Z

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$7(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->takePhotoActivity()V

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$5;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->access$7(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)Lcom/appspot/swisscodemonkeys/image/ImageUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/image/ImageUtil;->loadImageActivity()V

    goto :goto_0
.end method
