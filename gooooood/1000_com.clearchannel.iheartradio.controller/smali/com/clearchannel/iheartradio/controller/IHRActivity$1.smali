.class Lcom/clearchannel/iheartradio/controller/IHRActivity$1;
.super Ljava/lang/Object;
.source "IHRActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/controller/IHRActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/controller/IHRActivity;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRActivity$1;->this$0:Lcom/clearchannel/iheartradio/controller/IHRActivity;

    invoke-static {v0}, Lcom/clearchannel/iheartradio/controller/IHRApplication;->logout(Landroid/content/Context;)V

    .line 273
    return-void
.end method
