.class public Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;
.super Ljava/lang/Object;
.source "IHRFavoriteMenuClickListener.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private artist:Landroid/text/Spanned;

.field private context:Landroid/content/Context;

.field private controller:Lcom/clearchannel/iheartradio/controller/IHRController;

.field private dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

.field private items:[Ljava/lang/CharSequence;

.field private mediaId:J

.field private stationId:J

.field private stationName:Landroid/text/Spanned;

.field private title:Landroid/text/Spanned;


# direct methods
.method public constructor <init>([Ljava/lang/CharSequence;JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/clearchannel/iheartradio/controller/IHRController;)V
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "mediaId"    # J
    .param p4, "artist"    # Ljava/lang/String;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "stationId"    # J
    .param p8, "station"    # Ljava/lang/String;
    .param p9, "controller"    # Lcom/clearchannel/iheartradio/controller/IHRController;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->items:[Ljava/lang/CharSequence;

    .line 37
    iput-wide p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->mediaId:J

    .line 38
    invoke-static {p4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->artist:Landroid/text/Spanned;

    .line 39
    invoke-static {p5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->title:Landroid/text/Spanned;

    .line 40
    iput-wide p6, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->stationId:J

    .line 41
    invoke-static {p8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->stationName:Landroid/text/Spanned;

    .line 42
    invoke-virtual {p9}, Lcom/clearchannel/iheartradio/controller/IHRController;->getContext()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->context:Landroid/content/Context;

    .line 43
    iput-object p9, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->controller:Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 44
    new-instance v0, Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/clearchannel/iheartradio/db/DataHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    .line 45
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->context:Landroid/content/Context;

    .line 159
    const/4 v1, 0x0

    .line 157
    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 160
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 48
    const/4 v9, 0x0

    .line 50
    .local v9, "showLoginDialog":Z
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 52
    .local v8, "inParameters":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 56
    .local v6, "cancelString":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->items:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    const-string v1, "Add Station"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-wide v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->stationId:J

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertFavouriteStation(J)V

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->stationName:Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is now a favorite."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->showToast(Ljava/lang/String;)V

    .line 142
    :cond_0
    :goto_0
    sget-object v0, Lcom/clearchannel/iheartradio/android/view/IHRListView;->lastDisplayedListView:Lcom/clearchannel/iheartradio/android/view/IHRListView;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRListView;->refresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 154
    return-void

    .line 74
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->items:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    const-string v1, "Remove Station"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-wide v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->stationId:J

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->flagFavouriteStationForRemoval(J)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->stationName:Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " has been removed from favorites."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 145
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 92
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->items:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    const-string v1, "Add Song"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    :try_start_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->artist:Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->title:Landroid/text/Spanned;

    invoke-interface {v2}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-wide v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->mediaId:J

    invoke-virtual/range {v0 .. v5}, Lcom/clearchannel/iheartradio/db/DataHelper;->insertFavouriteSong(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->artist:Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->title:Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is now a favorite."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->showToast(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 111
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 112
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->artist:Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->title:Landroid/text/Spanned;

    invoke-interface {v1}, Landroid/text/Spanned;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been added to favorite."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->showToast(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 117
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->items:[Ljava/lang/CharSequence;

    aget-object v0, v0, p2

    const-string v1, "Remove Song"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :try_start_5
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->dataHelper:Lcom/clearchannel/iheartradio/db/DataHelper;

    iget-wide v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->mediaId:J

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/db/DataHelper;->flagFavouriteSongForRemoval(J)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->artist:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->title:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been removed from favorites."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->showToast(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 136
    :catch_2
    move-exception v0

    move-object v7, v0

    .line 137
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error,"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->artist:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->title:Landroid/text/Spanned;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has been removed from favorite."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRFavoriteMenuClickListener;->showToast(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0
.end method
