.class public Lcom/clearchannel/iheartradio/db/DBFavourite$Song;
.super Ljava/lang/Object;
.source "DBFavourite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/db/DBFavourite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Song"
.end annotation


# instance fields
.field public artist:Ljava/lang/String;

.field public dateadded:J

.field public displayorder:I

.field public id:I

.field public imageuri:Ljava/lang/String;

.field public isactive:Z

.field public itunesid:I

.field public mediaid:J

.field public song:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
