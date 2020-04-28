.class Lvw/SCMView$2$1$1;
.super Ljava/lang/Object;
.source "SCMView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvw/SCMView$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lvw/SCMView$2$1;


# direct methods
.method constructor <init>(Lvw/SCMView$2$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lvw/SCMView$2$1$1;->this$2:Lvw/SCMView$2$1;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lvw/SCMView$2$1$1;->this$2:Lvw/SCMView$2$1;

    invoke-static {v0}, Lvw/SCMView$2$1;->access$0(Lvw/SCMView$2$1;)Lvw/SCMView$2;

    move-result-object v0

    invoke-static {v0}, Lvw/SCMView$2;->access$0(Lvw/SCMView$2;)Lvw/SCMView;

    move-result-object v0

    invoke-static {v0}, Lvw/SCMView;->access$12(Lvw/SCMView;)V

    .line 376
    return-void
.end method
