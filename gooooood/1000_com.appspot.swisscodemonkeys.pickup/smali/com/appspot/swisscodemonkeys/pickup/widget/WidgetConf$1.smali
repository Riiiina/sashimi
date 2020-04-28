.class Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$1;
.super Ljava/lang/Object;
.source "WidgetConf.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->access$0(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    sget-object v2, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->THEME:[I

    array-length v2, v2

    rem-int v0, v1, v2

    .line 72
    .local v0, "newTheme":I
    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;

    invoke-static {v1, v0}, Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;->access$1(Lcom/appspot/swisscodemonkeys/pickup/widget/WidgetConf;I)V

    .line 73
    return-void
.end method
