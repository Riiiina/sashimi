.class public Lcom/tt/yy/GoogleReaderService;
.super Landroid/app/Service;
.source "GoogleReaderService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tt/yy/GoogleReaderService$ReadingBinder;
    }
.end annotation


# instance fields
.field private final binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Lcom/tt/yy/GoogleReaderService$ReadingBinder;

    invoke-direct {v0, p0}, Lcom/tt/yy/GoogleReaderService$ReadingBinder;-><init>(Lcom/tt/yy/GoogleReaderService;)V

    iput-object v0, p0, Lcom/tt/yy/GoogleReaderService;->binder:Landroid/os/IBinder;

    .line 9
    return-void
.end method

.method private close(Landroid/database/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/tt/yy/GoogleReaderService;->binder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 25
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 31
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 18
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 19
    return-void
.end method
