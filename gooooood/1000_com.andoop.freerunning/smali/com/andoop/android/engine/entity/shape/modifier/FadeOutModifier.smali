.class public Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;
.super Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;
.source "FadeOutModifier.java"


# direct methods
.method public constructor <init>(F)V
    .locals 3
    .param p1, "pDuration"    # F

    .prologue
    .line 23
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    sget-object v2, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 24
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;

    .prologue
    .line 31
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    sget-object v5, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 32
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 6
    .param p1, "pDuration"    # F
    .param p2, "pShapeModiferListener"    # Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;
    .param p3, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 35
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/IShapeModifier$IShapeModifierListener;Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 36
    return-void
.end method

.method public constructor <init>(FLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V
    .locals 2
    .param p1, "pDuration"    # F
    .param p2, "pEaseFunction"    # Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .prologue
    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(FFFLcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;)V

    .line 28
    return-void
.end method

.method protected constructor <init>(Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;)V
    .locals 0
    .param p1, "pFadeOutModifier"    # Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;)V

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/AlphaModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;

    invoke-direct {v0, p0}, Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;-><init>(Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/andoop/android/engine/entity/shape/modifier/IShapeModifier;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;->clone()Lcom/andoop/android/engine/entity/shape/modifier/FadeOutModifier;

    move-result-object v0

    return-object v0
.end method
