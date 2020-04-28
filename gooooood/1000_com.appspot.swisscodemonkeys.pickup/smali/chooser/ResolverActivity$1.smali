.class Lchooser/ResolverActivity$1;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lchooser/ResolverActivity;->create(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lchooser/ResolverActivity;


# direct methods
.method constructor <init>(Lchooser/ResolverActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lchooser/ResolverActivity$1;->this$0:Lchooser/ResolverActivity;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lchooser/ResolverActivity$1;->this$0:Lchooser/ResolverActivity;

    iget-object v1, p0, Lchooser/ResolverActivity$1;->this$0:Lchooser/ResolverActivity;

    invoke-virtual {v0, v1, p3}, Lchooser/ResolverActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 137
    iget-object v0, p0, Lchooser/ResolverActivity$1;->this$0:Lchooser/ResolverActivity;

    invoke-virtual {v0}, Lchooser/ResolverActivity;->dismiss()V

    .line 138
    return-void
.end method
