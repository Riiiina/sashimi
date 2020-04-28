.class Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;
.super Ljava/lang/Object;
.source "ParallelModifier.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalModifierListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;


# direct methods
.method private constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;)V

    return-void
.end method


# virtual methods
.method public onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 2
    .param p1, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    const/4 v1, 0x1

    .line 117
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    iput-boolean v1, v0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mFinished:Z

    .line 118
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    invoke-static {v0, v1}, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->access$1(Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;Z)V

    .line 119
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    iget-object v0, v0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    iget-object v0, v0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/ParallelModifier;

    invoke-interface {v0, v1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;->onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 122
    :cond_0
    return-void
.end method
