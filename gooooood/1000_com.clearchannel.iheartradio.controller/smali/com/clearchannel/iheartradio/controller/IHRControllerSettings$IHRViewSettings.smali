.class public Lcom/clearchannel/iheartradio/controller/IHRControllerSettings$IHRViewSettings;
.super Landroid/widget/ListView;
.source "IHRControllerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRViewSettings"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSettings$IHRViewSettings;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSettings;

    invoke-direct {p0, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    return-void
.end method
