.class public Lcom/tt/yy/GoogleReaderService$ReadingBinder;
.super Landroid/os/Binder;
.source "GoogleReaderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tt/yy/GoogleReaderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ReadingBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tt/yy/GoogleReaderService;


# direct methods
.method public constructor <init>(Lcom/tt/yy/GoogleReaderService;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/tt/yy/GoogleReaderService$ReadingBinder;->this$0:Lcom/tt/yy/GoogleReaderService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/tt/yy/GoogleReaderService;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/tt/yy/GoogleReaderService$ReadingBinder;->this$0:Lcom/tt/yy/GoogleReaderService;

    return-object v0
.end method
