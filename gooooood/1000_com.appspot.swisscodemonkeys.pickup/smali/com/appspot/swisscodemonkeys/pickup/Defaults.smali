.class public Lcom/appspot/swisscodemonkeys/pickup/Defaults;
.super Ljava/lang/Object;
.source "Defaults.java"


# static fields
.field private static instance:Lcom/appspot/swisscodemonkeys/pickup/Defaults;


# instance fields
.field private jokeExtraLine:I

.field private jokeFooterDefault:I

.field private jokeSubjectDefault:I

.field private jokeTitle:I

.field private widgetCategory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    invoke-direct {v0}, Lcom/appspot/swisscodemonkeys/pickup/Defaults;-><init>()V

    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->instance:Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const v0, 0x7f070059

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeFooterDefault:I

    .line 16
    const v0, 0x7f070055

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeSubjectDefault:I

    .line 17
    const v0, 0x7f070056

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeTitle:I

    .line 18
    const v0, 0x7f070054

    iput v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeExtraLine:I

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->widgetCategory:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/appspot/swisscodemonkeys/pickup/Defaults;
    .locals 2

    .prologue
    .line 12
    const-class v0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->instance:Lcom/appspot/swisscodemonkeys/pickup/Defaults;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaults(Lcom/appspot/swisscodemonkeys/pickup/Defaults;)V
    .locals 2
    .param p0, "defaults"    # Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    .prologue
    .line 8
    const-class v0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->instance:Lcom/appspot/swisscodemonkeys/pickup/Defaults;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    return-void

    .line 8
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getJokeExtraLine()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeExtraLine:I

    return v0
.end method

.method public getJokeFooterDefault()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeFooterDefault:I

    return v0
.end method

.method public getJokeSubjectDefault()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeSubjectDefault:I

    return v0
.end method

.method public getJokeTitle()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeTitle:I

    return v0
.end method

.method public getWidgetCategory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->widgetCategory:Ljava/lang/String;

    return-object v0
.end method

.method public setJokeExtraLine(I)V
    .locals 0
    .param p1, "jokeExtraLine"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeExtraLine:I

    .line 63
    return-void
.end method

.method public setJokeFooterDefault(I)V
    .locals 0
    .param p1, "jokeFooterDefault"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeFooterDefault:I

    .line 39
    return-void
.end method

.method public setJokeSubjectDefault(I)V
    .locals 0
    .param p1, "jokeSubjectDefault"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeSubjectDefault:I

    .line 47
    return-void
.end method

.method public setJokeTitle(I)V
    .locals 0
    .param p1, "jokeTitle"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->jokeTitle:I

    .line 55
    return-void
.end method

.method public setWidgetCategory(Ljava/lang/String;)V
    .locals 0
    .param p1, "widgetCategory"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/Defaults;->widgetCategory:Ljava/lang/String;

    .line 28
    return-void
.end method
