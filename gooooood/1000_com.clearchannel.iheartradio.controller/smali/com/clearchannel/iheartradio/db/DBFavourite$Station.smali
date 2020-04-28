.class public Lcom/clearchannel/iheartradio/db/DBFavourite$Station;
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
    name = "Station"
.end annotation


# instance fields
.field public callletters:Ljava/lang/String;

.field public dateadded:J

.field public displayorder:I

.field public id:I

.field public isactive:Z

.field public station:Ljava/lang/String;

.field public stationid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 755
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
