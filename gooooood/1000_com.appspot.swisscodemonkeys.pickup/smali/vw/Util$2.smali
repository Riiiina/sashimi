.class Lvw/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/Util;->createViewResultFromHTML(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;II)Lvw/SCMView$ViewResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$modified:Lvw/Util$HTMLAndURL;


# direct methods
.method constructor <init>(Lvw/Util$HTMLAndURL;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/Util$2;->val$modified:Lvw/Util$HTMLAndURL;

    iput-object p2, p0, Lvw/Util$2;->val$context:Landroid/content/Context;

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 176
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lvw/Util$2;->val$modified:Lvw/Util$HTMLAndURL;

    iget-object v1, v1, Lvw/Util$HTMLAndURL;->URL:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 178
    iget-object v1, p0, Lvw/Util$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 179
    return-void
.end method
