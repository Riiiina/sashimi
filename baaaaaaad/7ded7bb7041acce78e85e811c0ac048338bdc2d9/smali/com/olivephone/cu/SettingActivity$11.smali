.class Lcom/olivephone/cu/SettingActivity$11;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/olivephone/cu/SettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/olivephone/cu/SettingActivity;


# direct methods
.method constructor <init>(Lcom/olivephone/cu/SettingActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/olivephone/cu/SettingActivity$11;->this$0:Lcom/olivephone/cu/SettingActivity;

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$11;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-boolean v0, v0, Lcom/olivephone/cu/SettingActivity;->iv_save_ext:Z

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$11;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/SettingActivity;->resetAll()V

    .line 530
    :goto_0
    return v2

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$11;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-virtual {v0}, Lcom/olivephone/cu/SettingActivity;->resetAll()V

    .line 523
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$11;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->iv_file_save:Landroid/widget/ImageView;

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 524
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$11;->this$0:Lcom/olivephone/cu/SettingActivity;

    iget-object v0, v0, Lcom/olivephone/cu/SettingActivity;->al_save:Landroid/widget/AbsoluteLayout;

    invoke-virtual {v0, v2}, Landroid/widget/AbsoluteLayout;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$11;->this$0:Lcom/olivephone/cu/SettingActivity;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/olivephone/cu/SettingActivity;->iv_save_ext:Z

    .line 527
    iget-object v0, p0, Lcom/olivephone/cu/SettingActivity$11;->this$0:Lcom/olivephone/cu/SettingActivity;

    invoke-static {v0}, Lcom/olivephone/cu/SettingActivity;->access$5(Lcom/olivephone/cu/SettingActivity;)V

    goto :goto_0
.end method
