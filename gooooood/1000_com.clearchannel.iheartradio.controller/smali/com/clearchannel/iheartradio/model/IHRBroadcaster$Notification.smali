.class public Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;
.super Ljava/lang/Object;
.source "IHRBroadcaster.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Notification"
.end annotation


# instance fields
.field public mDetails:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/model/IHRBroadcaster;Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V
    .locals 0
    .param p2, "inName"    # Ljava/lang/String;
    .param p3, "inDetails"    # Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;->this$0:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;->mDetails:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;->this$0:Lcom/clearchannel/iheartradio/model/IHRBroadcaster;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;->mName:Ljava/lang/String;

    iget-object v2, p0, Lcom/clearchannel/iheartradio/model/IHRBroadcaster$Notification;->mDetails:Lcom/clearchannel/iheartradio/android/model/IHRHashtable;

    invoke-virtual {v0, v1, v2}, Lcom/clearchannel/iheartradio/model/IHRBroadcaster;->notifyFor(Ljava/lang/String;Lcom/clearchannel/iheartradio/android/model/IHRHashtable;)V

    return-void
.end method
