.class Lcom/andoop/android/recommend/RecommendDialog$3;
.super Ljava/lang/Object;
.source "RecommendDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/andoop/android/recommend/RecommendDialog;->initGame()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/recommend/RecommendDialog;


# direct methods
.method constructor <init>(Lcom/andoop/android/recommend/RecommendDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/andoop/android/recommend/RecommendDialog$3;->this$0:Lcom/andoop/android/recommend/RecommendDialog;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/andoop/android/recommend/RecommendDialog$3;->this$0:Lcom/andoop/android/recommend/RecommendDialog;

    invoke-static {v0}, Lcom/andoop/android/recommend/RecommendDialog;->access$1(Lcom/andoop/android/recommend/RecommendDialog;)Lcom/andoop/android/engine/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/andoop/android/recommend/RecommendDialog$3;->this$0:Lcom/andoop/android/recommend/RecommendDialog;

    invoke-static {v1}, Lcom/andoop/android/recommend/RecommendDialog;->access$2(Lcom/andoop/android/recommend/RecommendDialog;)Lcom/andoop/android/common/GameData;

    move-result-object v1

    iget-object v1, v1, Lcom/andoop/android/common/GameData;->pkg_name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/andoop/android/common/Constant;->showApp(Landroid/app/Activity;Ljava/lang/String;)V

    .line 106
    return-void
.end method
