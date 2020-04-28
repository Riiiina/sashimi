.class Lcom/andoop/android/recommend/RecommendDialog$4;
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
    iput-object p1, p0, Lcom/andoop/android/recommend/RecommendDialog$4;->this$0:Lcom/andoop/android/recommend/RecommendDialog;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/andoop/android/recommend/RecommendDialog$4;->this$0:Lcom/andoop/android/recommend/RecommendDialog;

    invoke-virtual {v0}, Lcom/andoop/android/recommend/RecommendDialog;->cancel()V

    .line 113
    return-void
.end method
