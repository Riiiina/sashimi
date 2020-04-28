.class public Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "IHRCitiesCursor.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IHRCitiesAdapter"
.end annotation


# instance fields
.field mOffsets:[I

.field mSections:[Ljava/lang/String;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "c"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 37
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getPositionForLetter(C)I
    .locals 3
    .param p1, "inLetter"    # C

    .prologue
    .line 64
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mSections:[Ljava/lang/String;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->getSections()[Ljava/lang/Object;

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mSections:[Ljava/lang/String;

    array-length v0, v1

    .line 68
    .local v0, "section":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    .line 72
    :goto_0
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->getPositionForSection(I)I

    move-result v1

    return v1

    .line 69
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mSections:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-gt v1, p1, :cond_1

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 3
    .param p1, "inSection"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->getSections()[Ljava/lang/Object;

    .line 42
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    array-length v0, v0

    if-nez v0, :cond_2

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    return v0

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    array-length v0, v0

    if-ge p1, v0, :cond_3

    .line 45
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    aget v0, v0, p1

    goto :goto_0

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getSectionForPosition(I)I
    .locals 2
    .param p1, "inPosition"    # I

    .prologue
    .line 52
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->getSections()[Ljava/lang/Object;

    .line 54
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mSections:[Ljava/lang/String;

    array-length v0, v1

    .line 56
    .local v0, "result":I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_2

    .line 60
    :goto_0
    return v0

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    aget v1, v1, v0

    if-gt v1, p1, :cond_1

    goto :goto_0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 12

    .prologue
    .line 76
    iget-object v10, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mSections:[Ljava/lang/String;

    if-nez v10, :cond_0

    .line 77
    const/4 v8, 0x0

    .line 78
    .local v8, "total":I
    const/16 v10, 0x1b

    new-array v6, v10, [I

    .line 79
    .local v6, "tally":[I
    const/16 v10, 0x1b

    new-array v9, v10, [I

    .line 80
    .local v9, "where":[I
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;

    iget-object v5, v0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor;->mContents:Ljava/util/List;

    .line 81
    .local v5, "names":Ljava/util/List;
    if-nez v5, :cond_1

    const/4 v10, 0x0

    move v0, v10

    .line 83
    .local v0, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-lt v2, v0, :cond_2

    .line 97
    new-array v10, v8, [Ljava/lang/String;

    iput-object v10, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mSections:[Ljava/lang/String;

    .line 98
    new-array v10, v8, [I

    iput-object v10, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    .line 99
    const/4 v8, 0x0

    .line 101
    const/4 v2, 0x0

    :goto_2
    const/16 v10, 0x1b

    if-lt v2, v10, :cond_6

    .line 113
    .end local v0    # "count":I
    .end local v2    # "index":I
    .end local v5    # "names":Ljava/util/List;
    .end local v6    # "tally":[I
    .end local v8    # "total":I
    .end local v9    # "where":[I
    :cond_0
    iget-object v10, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mSections:[Ljava/lang/String;

    return-object v10

    .line 81
    .restart local v5    # "names":Ljava/util/List;
    .restart local v6    # "tally":[I
    .restart local v8    # "total":I
    .restart local v9    # "where":[I
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    move v0, v10

    goto :goto_0

    .line 84
    .restart local v0    # "count":I
    .restart local v2    # "index":I
    :cond_2
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 85
    .local v4, "name":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 86
    .local v3, "letter":C
    const/16 v1, 0x1a

    .line 88
    .local v1, "found":I
    const/16 v10, 0x41

    if-lt v3, v10, :cond_5

    const/16 v10, 0x5a

    if-gt v3, v10, :cond_5

    const/16 v10, 0x41

    sub-int v1, v3, v10

    .line 91
    :cond_3
    :goto_3
    aget v10, v6, v1

    add-int/lit8 v11, v10, 0x1

    aput v11, v6, v1

    if-nez v10, :cond_4

    .line 92
    add-int/lit8 v8, v8, 0x1

    .line 93
    aput v2, v9, v1

    .line 83
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_5
    const/16 v10, 0x61

    if-lt v3, v10, :cond_3

    const/16 v10, 0x7a

    if-gt v3, v10, :cond_3

    const/16 v10, 0x61

    sub-int v1, v3, v10

    goto :goto_3

    .line 102
    .end local v1    # "found":I
    .end local v3    # "letter":C
    .end local v4    # "name":Ljava/lang/String;
    :cond_6
    aget v10, v6, v2

    if-lez v10, :cond_7

    .line 103
    const/4 v10, 0x1

    new-array v7, v10, [C

    const/4 v10, 0x0

    add-int/lit8 v11, v2, 0x41

    int-to-char v11, v11

    aput-char v11, v7, v10

    .line 105
    .local v7, "text":[C
    iget-object v10, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mSections:[Ljava/lang/String;

    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v7}, Ljava/lang/String;-><init>([C)V

    aput-object v11, v10, v8

    .line 106
    iget-object v10, p0, Lcom/clearchannel/iheartradio/android/model/IHRCitiesCursor$IHRCitiesAdapter;->mOffsets:[I

    aget v11, v9, v2

    aput v11, v10, v8

    .line 108
    add-int/lit8 v8, v8, 0x1

    .line 101
    .end local v7    # "text":[C
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
