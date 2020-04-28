.class public interface abstract Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;
.super Ljava/lang/Object;
.source "IEaseFunction.java"


# static fields
.field public static final DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;->getInstance()Lcom/andoop/android/engine/entity/shape/modifier/ease/EaseLinear;

    move-result-object v0

    sput-object v0, Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;->DEFAULT:Lcom/andoop/android/engine/entity/shape/modifier/ease/IEaseFunction;

    .line 7
    return-void
.end method


# virtual methods
.method public abstract getPercentageDone(FFFF)F
.end method
