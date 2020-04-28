.class public Lcom/clearchannel/iheartradio/android/services/IHRService$MyBinder;
.super Landroid/os/Binder;
.source "IHRService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/services/IHRService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/services/IHRService;)V
    .locals 0

    .prologue
    .line 695
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$MyBinder;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/clearchannel/iheartradio/android/services/IHRService;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/services/IHRService$MyBinder;->this$0:Lcom/clearchannel/iheartradio/android/services/IHRService;

    return-object v0
.end method
