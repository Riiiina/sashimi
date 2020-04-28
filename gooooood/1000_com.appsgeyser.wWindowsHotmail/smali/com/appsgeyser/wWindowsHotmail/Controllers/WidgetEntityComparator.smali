.class Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetEntityComparator;
.super Ljava/lang/Object;
.source "WidgetsController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)I
    .locals 2
    .param p1, "o1"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;
    .param p2, "o2"    # Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 69
    check-cast p1, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/appsgeyser/wWindowsHotmail/Controllers/WidgetEntityComparator;->compare(Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;Lcom/appsgeyser/wWindowsHotmail/Model/WidgetEntity;)I

    move-result v0

    return v0
.end method
