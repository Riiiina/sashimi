.class public Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;
.super Landroid/view/ViewGroup;
.source "IHRControllerHeaderList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRHeaderContainer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    invoke-direct {p0, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLayout(ZIIII)V
    .locals 3
    .param p1, "inChanged"    # Z
    .param p2, "inLeft"    # I
    .param p3, "inTop"    # I
    .param p4, "inRight"    # I
    .param p5, "inBottom"    # I

    .prologue
    .line 34
    sub-int/2addr p5, p3

    .line 35
    sub-int/2addr p4, p2

    .line 36
    const/4 p2, 0x0

    .line 37
    const/4 p3, 0x0

    .line 39
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    iget-object v2, v2, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v0, p3, v2

    .end local p3    # "inTop":I
    .local v0, "inTop":I
    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    move p3, v0

    .line 43
    .end local v0    # "inTop":I
    .restart local p3    # "inTop":I
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/widget/ListView;->layout(IIII)V

    .line 44
    return-void
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "inMeasureWidth"    # I
    .param p2, "inMeasureHeight"    # I

    .prologue
    .line 21
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->setMeasuredDimension(II)V

    .line 23
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    .line 26
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    iget-object v1, v1, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList$IHRHeaderContainer;->this$0:Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;

    iget-object v0, v0, Lcom/clearchannel/iheartradio/controller/IHRControllerHeaderList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->measure(II)V

    .line 30
    return-void
.end method
