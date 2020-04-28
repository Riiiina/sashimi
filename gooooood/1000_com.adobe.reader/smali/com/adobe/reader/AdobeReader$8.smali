.class Lcom/adobe/reader/AdobeReader$8;
.super Landroid/app/ProgressDialog;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/reader/AdobeReader;->showFindProgressDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/reader/AdobeReader;


# direct methods
.method constructor <init>(Lcom/adobe/reader/AdobeReader;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/adobe/reader/AdobeReader$8;->this$0:Lcom/adobe/reader/AdobeReader;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    sget-object v0, Lcom/adobe/reader/AdobeReader;->sPageView:Lcom/adobe/reader/PageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/reader/PageView;->requestCancelSearch(Z)V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
