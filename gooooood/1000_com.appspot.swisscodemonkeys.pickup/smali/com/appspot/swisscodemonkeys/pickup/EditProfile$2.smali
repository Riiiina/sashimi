.class Lcom/appspot/swisscodemonkeys/pickup/EditProfile$2;
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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/EditProfile$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/EditProfile;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/EditProfile;->showWarnDialog(Z)V

    .line 111
    return-void
.end method
