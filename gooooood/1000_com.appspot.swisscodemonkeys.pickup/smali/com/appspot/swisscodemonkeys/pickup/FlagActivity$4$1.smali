.class Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;
.super Ljava/lang/Object;
.source "FlagActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->access$0(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;)Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->access$0(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;)Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    move-result-object v1

    const v2, 0x7f070039

    invoke-virtual {v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    const/4 v2, 0x0

    .line 90
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 92
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->access$0(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;)Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    move-result-object v0

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;

    invoke-static {v2}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->access$0(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;)Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->setResult(ILandroid/content/Intent;)V

    .line 93
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->access$0(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;)Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->finish()V

    .line 94
    return-void
.end method
