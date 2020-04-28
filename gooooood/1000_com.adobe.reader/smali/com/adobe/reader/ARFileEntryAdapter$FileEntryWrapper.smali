.class public Lcom/adobe/reader/ARFileEntryAdapter$FileEntryWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/reader/ARFileEntryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileEntryWrapper"
.end annotation


# instance fields
.field public mDirectoryPathView:Landroid/widget/TextView;

.field public mFileNameView:Landroid/widget/TextView;

.field public mFileSizeView:Landroid/widget/TextView;

.field public mModifiedDateTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
