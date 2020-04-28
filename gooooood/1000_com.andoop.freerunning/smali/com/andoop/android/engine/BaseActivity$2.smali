.class Lcom/andoop/android/engine/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/engine/BaseActivity;->moveAdView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/BaseActivity;

.field private final synthetic val$adview:Landroid/view/View;

.field private final synthetic val$params:Landroid/view/ViewGroup$LayoutParams;


# direct methods
.method constructor <init>(Lcom/andoop/android/engine/BaseActivity;Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/engine/BaseActivity$2;->this$0:Lcom/andoop/android/engine/BaseActivity;

    iput-object p2, p0, Lcom/andoop/android/engine/BaseActivity$2;->val$adview:Landroid/view/View;

    iput-object p3, p0, Lcom/andoop/android/engine/BaseActivity$2;->val$params:Landroid/view/ViewGroup$LayoutParams;

    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 371
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity$2;->this$0:Lcom/andoop/android/engine/BaseActivity;

    iget-object v0, v0, Lcom/andoop/android/engine/BaseActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity$2;->val$adview:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 372
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity$2;->this$0:Lcom/andoop/android/engine/BaseActivity;

    iget-object v0, v0, Lcom/andoop/android/engine/BaseActivity;->mContainer:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/andoop/android/engine/BaseActivity$2;->val$adview:Landroid/view/View;

    iget-object v2, p0, Lcom/andoop/android/engine/BaseActivity$2;->val$params:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 373
    return-void
.end method
