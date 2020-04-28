.class public Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites$IHRFavorites;
.super Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;
.source "IHRControllerFavorites.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRFavorites"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites$IHRFavorites;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerFavorites;

    invoke-direct {p0, p1, p2}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;Landroid/content/Context;)V

    return-void
.end method
