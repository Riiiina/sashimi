.class public Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites$IHRFavoritesCursorAdapter;
.super Landroid/widget/SimpleCursorAdapter;
.source "IHRCursorFavorites.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "IHRFavoritesCursorAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layout"    # I
    .param p4, "cursor"    # Landroid/database/Cursor;
    .param p5, "from"    # [Ljava/lang/String;
    .param p6, "to"    # [I

    .prologue
    .line 19
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites$IHRFavoritesCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 18
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 26
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleCursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 28
    .local v3, "result":Landroid/view/View;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites$IHRFavoritesCursorAdapter;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;

    iget-object v4, v4, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;->mContents:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 30
    .local v1, "callLetters":Ljava/lang/String;
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v4

    invoke-virtual {v4}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->getAutoplayStation()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "autoplay":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    move v2, v4

    .line 37
    .local v2, "isAutoplay":Z
    :goto_0
    return-object v3

    .line 31
    .end local v2    # "isAutoplay":Z
    :cond_1
    const/4 v4, 0x1

    move v2, v4

    goto :goto_0
.end method
