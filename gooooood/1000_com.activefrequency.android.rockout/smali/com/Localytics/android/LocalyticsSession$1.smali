.class Lcom/Localytics/android/LocalyticsSession$1;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/Localytics/android/LocalyticsSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/Localytics/android/LocalyticsSession;


# direct methods
.method constructor <init>(Lcom/Localytics/android/LocalyticsSession;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/Localytics/android/LocalyticsSession$1;->this$0:Lcom/Localytics/android/LocalyticsSession;

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 798
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/Localytics/android/LocalyticsSession;->access$1(Z)V

    .line 799
    return-void
.end method
