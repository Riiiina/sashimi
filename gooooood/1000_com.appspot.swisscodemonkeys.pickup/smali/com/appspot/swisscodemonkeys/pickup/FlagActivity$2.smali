.class Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$2;
.super Ljava/lang/Object;
.source "FlagActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

.field private final synthetic val$ok:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;Landroid/widget/Button;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$2;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$2;->val$ok:Landroid/widget/Button;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "checkedId"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$2;->val$ok:Landroid/widget/Button;

    if-ltz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
