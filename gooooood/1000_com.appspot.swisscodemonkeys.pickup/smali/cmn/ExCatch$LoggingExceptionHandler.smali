.class public Lcmn/ExCatch$LoggingExceptionHandler;
.super Ljava/lang/Object;
.source "ExCatch.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcmn/ExCatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoggingExceptionHandler"
.end annotation


# instance fields
.field private parentHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private pathPrefix:Ljava/lang/String;

.field private props:Lcmn/AppProperties;


# direct methods
.method public constructor <init>(Ljava/lang/Thread$UncaughtExceptionHandler;Lcmn/AppProperties;Landroid/content/Context;)V
    .locals 2
    .param p1, "parentHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;
    .param p2, "props"    # Lcmn/AppProperties;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcmn/ExCatch$LoggingExceptionHandler;->parentHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 54
    iput-object p2, p0, Lcmn/ExCatch$LoggingExceptionHandler;->props:Lcmn/AppProperties;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcmn/AppProperties;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcmn/ExCatch$LoggingExceptionHandler;->pathPrefix:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "thread"    # Ljava/lang/Thread;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    iget-object v5, p0, Lcmn/ExCatch$LoggingExceptionHandler;->props:Lcmn/AppProperties;

    const/4 v6, 0x0

    invoke-static {v5, p2, v6}, Lcmn/ExCatch;->access$0(Lcmn/AppProperties;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "exceptionLog":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcmn/ExCatch$LoggingExceptionHandler;->pathPrefix:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".trace"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "fileName":Ljava/lang/String;
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x400

    invoke-direct {v4, v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 64
    .local v4, "out":Ljava/io/BufferedOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 67
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 68
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :goto_1
    iget-object v5, p0, Lcmn/ExCatch$LoggingExceptionHandler;->parentHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v5, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 74
    return-void

    .line 65
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    xor-int/lit16 v5, v5, 0xff

    invoke-virtual {v4, v5}, Ljava/io/BufferedOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 70
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
