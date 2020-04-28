.class Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$1;
.super Ljava/lang/Object;
.source "PublishDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->setUpView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog$1;->this$0:Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;

    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/model/facebook/PublishDialog;->dismiss()V

    .line 119
    return-void
.end method
