.class public interface abstract Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabsController;
.super Ljava/lang/Object;
.source "ITabsController.java"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract initWithTabs(Ljava/util/Enumeration;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onBackKeyDown()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onTabSelected(Ljava/lang/String;)V
.end method
