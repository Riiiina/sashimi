.class public Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;
.super Ljava/lang/Object;
.source "BlurbLoaderUtils.java"

# interfaces
.implements Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadBLWrapper"
.end annotation


# instance fields
.field private delegate:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V
    .locals 1
    .param p1, "delegate"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;->handler:Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;->delegate:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    .line 53
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;)Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;->delegate:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public loadMoreBlurbs(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;Ljava/lang/String;)V
    .locals 1
    .param p1, "receiver"    # Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;
    .param p2, "next"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;Ljava/lang/String;Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$BlurbReceiver;)V

    .line 87
    invoke-virtual {v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper$1;->start()V

    .line 88
    return-void
.end method
