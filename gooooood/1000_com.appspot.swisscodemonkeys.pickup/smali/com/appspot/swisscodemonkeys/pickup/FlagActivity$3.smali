.class Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$3;
.super Ljava/lang/Object;
.source "FlagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->setResult(ILandroid/content/Intent;)V

    .line 77
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$3;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->finish()V

    .line 78
    return-void
.end method
