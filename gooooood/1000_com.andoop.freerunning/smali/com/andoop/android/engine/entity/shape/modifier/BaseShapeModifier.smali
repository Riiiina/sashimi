.class public abstract Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;
.super Ljava/lang/Object;
.source "BaseShapeModifier.java"

# interfaces
.implements Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;


# instance fields
.field protected mFinished:Z

.field private mRemoveWhenFinished:Z

.field protected mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 27
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;)V
    .locals 1
    .param p1, "pBaseModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;

    .prologue
    .line 34
    iget-object v0, p1, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    invoke-direct {p0, v0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 1
    .param p1, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->mRemoveWhenFinished:Z

    .line 30
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;

    move-result-object v0

    return-object v0
.end method

.method public getShapeModifierListener()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    return-object v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->mFinished:Z

    return v0
.end method

.method public final isRemoveWhenFinished()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->mRemoveWhenFinished:Z

    return v0
.end method

.method public final setRemoveWhenFinished(Z)V
    .locals 0
    .param p1, "pRemoveWhenFinished"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->mRemoveWhenFinished:Z

    .line 57
    return-void
.end method

.method public setShapeModifierListener(Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 0
    .param p1, "pShapeModifierListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/andoop/android/engine/entity/shape/modifier/BaseShapeModifier;->mShapeModifierListener:Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .line 65
    return-void
.end method
