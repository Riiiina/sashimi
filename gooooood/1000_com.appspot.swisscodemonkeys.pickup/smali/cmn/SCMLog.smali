.class public final Lcmn/SCMLog;
.super Ljava/lang/Object;
.source "SCMLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcmn/SCMLog$StringListener;
    }
.end annotation


# static fields
.field public static final ACTIVATED:Z

.field private static final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcmn/SCMLog$StringListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcmn/SCMLog;->listeners:Ljava/util/List;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addListener(Lcmn/SCMLog$StringListener;)V
    .locals 1
    .param p0, "listener"    # Lcmn/SCMLog$StringListener;

    .prologue
    .line 27
    sget-object v0, Lcmn/SCMLog;->listeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 46
    return-void
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 55
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v2, "scm"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Lcmn/SCMLog;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 40
    return-void

    .line 33
    :cond_0
    sget-object v2, Lcmn/SCMLog;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcmn/SCMLog$StringListener;

    .line 34
    .local v1, "listener":Lcmn/SCMLog$StringListener;
    invoke-interface {v1, p0}, Lcmn/SCMLog$StringListener;->addLogString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 35
    sget-object v2, Lcmn/SCMLog;->listeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 36
    add-int/lit8 v0, v0, -0x1

    .line 32
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
