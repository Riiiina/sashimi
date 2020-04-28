.class public Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;
.super Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;
.source "IHRCursorFavorites.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites$IHRFavoritesCursorAdapter;
    }
.end annotation


# instance fields
.field final kResourceID:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/android/model/IHRStationsCursor;-><init>()V

    .line 12
    const v0, 0x7f03000c

    iput v0, p0, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;->kResourceID:I

    .line 11
    return-void
.end method


# virtual methods
.method public newAdapter(Landroid/content/Context;)Landroid/widget/SimpleCursorAdapter;
    .locals 7
    .param p1, "inContext"    # Landroid/content/Context;

    .prologue
    .line 14
    new-instance v0, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites$IHRFavoritesCursorAdapter;

    const v3, 0x7f03000c

    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;->kColumns:[Ljava/lang/String;

    iget-object v6, p0, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;->kColumnsID:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites$IHRFavoritesCursorAdapter;-><init>(Lcom/clearchannel/iheartradio/android/model/IHRCursorFavorites;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    return-object v0
.end method
