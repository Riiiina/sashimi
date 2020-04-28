.class Lcom/magicwach/rdefense/HudEntry$AdderEntry;
.super Ljava/lang/Object;
.source "GameHud.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magicwach/rdefense/HudEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdderEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magicwach/rdefense/HudEntry;

.field public value:I


# direct methods
.method private constructor <init>(Lcom/magicwach/rdefense/HudEntry;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/magicwach/rdefense/HudEntry$AdderEntry;->this$0:Lcom/magicwach/rdefense/HudEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/magicwach/rdefense/HudEntry;Lcom/magicwach/rdefense/HudEntry$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/magicwach/rdefense/HudEntry;
    .param p2, "x1"    # Lcom/magicwach/rdefense/HudEntry$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/magicwach/rdefense/HudEntry$AdderEntry;-><init>(Lcom/magicwach/rdefense/HudEntry;)V

    return-void
.end method
