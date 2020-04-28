.class Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;
.super Landroid/widget/BaseAdapter;
.source "BlurbListWidget.java"


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
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 82
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    sget-object v2, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->NO_MORE:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    if-eq v1, v2, :cond_0

    move v1, v4

    :goto_0
    add-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v1, v1, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    if-eqz v1, :cond_1

    move v1, v4

    .line 86
    :goto_1
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    .line 87
    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 92
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 97
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x14

    const/4 v8, 0x0

    const/high16 v10, 0x41c80000    # 25.0f

    const/16 v9, 0xa

    .line 102
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v6, v6, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    if-eqz v6, :cond_1

    .line 103
    if-nez p1, :cond_0

    .line 104
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v6, v6, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->headerView:Landroid/view/View;

    .line 162
    :goto_0
    return-object v6

    .line 106
    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 109
    :cond_1
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v6, v6, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt p1, v6, :cond_3

    .line 111
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v6, v6, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->hasMoreLines:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    sget-object v7, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;->MORE_LAST_TIME_ERROR:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$MoreLines;

    if-ne v6, v7, :cond_2

    .line 112
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 113
    .local v3, "error_view":Landroid/widget/LinearLayout;
    new-instance v6, Landroid/widget/AbsListView$LayoutParams;

    const/4 v7, -0x1

    .line 114
    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 113
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v5, "text":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070052

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v5, v9, v9, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 118
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 119
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v2, Landroid/widget/Button;

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 122
    .local v2, "button":Landroid/widget/Button;
    const v6, 0x7f07003b

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 123
    new-instance v6, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1$1;

    invoke-direct {v6, p0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move-object v6, v3

    .line 132
    goto :goto_0

    .line 134
    .end local v2    # "button":Landroid/widget/Button;
    .end local v3    # "error_view":Landroid/widget/LinearLayout;
    .end local v5    # "text":Landroid/widget/TextView;
    :cond_2
    new-instance v5, Landroid/widget/TextView;

    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 135
    .restart local v5    # "text":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070026

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {v5, v9, v9, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 137
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setTextSize(F)V

    move-object v6, v5

    .line 138
    goto/16 :goto_0

    .line 142
    .end local v5    # "text":Landroid/widget/TextView;
    :cond_3
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v6, v6, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->blurbList:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 144
    .local v1, "blurb":Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 145
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$AdsView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$AdsView;-><init>(Landroid/content/Context;)V

    .line 146
    .local v0, "adsView":Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$AdsView;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 147
    .local v4, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    move-result-object v6

    invoke-interface {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;->getViewId()I

    move-result v6

    invoke-virtual {v4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$AdsView;->addView(Landroid/view/View;)V

    .line 148
    move-object p2, v0

    .line 157
    .end local v0    # "adsView":Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$AdsView;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->hasColor()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 158
    invoke-virtual {v1}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->getColor()I

    move-result v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 160
    :cond_5
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    move-result-object v6

    invoke-interface {v6, v1, p2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;->fillViewWithBlurb(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Landroid/view/View;)V

    move-object v6, p2

    .line 162
    goto/16 :goto_0

    .line 151
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {v7}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    move-result-object v7

    if-eq v6, v7, :cond_4

    .line 152
    :cond_7
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 153
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    move-result-object v6

    invoke-interface {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;->getViewId()I

    move-result v6

    invoke-virtual {v4, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 154
    iget-object v6, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-static {v6}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$IBlurbDrawer;

    move-result-object v6

    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method
