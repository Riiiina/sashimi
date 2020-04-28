.class Lcom/chartcross/gpstest/AppSettings$1;
.super Ljava/lang/Object;
.source "AppSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartcross/gpstest/AppSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chartcross/gpstest/AppSettings;


# direct methods
.method constructor <init>(Lcom/chartcross/gpstest/AppSettings;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartcross/gpstest/AppSettings$1;->this$0:Lcom/chartcross/gpstest/AppSettings;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings$1;->this$0:Lcom/chartcross/gpstest/AppSettings;

    invoke-static {v1}, Lcom/chartcross/gpstest/AppSettings;->access$0(Lcom/chartcross/gpstest/AppSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 40
    .local v0, "locationmanager":Landroid/location/LocationManager;
    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 41
    iget-object v1, p0, Lcom/chartcross/gpstest/AppSettings$1;->this$0:Lcom/chartcross/gpstest/AppSettings;

    invoke-static {v1}, Lcom/chartcross/gpstest/AppSettings;->access$0(Lcom/chartcross/gpstest/AppSettings;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Clear AGPS request made"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "locationmanager":Landroid/location/LocationManager;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    goto :goto_0
.end method
