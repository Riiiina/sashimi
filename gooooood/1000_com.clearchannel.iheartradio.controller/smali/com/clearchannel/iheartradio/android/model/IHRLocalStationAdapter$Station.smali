.class public Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;
.super Ljava/lang/Object;
.source "IHRLocalStationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Station"
.end annotation


# instance fields
.field public _id:J

.field public callletters:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter$Station;->this$0:Lcom/clearchannel/iheartradio/android/model/IHRLocalStationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
