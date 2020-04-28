.class Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;
.super Ljava/lang/Object;
.source "BlurbListWidget.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 171
    add-int v0, p2, p3

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE_LAST_TIME_ERROR:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    if-eq v0, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loadMore()V

    .line 175
    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 179
    return-void
.end method
