.class Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;
.super Landroid/os/AsyncTask;
.source "IHRVideoCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetImage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/widget/ImageView;",
        "Landroid/widget/ImageView;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private position:I

.field private tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 90
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;

    .line 88
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 89
    iput p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->position:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/widget/ImageView;)Ljava/lang/Long;
    .locals 4
    .param p1, "params"    # [Landroid/widget/ImageView;

    .prologue
    const/4 v3, 0x0

    .line 113
    aget-object v1, p1, v3

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->tag:Ljava/lang/String;

    .line 115
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->tag:Ljava/lang/String;

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v3

    .line 117
    .local v0, "url":Ljava/lang/String;
    const-string v1, "Fetching : "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;->fetchDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->drawable:Landroid/graphics/drawable/Drawable;

    .line 122
    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/widget/ImageView;

    aget-object v2, p1, v3

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->publishProgress([Ljava/lang/Object;)V

    .line 123
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    check-cast p1, [Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->doInBackground([Landroid/widget/ImageView;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected varargs onProgressUpdate([Landroid/widget/ImageView;)V
    .locals 4
    .param p1, "params"    # [Landroid/widget/ImageView;

    .prologue
    .line 94
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->this$0:Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;->access$0(Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;)Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 95
    .local v0, "imageViewByTag":Landroid/widget/ImageView;
    if-eqz v0, :cond_1

    .line 96
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 97
    .local v1, "v":Landroid/view/View;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->drawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_0
    invoke-static {}, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter;->access$1()Ljava/util/HashMap;

    move-result-object v2

    iget v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->position:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected bridge varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, [Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/clearchannel/iheartradio/android/view/IHRVideoCursorAdapter$GetImage;->onProgressUpdate([Landroid/widget/ImageView;)V

    return-void
.end method
