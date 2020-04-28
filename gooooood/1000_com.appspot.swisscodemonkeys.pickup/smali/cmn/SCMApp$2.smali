.class Lcmn/SCMApp$2;
.super Ljava/lang/Object;
.source "SCMApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/SCMApp;->showMarketDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/SCMApp;


# direct methods
.method constructor <init>(Lcmn/SCMApp;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/SCMApp$2;->this$0:Lcmn/SCMApp;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcmn/SCMApp$2;->this$0:Lcmn/SCMApp;

    invoke-virtual {v0}, Lcmn/SCMApp;->finish()V

    .line 103
    return-void
.end method
