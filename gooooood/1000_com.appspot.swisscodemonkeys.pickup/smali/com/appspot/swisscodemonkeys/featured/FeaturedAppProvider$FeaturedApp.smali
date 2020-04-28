.class public Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;
.super Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;
.source "FeaturedAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeaturedApp"
.end annotation


# instance fields
.field clickParams:Ljava/lang/String;

.field clickUrl:Ljava/lang/String;

.field icon:Landroid/graphics/drawable/Drawable;

.field installParams:Ljava/lang/String;

.field installed:Z

.field webUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/apps/model/AppDatabaseItem;-><init>()V

    return-void
.end method
