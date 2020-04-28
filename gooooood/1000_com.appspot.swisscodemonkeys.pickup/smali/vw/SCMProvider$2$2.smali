.class Lvw/SCMProvider$2$2;
.super Ljava/lang/Object;
.source "SCMProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/SCMProvider$2;->createView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lvw/SCMProvider$2;

.field private final synthetic val$email:Ljava/lang/String;

.field private final synthetic val$emailContents:Ljava/lang/String;

.field private final synthetic val$pingUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvw/SCMProvider$2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMProvider$2$2;->this$1:Lvw/SCMProvider$2;

    iput-object p2, p0, Lvw/SCMProvider$2$2;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lvw/SCMProvider$2$2;->val$emailContents:Ljava/lang/String;

    iput-object p4, p0, Lvw/SCMProvider$2$2;->val$pingUrl:Ljava/lang/String;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, "in":Landroid/content/Intent;
    const-string v1, "android.intent.extra.EMAIL"

    iget-object v2, p0, Lvw/SCMProvider$2$2;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    iget-object v1, p0, Lvw/SCMProvider$2$2;->val$emailContents:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 235
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lvw/SCMProvider$2$2;->val$emailContents:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :cond_0
    const-string v1, "message/rfc822"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v1, p0, Lvw/SCMProvider$2$2;->this$1:Lvw/SCMProvider$2;

    invoke-static {v1}, Lvw/SCMProvider$2;->access$0(Lvw/SCMProvider$2;)Lvw/SCMProvider;

    move-result-object v1

    iget-object v1, v1, Lvw/SCMProvider;->context:Landroid/content/Context;

    const-string v2, "Send email."

    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 239
    iget-object v1, p0, Lvw/SCMProvider$2$2;->this$1:Lvw/SCMProvider$2;

    invoke-static {v1}, Lvw/SCMProvider$2;->access$0(Lvw/SCMProvider$2;)Lvw/SCMProvider;

    move-result-object v1

    iget-object v2, p0, Lvw/SCMProvider$2$2;->val$pingUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lvw/SCMProvider;->access$0(Lvw/SCMProvider;Ljava/lang/String;)V

    .line 240
    return-void
.end method
