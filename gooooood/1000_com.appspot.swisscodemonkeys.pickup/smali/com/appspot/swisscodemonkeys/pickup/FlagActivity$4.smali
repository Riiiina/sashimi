.class Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;
.super Ljava/lang/Object;
.source "FlagActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->flagAndClose(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

.field private final synthetic val$reason:I


# direct methods
.method constructor <init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    iput p2, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->val$reason:I

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;)Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    iget-object v0, v0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    iget-object v1, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    invoke-static {v1}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->access$1(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v1

    iget v2, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->val$reason:I

    invoke-virtual {v0, v1, v2}, Lcom/appspot/swisscodemonkeys/client/RatingsService;->flagMessage(Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;I)Z

    .line 87
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;->this$0:Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;

    invoke-static {v0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->access$2(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 96
    return-void
.end method
