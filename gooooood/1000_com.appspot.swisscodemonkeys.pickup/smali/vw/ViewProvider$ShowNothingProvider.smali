.class public Lvw/ViewProvider$ShowNothingProvider;
.super Lvw/ViewProvider;
.source "ViewProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvw/ViewProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShowNothingProvider"
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lvw/ViewProvider;-><init>(Landroid/content/Context;)V

    .line 100
    return-void
.end method


# virtual methods
.method protected configure(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method public getNewView(Lcmn/AppProperties;)Lvw/SCMView$ViewResult;
    .locals 1
    .param p1, "props"    # Lcmn/AppProperties;

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public needsIP()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public setPreferredColors(II)V
    .locals 0
    .param p1, "foreground"    # I
    .param p2, "background"    # I

    .prologue
    .line 116
    return-void
.end method
