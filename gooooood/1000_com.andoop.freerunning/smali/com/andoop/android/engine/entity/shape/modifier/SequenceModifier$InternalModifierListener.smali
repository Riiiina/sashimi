.class Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;
.super Ljava/lang/Object;
.source "SequenceModifier.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalModifierListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;


# direct methods
.method private constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;)V

    return-void
.end method


# virtual methods
.method public onModifierFinished(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V
    .locals 1
    .param p1, "pShapeModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .param p2, "pShape"    # Lcom/andoop/android/engine/entity/shape/IShape;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;->this$0:Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;

    invoke-static {v0, p0, p1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;->access$1(Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier;Lcom/andoop/android/engine/entity/shape/modifier/SequenceModifier$InternalModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;Lcom/andoop/android/engine/entity/shape/IShape;)V

    .line 148
    return-void
.end method
