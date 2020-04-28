.class Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$10;
.super Ljava/lang/Object;
.source "IHRControllerSSODemo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->prepareView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$10;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    :try_start_0
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$10;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->getContext()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/db/DataHelper;->selectAllFavouritesStations()Ljava/util/List;

    move-result-object v3

    .line 110
    .local v3, "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/db/DBFavourite$Station;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo$10;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;

    const-string v5, "Fav Stations"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Close"

    invoke-virtual {v4, v5, v6, v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerSSODemo;->buildAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 118
    .end local v0    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/db/DBFavourite$Station;>;"
    :goto_1
    return-void

    .line 111
    .restart local v0    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    .restart local v3    # "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/db/DBFavourite$Station;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;

    .line 112
    .local v1, "s":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->stationid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->callletters:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->station:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v1, Lcom/clearchannel/iheartradio/db/DBFavourite$Station;->isactive:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    .end local v0    # "dataHelper":Lcom/clearchannel/iheartradio/db/DataHelper;
    .end local v1    # "s":Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "stations":Ljava/util/List;, "Ljava/util/List<Lcom/clearchannel/iheartradio/db/DBFavourite$Station;>;"
    :catch_0
    move-exception v4

    goto :goto_1
.end method
