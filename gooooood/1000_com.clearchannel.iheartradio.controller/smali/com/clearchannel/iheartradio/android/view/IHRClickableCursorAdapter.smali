.class public Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "IHRClickableCursorAdapter.java"


# instance fields
.field private clickHandlers:[Landroid/view/View$OnClickListener;

.field private itemsToHide:[I

.field private srcsClickId:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "itemsToHide"    # [I

    .prologue
    .line 71
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 72
    iput-object p6, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->itemsToHide:[I

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I[I[Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "srcsClickId"    # [I
    .param p7, "clickHandlers"    # [Landroid/view/View$OnClickListener;

    .prologue
    .line 35
    invoke-direct/range {p0 .. p5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 36
    iput-object p7, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->clickHandlers:[Landroid/view/View$OnClickListener;

    .line 37
    iput-object p6, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->srcsClickId:[I

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I[I[Landroid/view/View$OnClickListener;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I
    .param p3, "c"    # Landroid/database/Cursor;
    .param p4, "from"    # [Ljava/lang/String;
    .param p5, "to"    # [I
    .param p6, "srcsClickId"    # [I
    .param p7, "clickHandlers"    # [Landroid/view/View$OnClickListener;
    .param p8, "itemsToHide"    # [I

    .prologue
    .line 55
    invoke-direct/range {p0 .. p7}, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I[I[Landroid/view/View$OnClickListener;)V

    .line 56
    iput-object p8, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->itemsToHide:[I

    .line 57
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "i":I
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->srcsClickId:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->clickHandlers:[Landroid/view/View$OnClickListener;

    if-eqz v5, :cond_0

    .line 82
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->srcsClickId:[I

    array-length v6, v5

    move v7, v10

    :goto_0
    if-lt v7, v6, :cond_3

    .line 91
    :cond_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->itemsToHide:[I

    if-eqz v5, :cond_1

    .line 92
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->itemsToHide:[I

    array-length v6, v5

    move v7, v10

    :goto_1
    if-lt v7, v6, :cond_5

    .line 98
    :cond_1
    const v5, 0x7f090046

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 99
    .local v1, "item":Landroid/widget/ImageView;
    const v5, 0x7f020005

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 102
    const-string v5, "stationid"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-le v5, v9, :cond_2

    .line 103
    const-string v5, "autoplay"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 104
    const v5, 0x7f020006

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 109
    :cond_2
    return-void

    .line 82
    .end local v1    # "item":Landroid/widget/ImageView;
    :cond_3
    aget v4, v5, v7

    .line 83
    .local v4, "srcClickId":I
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 84
    .local v3, "srcClick":Landroid/view/View;
    iget-object v8, p0, Lcom/clearchannel/iheartradio/android/view/IHRClickableCursorAdapter;->clickHandlers:[Landroid/view/View$OnClickListener;

    aget-object v8, v8, v0

    invoke-virtual {v3, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const-string v8, "callletters"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v9, :cond_4

    .line 86
    const-string v8, "callletters"

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 87
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 82
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 92
    .end local v3    # "srcClick":Landroid/view/View;
    .end local v4    # "srcClickId":I
    :cond_5
    aget v2, v5, v7

    .line 93
    .local v2, "itemId":I
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "item":Landroid/view/View;
    const/16 v8, 0x8

    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 92
    add-int/lit8 v7, v7, 0x1

    goto :goto_1
.end method
