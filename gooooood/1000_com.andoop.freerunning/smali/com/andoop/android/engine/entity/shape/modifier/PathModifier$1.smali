.class Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$1;
.super Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;
.source "PathModifier.java"


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
.method constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 8
    .param p2, "$anonymous0"    # F
    .param p3, "$anonymous1"    # F
    .param p4, "$anonymous2"    # F
    .param p5, "$anonymous3"    # F
    .param p6, "$anonymous4"    # F
    .param p7, "$anonymous5"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p8, "$anonymous6"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$1;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    .line 76
    invoke-direct/range {v0 .. v7}, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;-><init>(FFFFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    return-void
.end method


# virtual methods
.method protected onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 3
    .param p1, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/MoveModifier;->onManagedInitializeShape(Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 80
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$1;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-static {v0}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->access$1(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$1;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    invoke-static {v0}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;->access$1(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;)Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;

    move-result-object v0

    iget-object v1, p0, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$1;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/andoop/android/engine/entity/shape/modifier/PathModifier$IPathModifierListener;->onWaypointPassed(Lcom/andoop/android/engine/entity/shape/modifier/PathModifier;Lcom/andoop/android/engine/entity/shape/IShape;I)V

    .line 83
    :cond_0
    return-void
.end method
