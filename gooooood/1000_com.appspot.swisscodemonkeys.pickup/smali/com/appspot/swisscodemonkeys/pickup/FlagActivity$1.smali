.class Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$1;
.super Ljava/lang/Object;
.source "FlagActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field private final synthetic val$radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;Landroid/widget/RadioGroup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$1;->val$radioGroup:Landroid/widget/RadioGroup;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$1;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$1;->val$radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->access$0(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;I)V

    .line 62
    return-void
.end method
