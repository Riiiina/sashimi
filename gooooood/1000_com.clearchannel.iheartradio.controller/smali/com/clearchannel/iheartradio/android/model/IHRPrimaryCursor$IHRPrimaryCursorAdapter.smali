.class public Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor$IHRPrimaryCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "IHRPrimaryCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRPrimaryCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 77
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor$IHRPrimaryCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 76
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v11, 0x9

    const/4 v10, 0x5

    .line 92
    if-ge p1, v10, :cond_0

    .line 93
    new-instance v6, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;-><init>(Landroid/content/Context;)V

    .line 94
    .local v6, "view":Landroid/view/View;
    move-object v0, v6

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;

    move-object v8, v0

    iget-object v8, v8, Lcom/clearchannel/iheartradio/android/model/SingleLineRow;->mText:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor$IHRPrimaryCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;

    iget-object v9, v9, Lcom/clearchannel/iheartradio/android/model/IHRPrimaryCursor;->mFixed:[Ljava/lang/String;

    aget-object v9, v9, p1

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    :goto_0
    return-object v6

    .line 95
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    if-ne p1, v10, :cond_4

    .line 96
    new-instance v5, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v5, v8}, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;-><init>(Landroid/content/Context;)V

    .local v5, "separator":Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;
    move-object v6, v5

    .line 98
    .restart local v6    # "view":Landroid/view/View;
    iget-object v8, v5, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mLeft:Landroid/widget/TextView;

    const-string v9, "Featured"

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    new-instance v4, Ljava/util/GregorianCalendar;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 102
    .local v4, "now":Ljava/util/Calendar;
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 103
    .local v1, "d":I
    const/4 v8, 0x2

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/lit8 v3, v8, 0x1

    .line 104
    .local v3, "m":I
    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    rem-int/lit8 v7, v8, 0x64

    .line 106
    .local v7, "y":I
    const-string v2, ""

    .line 107
    .local v2, "format":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-le v3, v11, :cond_1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_1
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 108
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-le v1, v11, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_2
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-le v7, v11, :cond_3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    :goto_3
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 111
    iget-object v8, v5, Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;->mRight:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 107
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 108
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 109
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "0"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    .line 113
    .end local v1    # "d":I
    .end local v2    # "format":Ljava/lang/String;
    .end local v3    # "m":I
    .end local v4    # "now":Ljava/util/Calendar;
    .end local v5    # "separator":Lcom/clearchannel/iheartradio/android/view/IHRViewInfoSeparator;
    .end local v6    # "view":Landroid/view/View;
    .end local v7    # "y":I
    :cond_4
    const/4 v8, 0x0

    invoke-super {p0, p1, v8, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto/16 :goto_0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 82
    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
