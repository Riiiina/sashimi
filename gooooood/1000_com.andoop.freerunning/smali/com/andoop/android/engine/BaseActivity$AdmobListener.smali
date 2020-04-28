.class Lcom/andoop/android/engine/BaseActivity$AdmobListener;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Lcom/admob/android/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/andoop/android/engine/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdmobListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/andoop/android/engine/BaseActivity;


# direct methods
.method constructor <init>(Lcom/andoop/android/engine/BaseActivity;)V
    .locals 0

    .prologue
    .line 413
    iput-object p1, p0, Lcom/andoop/android/engine/BaseActivity$AdmobListener;->this$0:Lcom/andoop/android/engine/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .param p1, "view"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 417
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity$AdmobListener;->this$0:Lcom/andoop/android/engine/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/BaseActivity;->admobLoadFailed(Lcom/admob/android/ads/AdView;)V

    .line 418
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .param p1, "view"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity$AdmobListener;->this$0:Lcom/andoop/android/engine/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/BaseActivity;->admobRefreshFailed(Lcom/admob/android/ads/AdView;)V

    .line 423
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .param p1, "view"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity$AdmobListener;->this$0:Lcom/andoop/android/engine/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/BaseActivity;->admobReceived(Lcom/admob/android/ads/AdView;)V

    .line 428
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 1
    .param p1, "view"    # Lcom/admob/android/ads/AdView;

    .prologue
    .line 432
    iget-object v0, p0, Lcom/andoop/android/engine/BaseActivity$AdmobListener;->this$0:Lcom/andoop/android/engine/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/andoop/android/engine/BaseActivity;->admobRefreshReceived(Lcom/admob/android/ads/AdView;)V

    .line 433
    return-void
.end method
