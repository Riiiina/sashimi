.class Lcom/olivephone/cu/SettingActivity$17;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity;->initSetChannel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SettingActivity;

.field private final synthetic val$tvImage:Landroid/widget/TextView;

.field private final synthetic val$tvText:Landroid/widget/TextView;

.field private final synthetic val$tvVideo:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$17;->this$0:Lcom/olivephone/cu/SettingActivity;

    iput-object p2, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvVideo:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvText:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvImage:Landroid/widget/TextView;

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v2, 0x7f020029

    const-string v4, "white"

    const-string v3, "black"

    .line 851
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvVideo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "black"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-static {v0}, Lcom/olivephone/cu/SettingActivity;->access$0(Lcom/olivephone/cu/SettingActivity;)V

    .line 854
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->this$0:Lcom/olivephone/cu/SettingActivity;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/olivephone/cu/SettingActivity;->list_rss:Ljava/util/List;

    .line 855
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->this$0:Lcom/olivephone/cu/SettingActivity;

    const-string v1, "video"

    iput-object v1, v0, Lcom/olivephone/cu/SettingActivity;->istivTag:Ljava/lang/String;

    .line 856
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-static {v0}, Lcom/olivephone/cu/SettingActivity;->access$9(Lcom/olivephone/cu/SettingActivity;)V

    .line 857
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->this$0:Lcom/olivephone/cu/SettingActivity;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/olivephone/cu/SettingActivity;->access$10(Lcom/olivephone/cu/SettingActivity;Ljava/lang/String;)V

    .line 858
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvVideo:Landroid/widget/TextView;

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 859
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvVideo:Landroid/widget/TextView;

    const-string v1, "black"

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvText:Landroid/widget/TextView;

    const-string v1, "white"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 861
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 862
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvImage:Landroid/widget/TextView;

    const-string v1, "white"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 863
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$17;->val$tvImage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 865
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
