.class Lstats/StatsTracker$Event;
.super Ljava/lang/Object;
.source "StatsTracker.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lstats/StatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Event"
.end annotation


# instance fields
.field private event:Ljava/lang/String;

.field private timestamp:J

.field private value:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lstats/StatsTracker$Event;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lstats/StatsTracker$Event;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lstats/StatsTracker$Event;J)V
    .locals 0

    .prologue
    .line 47
    iput-wide p1, p0, Lstats/StatsTracker$Event;->timestamp:J

    return-void
.end method

.method static synthetic access$2(Lstats/StatsTracker$Event;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lstats/StatsTracker$Event;->event:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lstats/StatsTracker$Event;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lstats/StatsTracker$Event;->value:I

    return-void
.end method

.method static synthetic access$4(Lstats/StatsTracker$Event;)J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lstats/StatsTracker$Event;->timestamp:J

    return-wide v0
.end method

.method static synthetic access$5(Lstats/StatsTracker$Event;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lstats/StatsTracker$Event;->event:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6(Lstats/StatsTracker$Event;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lstats/StatsTracker$Event;->value:I

    return v0
.end method
