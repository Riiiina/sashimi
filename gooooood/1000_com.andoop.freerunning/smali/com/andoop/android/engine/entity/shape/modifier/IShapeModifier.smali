.class public interface abstract Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
.super Ljava/lang/Object;
.source "IShapeModifier.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    }
.end annotation


# virtual methods
.method public abstract clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
.end method

.method public abstract getDuration()F
.end method

.method public abstract getShapeModifierListener()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
.end method

.method public abstract isFinished()Z
.end method

.method public abstract isRemoveWhenFinished()Z
.end method

.method public abstract onUpdateShape(FLcom/andoop/android/engine/entity/shape/IShape;)V
.end method

.method public abstract reset()V
.end method

.method public abstract setRemoveWhenFinished(Z)V
.end method

.method public abstract setShapeModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
.end method
