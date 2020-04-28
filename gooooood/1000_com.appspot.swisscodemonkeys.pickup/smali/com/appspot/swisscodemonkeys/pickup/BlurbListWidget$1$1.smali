.class Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1$1;
.super Ljava/lang/Object;
.source "BlurbListWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1$1;->this$1:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;->access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget$1;)Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->loadMore()V

    .line 128
    return-void
.end method
