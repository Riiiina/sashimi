.class public final Lcom/tat/cascadeswallpaper/android/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final DEBUG:I = 0x10

.field public static final ERROR:I = 0x1

.field public static final INFO:I = 0x4

.field public static final NONE:I = 0x0

.field public static final VERBOSE:I = 0x8

.field public static final WARNING:I = 0x2

.field static mVerbosity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x7

    sput v0, Lcom/tat/cascadeswallpaper/android/Log;->mVerbosity:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 82
    sget v0, Lcom/tat/cascadeswallpaper/android/Log;->mVerbosity:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    sget v0, Lcom/tat/cascadeswallpaper/android/Log;->mVerbosity:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 35
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 58
    sget v0, Lcom/tat/cascadeswallpaper/android/Log;->mVerbosity:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 59
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method public static setVerbosity(I)V
    .locals 0

    .prologue
    .line 24
    sput p0, Lcom/tat/cascadeswallpaper/android/Log;->mVerbosity:I

    .line 25
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/tat/cascadeswallpaper/android/Log;->mVerbosity:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 71
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/tat/cascadeswallpaper/android/Log;->mVerbosity:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 47
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method
