.class Lcom/andoop/android/recommend/RecommendDialog$1;
.super Ljava/lang/Object;
.source "RecommendDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/recommend/RecommendDialog;
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
    iput-object p1, p0, Lcom/andoop/android/recommend/RecommendDialog$1;->this$0:Lcom/andoop/android/recommend/RecommendDialog;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/andoop/android/recommend/RecommendDialog$1;->this$0:Lcom/andoop/android/recommend/RecommendDialog;

    const-string v1, "KEY_RECOMMEND_LASTTIME_START"

    invoke-static {v0, v1}, Lcom/andoop/android/recommend/RecommendDialog;->access$0(Lcom/andoop/android/recommend/RecommendDialog;Ljava/lang/String;)V

    .line 36
    return-void
.end method
