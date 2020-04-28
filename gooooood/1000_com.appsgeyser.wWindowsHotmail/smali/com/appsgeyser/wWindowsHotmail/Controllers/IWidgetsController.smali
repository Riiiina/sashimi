.class public interface abstract Lcom/appsgeyser/wWindowsHotmail/Controllers/IWidgetsController;
.super Ljava/lang/Object;
.source "IWidgetsController.java"


# virtual methods
.method public abstract addWidget(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)V
.end method

.method public abstract getEnumeration()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWidgetById(Ljava/lang/String;)Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
.end method

.method public abstract removeAll()V
.end method

.method public abstract removeWidgetById(Ljava/lang/String;)V
.end method

.method public abstract widgetsCount()I
.end method
