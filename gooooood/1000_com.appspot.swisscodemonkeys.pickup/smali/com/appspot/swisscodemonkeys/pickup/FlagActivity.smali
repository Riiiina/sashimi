.class public Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;
.super Lcom/appspot/swisscodemonkeys/pickup/PickupApp;
.source "FlagActivity.java"


# static fields
.field private static final reasons:[Ljava/lang/String;


# instance fields
.field private blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private final handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Sexual content"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Violent or repulsive content"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 28
    const-string v2, "Hateful or abusive content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Spam"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Other reason"

    aput-object v2, v0, v1

    .line 27
    sput-object v0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->reasons:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->handler:Landroid/os/Handler;

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;I)V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->flagAndClose(I)V

    return-void
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private flagAndClose(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$4;-><init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 98
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->showDialog(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/PickupApp;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v7, 0x7f030009

    invoke-virtual {p0, v7}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 38
    .local v2, "extras":Landroid/os/Bundle;
    if-eqz v2, :cond_0

    const-string v7, "blurb"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 39
    const-string v7, "blurb"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 41
    .local v5, "p":[B
    :try_start_0
    invoke-static {v5}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->parseFrom([B)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v7

    iput-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .end local v5    # "p":[B
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    if-nez v7, :cond_1

    .line 46
    invoke-static {}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;->newBuilder()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->setContents(Ljava/lang/String;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb$Builder;->build()Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    move-result-object v7

    iput-object v7, p0, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->blurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 48
    :cond_1
    const v7, 0x7f0b003c

    invoke-virtual {p0, v7}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    .line 49
    .local v6, "radioGroup":Landroid/widget/RadioGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    sget-object v7, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->reasons:[Ljava/lang/String;

    array-length v7, v7

    if-lt v3, v7, :cond_2

    .line 56
    const v7, 0x7f0b003d

    invoke-virtual {p0, v7}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 57
    .local v4, "ok":Landroid/widget/Button;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 58
    new-instance v7, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$1;

    invoke-direct {v7, p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;Landroid/widget/RadioGroup;)V

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    new-instance v7, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$2;

    invoke-direct {v7, p0, v4}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;Landroid/widget/Button;)V

    invoke-virtual {v6, v7}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 72
    const v7, 0x7f0b003e

    invoke-virtual {p0, v7}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 73
    .local v1, "cancel":Landroid/widget/Button;
    new-instance v7, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$3;

    invoke-direct {v7, p0}, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;)V

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void

    .line 50
    .end local v1    # "cancel":Landroid/widget/Button;
    .end local v4    # "ok":Landroid/widget/Button;
    :cond_2
    new-instance v0, Landroid/widget/RadioButton;

    invoke-direct {v0, p0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 51
    .local v0, "button":Landroid/widget/RadioButton;
    sget-object v7, Lcom/appspot/swisscodemonkeys/pickup/FlagActivity;->reasons:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v0, v7}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setId(I)V

    .line 53
    invoke-virtual {v6, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    .line 49
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 42
    .end local v0    # "button":Landroid/widget/RadioButton;
    .end local v3    # "i":I
    .end local v6    # "radioGroup":Landroid/widget/RadioGroup;
    .restart local v5    # "p":[B
    :catch_0
    move-exception v7

    goto :goto_0
.end method
