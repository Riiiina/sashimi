.class Lcmn/UpdateChecker$3$1;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/UpdateChecker$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcmn/UpdateChecker$3;


# direct methods
.method constructor <init>(Lcmn/UpdateChecker$3;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/UpdateChecker$3$1;->this$1:Lcmn/UpdateChecker$3;

    .line 480
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcmn/UpdateChecker$3$1;->this$1:Lcmn/UpdateChecker$3;

    invoke-static {v0}, Lcmn/UpdateChecker$3;->access$0(Lcmn/UpdateChecker$3;)Lcmn/UpdateChecker;

    move-result-object v0

    invoke-static {v0}, Lcmn/UpdateChecker;->access$2(Lcmn/UpdateChecker;)V

    .line 484
    return-void
.end method
