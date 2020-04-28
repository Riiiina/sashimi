.class Lcom/andoop/android/engine/EngineUncaughtExceptionHandler$1;
.super Ljava/lang/Thread;
.source "EngineUncaughtExceptionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;->register(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;


# direct methods
.method constructor <init>(Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/engine/EngineUncaughtExceptionHandler$1;->this$0:Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;

    .line 41
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/andoop/android/engine/EngineUncaughtExceptionHandler$1;->this$0:Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;->access$0(Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 45
    iget-object v0, p0, Lcom/andoop/android/engine/EngineUncaughtExceptionHandler$1;->this$0:Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;

    invoke-static {v0}, Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;->access$1(Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    instance-of v0, v0, Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/andoop/android/engine/EngineUncaughtExceptionHandler$1;->this$0:Lcom/andoop/android/engine/EngineUncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 48
    :cond_0
    return-void
.end method
