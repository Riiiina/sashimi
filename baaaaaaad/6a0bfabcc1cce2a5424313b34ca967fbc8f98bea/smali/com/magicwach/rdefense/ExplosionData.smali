.class public final Lcom/magicwach/rdefense/ExplosionData;
.super Ljava/lang/Object;
.source "ExplosionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/magicwach/rdefense/ExplosionData$1;,
        Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;
    }
.end annotation


# static fields
.field public static final EXPLOSION_TYPE_COUNT:I = 0x2

.field public static final ROCKET:I = 0x0

.field public static final TELEPORT:I = 0x1

.field private static explosion_props:[Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static frames(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 19
    sget-object v0, Lcom/magicwach/rdefense/ExplosionData;->explosion_props:[Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->frames:I

    return v0
.end method

.method public static image(II)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "type"    # I
    .param p1, "frame"    # I

    .prologue
    .line 22
    sget-object v0, Lcom/magicwach/rdefense/ExplosionData;->explosion_props:[Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    aget-object v0, v0, p0

    iget-object v0, v0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->images:[Landroid/graphics/Bitmap;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 10
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    sput-object v1, Lcom/magicwach/rdefense/ExplosionData;->explosion_props:[Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    .line 11
    new-instance v0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;-><init>(Lcom/magicwach/rdefense/ExplosionData$1;)V

    .line 12
    .local v0, "ep":Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;
    sget-object v1, Lcom/magicwach/rdefense/ExplosionData;->explosion_props:[Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 13
    const v1, 0x7f02000f

    invoke-virtual {v0, p0, v1}, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->setImage(Landroid/app/Activity;I)V

    .line 14
    new-instance v0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    .end local v0    # "ep":Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;
    invoke-direct {v0, v3}, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;-><init>(Lcom/magicwach/rdefense/ExplosionData$1;)V

    .line 15
    .restart local v0    # "ep":Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;
    sget-object v1, Lcom/magicwach/rdefense/ExplosionData;->explosion_props:[Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 16
    const v1, 0x7f020039

    invoke-virtual {v0, p0, v1}, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->setImage(Landroid/app/Activity;I)V

    .line 17
    return-void
.end method

.method public static size(I)I
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 25
    sget-object v0, Lcom/magicwach/rdefense/ExplosionData;->explosion_props:[Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;

    aget-object v0, v0, p0

    iget v0, v0, Lcom/magicwach/rdefense/ExplosionData$ExplosionProp;->width:I

    return v0
.end method
