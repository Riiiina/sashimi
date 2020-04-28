.class public Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;
.super Ljava/lang/Object;
.source "FeaturedAppProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeaturedAppResponse"
.end annotation


# instance fields
.field final apps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;",
            ">;"
        }
    .end annotation
.end field

.field extraUrlParameters:Ljava/lang/String;

.field format:Ljava/lang/String;

.field selectParams:Ljava/lang/String;

.field selected:[Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedApp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/featured/FeaturedAppProvider$FeaturedAppResponse;->apps:Ljava/util/List;

    .line 101
    return-void
.end method
