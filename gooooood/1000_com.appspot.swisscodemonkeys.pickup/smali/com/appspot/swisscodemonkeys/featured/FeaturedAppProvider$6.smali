.class Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$6;
.super Ljava/lang/Object;
.source "FeaturedAppProvider.java"

# interfaces
.implements Lvw/ViewProvider$ViewProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lvw/ViewProvider;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 599
    new-instance v0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;

    invoke-direct {v0, p1}, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
