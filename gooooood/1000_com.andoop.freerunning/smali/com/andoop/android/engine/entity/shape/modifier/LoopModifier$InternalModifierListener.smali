.class Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;
.super Ljava/lang/Object;
.source "LoopModifier.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalModifierListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;


# direct methods
.method private constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;)V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;)V

    return-void
.end method


# virtual methods
.method public onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 1
    .param p1, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;

    invoke-virtual {v0, p2}, Lcom/andoop/android/engine/entity/shape/modifier/LoopModifier;->onHandleLoopFinished(Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 136
    return-void
.end method
