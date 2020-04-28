.class Lvw/SCMProvider$2$1;
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

.field private final synthetic val$pingUrl:Ljava/lang/String;

.field private final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lvw/SCMProvider$2;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMProvider$2$1;->this$1:Lvw/SCMProvider$2;

    iput-object p2, p0, Lvw/SCMProvider$2$1;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lvw/SCMProvider$2$1;->val$pingUrl:Ljava/lang/String;

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 222
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lvw/SCMProvider$2$1;->val$url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lvw/SCMProvider$2$1;->this$1:Lvw/SCMProvider$2;

    invoke-static {v1}, Lvw/SCMProvider$2;->access$0(Lvw/SCMProvider$2;)Lvw/SCMProvider;

    move-result-object v1

    iget-object v1, v1, Lvw/SCMProvider;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 225
    iget-object v1, p0, Lvw/SCMProvider$2$1;->this$1:Lvw/SCMProvider$2;

    invoke-static {v1}, Lvw/SCMProvider$2;->access$0(Lvw/SCMProvider$2;)Lvw/SCMProvider;

    move-result-object v1

    iget-object v2, p0, Lvw/SCMProvider$2$1;->val$pingUrl:Ljava/lang/String;

    invoke-static {v1, v2}, Lvw/SCMProvider;->access$0(Lvw/SCMProvider;Ljava/lang/String;)V

    .line 226
    return-void
.end method
