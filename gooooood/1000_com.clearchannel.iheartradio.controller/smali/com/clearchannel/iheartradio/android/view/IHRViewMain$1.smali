.class Lcom/clearchannel/iheartradio/android/view/IHRViewMain$1;
.super Ljava/lang/Object;
.source "IHRViewMain.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->nowplayingalert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;


# direct methods
.method constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewMain$1;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 203
    return-void
.end method
