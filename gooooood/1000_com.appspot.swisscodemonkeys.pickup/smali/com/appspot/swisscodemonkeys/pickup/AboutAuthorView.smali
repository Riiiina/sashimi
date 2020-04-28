.class public Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;
.super Landroid/widget/LinearLayout;
.source "AboutAuthorView.java"


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->handler:Landroid/os/Handler;

    .line 34
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->inflate(Landroid/content/Context;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->handler:Landroid/os/Handler;

    .line 29
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->inflate(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getGender(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)Ljava/lang/String;
    .locals 1
    .param p0, "gender"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    .prologue
    .line 70
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->MALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    if-ne p0, v0, :cond_0

    .line 71
    const-string v0, "male"

    .line 75
    :goto_0
    return-object v0

    .line 72
    :cond_0
    sget-object v0, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;->FEMALE:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    if-ne p0, v0, :cond_1

    .line 73
    const-string v0, "female"

    goto :goto_0

    .line 75
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030001

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 39
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 40
    return-void
.end method


# virtual methods
.method public fetchDetailsForUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 2
    .param p1, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p2, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method public fetchDetailsForUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 2
    .param p1, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p2, "userProfile"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 102
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 136
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 137
    return-void
.end method

.method public updateProfileFields(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 9
    .param p1, "profile"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 44
    const v6, 0x7f0b000a

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, "nick":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getNickname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    const v6, 0x7f0b000d

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 48
    .local v0, "about":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAbout()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    const/16 v6, 0xf

    invoke-static {v0, v6}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 52
    const v6, 0x7f0b000b

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 53
    .local v2, "gender":Landroid/widget/TextView;
    const-string v1, ""

    .line 54
    .local v1, "ageStr":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasAge()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 55
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAge()I

    move-result v7

    const/16 v8, 0x3c

    if-lt v7, v8, :cond_3

    const-string v7, ">= 60"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getGender()Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;

    move-result-object v7

    invoke-static {v7}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->getGender(Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile$Gender;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->hasImageUrl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    const v6, 0x7f0b0007

    invoke-virtual {p0, v6}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 60
    .local v3, "imageView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    .line 61
    .local v5, "url":Ljava/lang/String;
    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 62
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://androidpickup.appspot.com/api"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    :cond_1
    const-string v6, "aav"

    const-string v7, "Scheduling image download"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {v3, v5}, Lcom/appspot/swisscodemonkeys/image/ImageDownloader;->downloadImage(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 67
    .end local v3    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "url":Ljava/lang/String;
    :cond_2
    return-void

    .line 55
    :cond_3
    invoke-virtual {p1}, Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;->getAge()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_0
.end method
