.class public Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;
.super Ljava/lang/Object;
.source "IHRControllerCities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/controller/IHRControllerCities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SearchElement"
.end annotation


# instance fields
.field protected mContext:Ljava/lang/Object;

.field protected mString:Ljava/lang/String;

.field protected mStringLowercase:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/Object;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;->mContext:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;->mString:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;->mStringLowercase:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public context()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;->mContext:Ljava/lang/Object;

    return-object v0
.end method

.method public string()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerCities$SearchElement;->mStringLowercase:Ljava/lang/String;

    return-object v0
.end method
