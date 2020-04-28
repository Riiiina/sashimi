.class public final Lcom/ophone/MiniPlayer/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ophone/MiniPlayer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MyView:[I

.field public static final MyView_imgBackground:I = 0x2

.field public static final MyView_textColor:I = 0x0

.field public static final MyView_textPaddingLeft:I = 0x3

.field public static final MyView_textPaddingTop:I = 0x4

.field public static final MyView_textSize:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/ophone/MiniPlayer/R$styleable;->MyView:[I

    .line 372
    return-void

    .line 391
    nop

    :array_0
    .array-data 4
        0x7f010000
        0x7f010001
        0x7f010002
        0x7f010003
        0x7f010004
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
