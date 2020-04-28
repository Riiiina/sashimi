.class Lcmn/NotificationBar$2;
.super Ljava/lang/Object;
.source "NotificationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcmn/NotificationBar;->setContentViewWithNotification(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcmn/NotificationBar;


# direct methods
.method constructor <init>(Lcmn/NotificationBar;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcmn/NotificationBar$2;->this$0:Lcmn/NotificationBar;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcmn/NotificationBar$2;->this$0:Lcmn/NotificationBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcmn/NotificationBar;->access$0(Lcmn/NotificationBar;Z)V

    .line 90
    return-void
.end method
