.class public Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;
.super Ljava/lang/Object;
.source "AppEngineComm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/client/AppEngineComm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field public final errorMessage:Ljava/lang/String;

.field public final ok:Z

.field public final result:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "errorMessage"    # Ljava/lang/String;
    .param p2, "result"    # [B

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->errorMessage:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    .line 45
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "result"    # [B

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->ok:Z

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->errorMessage:Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/client/AppEngineComm$Result;->result:[B

    .line 39
    return-void
.end method
