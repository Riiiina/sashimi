.class public Lcmn/AdConfig;
.super Ljava/lang/Object;
.source "AdConfig.java"


# static fields
.field public static final SCM_PROVIDER_CONFIG:Ljava/lang/String; = "scmpconf"

.field public static final SCM_SETTINGS_CONFIG:Ljava/lang/String; = "scmset"

.field private static lastConfigTouch:J

.field public static final syncLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 16
    const-wide/16 v0, 0x0

    sput-wide v0, Lcmn/AdConfig;->lastConfigTouch:J

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLastConfigTouch()J
    .locals 2

    .prologue
    .line 19
    sget-wide v0, Lcmn/AdConfig;->lastConfigTouch:J

    return-wide v0
.end method

.method public static touchConfig()V
    .locals 2

    .prologue
    .line 28
    :try_start_0
    sget-object v0, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcmn/AdConfig;->lastConfigTouch:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    sget-object v0, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 33
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    sget-object v1, Lcmn/AdConfig;->syncLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 32
    throw v0
.end method
