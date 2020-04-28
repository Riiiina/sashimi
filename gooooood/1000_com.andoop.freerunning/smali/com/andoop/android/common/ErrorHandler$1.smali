.class Lcom/andoop/android/common/ErrorHandler$1;
.super Ljava/lang/Thread;
.source "ErrorHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/common/ErrorHandler;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/common/ErrorHandler;


# direct methods
.method constructor <init>(Lcom/andoop/android/common/ErrorHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/common/ErrorHandler$1;->this$0:Lcom/andoop/android/common/ErrorHandler;

    .line 25
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/andoop/android/common/ErrorHandler$1;->this$0:Lcom/andoop/android/common/ErrorHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/andoop/android/common/ErrorHandler;->access$0(Lcom/andoop/android/common/ErrorHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 29
    iget-object v0, p0, Lcom/andoop/android/common/ErrorHandler$1;->this$0:Lcom/andoop/android/common/ErrorHandler;

    invoke-static {v0}, Lcom/andoop/android/common/ErrorHandler;->access$1(Lcom/andoop/android/common/ErrorHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/andoop/android/common/ErrorHandler;

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/andoop/android/common/ErrorHandler$1;->this$0:Lcom/andoop/android/common/ErrorHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 32
    :cond_0
    return-void
.end method
