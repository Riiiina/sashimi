.class Lcmn/UpdateChecker$3;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/UpdateChecker;->checkForUpdate(Lcmn/UpdateChecker$CheckMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/UpdateChecker;


# direct methods
.method constructor <init>(Lcmn/UpdateChecker;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/UpdateChecker$3;->this$0:Lcmn/UpdateChecker;

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcmn/UpdateChecker$3;)Lcmn/UpdateChecker;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcmn/UpdateChecker$3;->this$0:Lcmn/UpdateChecker;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    iget-object v0, p0, Lcmn/UpdateChecker$3;->this$0:Lcmn/UpdateChecker;

    new-instance v1, Lcmn/UpdateChecker$3$1;

    invoke-direct {v1, p0}, Lcmn/UpdateChecker$3$1;-><init>(Lcmn/UpdateChecker$3;)V

    invoke-static {v0, v1}, Lcmn/UpdateChecker;->access$3(Lcmn/UpdateChecker;Ljava/lang/Runnable;)V

    .line 486
    return-void
.end method
