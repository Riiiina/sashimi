.class Lcom/appspot/swisscodemonkeys/pickup/EditProfile$4;
.super Ljava/lang/Object;
.source "EditProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/EditProfile;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->setResult(I)V

    .line 177
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->finish()V

    .line 178
    return-void
.end method
