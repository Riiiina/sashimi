.class public interface abstract Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabContentController;
.super Ljava/lang/Object;
.source "ITabContentController.java"

# interfaces
.implements Lcom/appsgeyser/wWindowsHotmail/Controllers/ITabDelegate;


# virtual methods
.method public abstract createTabContent(Landroid/view/ViewGroup;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract getWidgetInfo()Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
.end method

.method public abstract onBackKeyDown()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method
