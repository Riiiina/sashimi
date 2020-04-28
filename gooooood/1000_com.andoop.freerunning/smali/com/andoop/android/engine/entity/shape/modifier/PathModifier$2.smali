.class Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;
.super Ljava/lang/Object;
.source "PathModifier.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;


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

.field private final synthetic val$modifierCount:I


# direct methods
.method constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    iput p2, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->val$modifierCount:I

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 3
    .param p1, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-static {v0}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->access$1(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-static {v0}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->access$1(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    iget v2, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->val$modifierCount:I

    invoke-interface {v0, v1, p2, v2}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;->onWaypointPassed(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;Lcom/andoop/android/engine/entity/shape/IShape;I)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    iget-object v0, v0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    iget-object v0, v0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$2;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-interface {v0, v1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;->onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 103
    :cond_1
    return-void
.end method
