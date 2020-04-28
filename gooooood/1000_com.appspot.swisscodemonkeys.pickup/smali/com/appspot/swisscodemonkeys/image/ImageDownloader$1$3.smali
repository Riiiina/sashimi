.class Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$3;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;

.field private final synthetic val$done:Lcmn/Callable1;


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;Lcmn/Callable1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$3;->this$1:Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1;

    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$3;->val$done:Lcmn/Callable1;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/image/ImageDownloader$1$3;->val$done:Lcmn/Callable1;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcmn/Callable1;->call(Ljava/lang/Object;)V

    .line 161
    return-void
.end method
