.class Lcom/andoop/android/engine/Engine$1;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/engine/Engine;->setScene(Lcom/andoop/android/engine/Scene;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/Engine;

.field private final synthetic val$scene:Lcom/andoop/android/engine/Scene;


# direct methods
.method constructor <init>(Lcom/andoop/android/engine/Engine;Lcom/andoop/android/engine/Scene;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/engine/Engine$1;->this$0:Lcom/andoop/android/engine/Engine;

    iput-object p2, p0, Lcom/andoop/android/engine/Engine$1;->val$scene:Lcom/andoop/android/engine/Scene;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$1;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v0, v0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$1;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v0, v0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Scene;->onEnd()V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$1;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v1, p0, Lcom/andoop/android/engine/Engine$1;->val$scene:Lcom/andoop/android/engine/Scene;

    iput-object v1, v0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    .line 129
    iget-object v0, p0, Lcom/andoop/android/engine/Engine$1;->this$0:Lcom/andoop/android/engine/Engine;

    iget-object v0, v0, Lcom/andoop/android/engine/Engine;->mCurrentScene:Lcom/andoop/android/engine/Scene;

    invoke-virtual {v0}, Lcom/andoop/android/engine/Scene;->onReady()V

    .line 130
    return-void
.end method
