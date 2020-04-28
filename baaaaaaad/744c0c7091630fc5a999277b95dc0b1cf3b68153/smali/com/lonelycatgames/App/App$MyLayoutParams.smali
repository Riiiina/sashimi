.class public Lcom/lonelycatgames/App/App$MyLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "App.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lonelycatgames/App/App;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MyLayoutParams"
.end annotation


# instance fields
.field x:I

.field y:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    iput p3, p0, Lcom/lonelycatgames/App/App$MyLayoutParams;->x:I

    .line 25
    iput p4, p0, Lcom/lonelycatgames/App/App$MyLayoutParams;->y:I

    .line 26
    return-void
.end method
