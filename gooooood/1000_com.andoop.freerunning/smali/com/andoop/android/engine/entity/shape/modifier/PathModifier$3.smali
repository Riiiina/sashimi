.class Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$3;
.super Ljava/lang/Object;
.source "PathModifier.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$ISubSequenceModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;-><init>(FLcom/andoop/android/engine/utils/Path;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;


# direct methods
.method constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$3;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubSequenceFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;I)V
    .locals 2
    .param p1, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;
    .param p3, "pIndex"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$3;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-static {v0}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->access$1(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$3;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-static {v0}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->access$1(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$3;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-interface {v0, v1, p2, p3}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;->onWaypointPassed(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;Lcom/andoop/android/engine/entity/shape/IShape;I)V

    .line 111
    :cond_0
    return-void
.end method
