.class public Lcom/andoop/android/engine/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field private static final DEBUGTAG:Ljava/lang/String; = "WOOYY"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .param p0, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 29
    const-string v0, "WOOYY"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "pMessage"    # Ljava/lang/String;
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    const-string v1, "WOOYY"

    .line 54
    if-nez p1, :cond_0

    .line 55
    const-string v0, "WOOYY"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    :goto_0
    return-void

    .line 58
    :cond_0
    const-string v0, "WOOYY"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static e(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 50
    const-string v0, "Error"

    invoke-static {v0, p0}, Lcom/andoop/android/engine/Debug;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .param p0, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 33
    const-string v0, "WOOYY"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .param p0, "pMessage"    # Ljava/lang/String;

    .prologue
    .line 25
    const-string v0, "WOOYY"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "pMessage"    # Ljava/lang/String;
    .param p1, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    const-string v1, "WOOYY"

    .line 41
    if-nez p1, :cond_0

    .line 42
    const-string v0, "WOOYY"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    const-string v0, "WOOYY"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "pThrowable"    # Ljava/lang/Throwable;

    .prologue
    .line 37
    const-string v0, "Warning"

    invoke-static {v0, p0}, Lcom/andoop/android/engine/Debug;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method
