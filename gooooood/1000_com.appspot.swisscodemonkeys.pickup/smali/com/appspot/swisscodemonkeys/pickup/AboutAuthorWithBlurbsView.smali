.class public Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;
.super Landroid/widget/LinearLayout;
.source "AboutAuthorWithBlurbsView.java"


# instance fields
.field private addMessageListener:Landroid/view/View$OnClickListener;

.field private editProfileListener:Landroid/view/View$OnClickListener;

.field private loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

.field private pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

.field private referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

.field private referringProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

.field private service:Lcom/appspot/swisscodemonkeys/client/RatingsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)V

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    .line 60
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->inflate(Landroid/content/Context;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    new-instance v1, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;

    invoke-direct {v1, p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$1;-><init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)V

    invoke-direct {v0, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    iput-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    .line 55
    invoke-direct {p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->inflate(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->referringProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    return-object v0
.end method

.method static synthetic access$1(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    return-object v0
.end method

.method static synthetic access$2(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    return-object v0
.end method

.method private inflate(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v2, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 66
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loader:Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;

    invoke-virtual {v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setBlurbLoader(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    .line 67
    new-instance v0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$2;

    invoke-direct {v0, p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$2;-><init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;)V

    .line 77
    .local v0, "clickListener":Landroid/widget/AdapterView$OnItemClickListener;, "Landroid/widget/AdapterView$OnItemClickListener;"
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v2, v0}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const/high16 v3, 0x7f030000

    iget-object v4, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    .line 79
    const/4 v5, 0x0

    .line 78
    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, "header":Landroid/view/View;
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v2, v1}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setHeaderView(Landroid/view/View;)V

    .line 81
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method

.method private updateVisibility(Landroid/view/View;Z)V
    .locals 5
    .param p1, "header"    # Landroid/view/View;
    .param p2, "isOwner"    # Z

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 142
    const v2, 0x7f0b0003

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 143
    .local v1, "editProfile":Landroid/widget/Button;
    const v2, 0x7f0b0004

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 144
    .local v0, "addMessage":Landroid/widget/Button;
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->editProfileListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 146
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->editProfileListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    :goto_0
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->addMessageListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 153
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->addMessageListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    :goto_1
    return-void

    .line 148
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public isDataLoaded()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V
    .locals 1
    .param p1, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p2, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V

    .line 92
    return-void
.end method

.method public loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;Z)V
    .locals 6
    .param p1, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p2, "blurb"    # Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;
    .param p3, "showFavorites"    # Z

    .prologue
    .line 102
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .line 103
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->referringBlurb:Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;

    .line 104
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 105
    .local v1, "header":Landroid/view/View;
    if-eqz p3, :cond_0

    .line 106
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    new-instance v4, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;

    new-instance v5, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$3;

    invoke-direct {v5, p0, p1}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView$3;-><init>(Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;Lcom/appspot/swisscodemonkeys/client/RatingsService;)V

    invoke-direct {v4, v5}, Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$ThreadBLWrapper;-><init>(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    invoke-virtual {v3, v4}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->setBlurbLoader(Lcom/appspot/swisscodemonkeys/pickup/BlurbLoaderUtils$IBlurbLoader;)V

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v3}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->reload()V

    .line 116
    const v3, 0x7f0b0001

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    .line 117
    .local v0, "authorView":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;
    if-nez p3, :cond_1

    .line 118
    invoke-virtual {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->fetchDetailsForUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$Blurb;)V

    .line 125
    :goto_0
    if-nez p2, :cond_2

    const/4 v3, 0x1

    :goto_1
    invoke-direct {p0, v1, v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->updateVisibility(Landroid/view/View;Z)V

    .line 126
    return-void

    .line 120
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->setVisibility(I)V

    .line 121
    const v3, 0x7f0b0006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 122
    .local v2, "title":Landroid/widget/TextView;
    const v3, 0x7f070057

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 125
    .end local v2    # "title":Landroid/widget/TextView;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public loadUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V
    .locals 3
    .param p1, "service"    # Lcom/appspot/swisscodemonkeys/client/RatingsService;
    .param p2, "userProfile"    # Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->service:Lcom/appspot/swisscodemonkeys/client/RatingsService;

    .line 130
    iput-object p2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->referringProfile:Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;

    .line 131
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->getHeaderView()Landroid/view/View;

    move-result-object v1

    .line 132
    .local v1, "header":Landroid/view/View;
    iget-object v2, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->pickupList:Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;

    invoke-virtual {v2}, Lcom/appspot/swisscodemonkeys/pickup/BlurbListWidget;->reload()V

    .line 133
    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;

    .line 134
    .local v0, "authorView":Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;
    invoke-virtual {v0, p1, p2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorView;->fetchDetailsForUser(Lcom/appspot/swisscodemonkeys/client/RatingsService;Lcom/appspot/swisscodemonkeys/client/Ratings$UserProfile;)V

    .line 136
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->updateVisibility(Landroid/view/View;Z)V

    .line 138
    return-void
.end method

.method public setAddMessageListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->addMessageListener:Landroid/view/View$OnClickListener;

    .line 47
    return-void
.end method

.method public setEditProfileListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/appspot/swisscodemonkeys/pickup/AboutAuthorWithBlurbsView;->editProfileListener:Landroid/view/View$OnClickListener;

    .line 51
    return-void
.end method
