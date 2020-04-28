.class Lcom/andoop/freerunning/Game$3;
.super Ljava/lang/Object;
.source "Game.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/freerunning/Game;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/freerunning/Game;


# direct methods
.method constructor <init>(Lcom/andoop/freerunning/Game;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/freerunning/Game$3;->this$0:Lcom/andoop/freerunning/Game;

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/andoop/freerunning/Game$3;->this$0:Lcom/andoop/freerunning/Game;

    iget-object v0, v0, Lcom/andoop/freerunning/Game;->adview:Lcom/admob/android/ads/AdView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/andoop/freerunning/Game$3;->this$0:Lcom/andoop/freerunning/Game;

    iget-object v0, v0, Lcom/andoop/freerunning/Game;->adview:Lcom/admob/android/ads/AdView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/andoop/freerunning/Game$3;->this$0:Lcom/andoop/freerunning/Game;

    iget-object v0, v0, Lcom/andoop/freerunning/Game;->adview:Lcom/admob/android/ads/AdView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/admob/android/ads/AdView;->setClickable(Z)V

    .line 285
    :cond_0
    return-void
.end method
