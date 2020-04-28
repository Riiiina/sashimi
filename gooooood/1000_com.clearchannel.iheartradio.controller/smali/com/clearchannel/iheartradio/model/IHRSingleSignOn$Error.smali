.class public Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;
.super Ljava/lang/Object;
.source "IHRSingleSignOn.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/clearchannel/iheartradio/model/IHRSingleSignOn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, -0x1

    iput v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->id:I

    .line 381
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->error:Ljava/lang/String;

    .line 379
    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .locals 1

    .prologue
    .line 392
    iget-object v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 384
    iget v0, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->id:I

    return v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 396
    iput-object p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->error:Ljava/lang/String;

    .line 397
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 388
    iput p1, p0, Lcom/clearchannel/iheartradio/model/IHRSingleSignOn$Error;->id:I

    .line 389
    return-void
.end method
