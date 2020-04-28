.class public Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;
.super Landroid/widget/RelativeLayout;
.source "IHRViewTabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;
    }
.end annotation


# static fields
.field public static final kIndexBacks:I = 0x10

.field public static final kIndexIcons:I = 0x0

.field public static final kPositionCenter:I = 0x0

.field public static final kPositionLeft:I = -0x1

.field public static final kPositionRight:I = 0x1

.field public static final kResources:[I

.field public static final kTabBarButtonCategories:I = 0x0

.field public static final kTabBarButtonColors:[I

.field public static final kTabBarButtonCount:I = 0x4

.field public static final kTabBarButtonFavorites:I = 0x1

.field public static final kTabBarButtonNames:[Ljava/lang/String;

.field public static final kTabBarButtonPlayer:I = 0x4

.field public static final kTabBarButtonRandomizer:I = 0x2

.field public static final kTabBarButtonSettings:I = 0x3

.field public static final kTabBarButtonStateCount:I = 0x4

.field public static final kTabBarButtonStateDown:I = 0x1

.field public static final kTabBarButtonStateOffline:I = 0x3

.field public static final kTabBarButtonStateOver:I = 0x2

.field public static final kTabBarButtonStateUp:I = 0x0

.field public static final kTabBarHeight:I = 0x32


# instance fields
.field protected mBitmaps:[Landroid/graphics/Bitmap;

.field protected mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

.field protected mDelegate:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Home"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Favorites"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Randomizer"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Settings"

    aput-object v2, v0, v1

    const-string v1, "Player"

    aput-object v1, v0, v3

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->kTabBarButtonNames:[Ljava/lang/String;

    .line 36
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->kTabBarButtonColors:[I

    .line 44
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->kResources:[I

    .line 15
    return-void

    .line 36
    nop

    :array_0
    .array-data 4
        -0x333334
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 44
    :array_1
    .array-data 4
        0x7f020107
        0x7f020105
        0x7f020106
        0x7f020106
        0x7f02010a
        0x7f020108
        0x7f020109
        0x7f020109
        0x7f02010d
        0x7f02010b
        0x7f02010c
        0x7f02010c
        0x7f020110
        0x7f02010e
        0x7f02010f
        0x7f02010f
        0x7f020115
        0x7f020103
        0x7f020112
        0x7f020112
        0x7f020114
        0x7f020102
        0x7f020111
        0x7f020111
        0x7f020116
        0x7f020104
        0x7f020113
        0x7f020113
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/clearchannel/iheartradio/android/view/IHRViewMain;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "delegate"    # Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .prologue
    const/4 v3, 0x4

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 38
    new-array v1, v3, [Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    .line 60
    iput-object p2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mDelegate:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    .line 62
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 69
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->setIsDown(Z)V

    .line 70
    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    new-instance v2, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    invoke-direct {v2, p0, p1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;Landroid/content/Context;I)V

    aput-object v2, v1, v0

    .line 64
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->addView(Landroid/view/View;)V

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private imageForResource(I)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "inIndex"    # I

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "result":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mBitmaps:[Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 115
    const/16 v1, 0x20

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 120
    :goto_0
    if-nez v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->kResources:[I

    aget v2, v2, p1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 123
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mBitmaps:[Landroid/graphics/Bitmap;

    aput-object v0, v1, p1

    .line 126
    :cond_0
    return-object v0

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v1, p1

    goto :goto_0
.end method


# virtual methods
.method public imageForBack(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "inState"    # I
    .param p2, "inPosition"    # I

    .prologue
    .line 130
    add-int/lit8 v0, p2, 0x1

    mul-int/lit8 v0, v0, 0x4

    and-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->imageForResource(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public imageForIcon(II)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "inState"    # I
    .param p2, "inType"    # I

    .prologue
    .line 134
    mul-int/lit8 v0, p2, 0x4

    and-int/lit8 v1, p1, 0x3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x0

    invoke-direct {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->imageForResource(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    check-cast p1, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    .end local p1    # "view":Landroid/view/View;
    iget v0, p1, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->mType:I

    .line 76
    .local v0, "type":I
    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->setSelectedTab(I)V

    .line 78
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mDelegate:Lcom/clearchannel/iheartradio/android/view/IHRViewMain;

    invoke-virtual {v1, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewMain;->setSelectedTab(I)V

    .line 80
    .end local v0    # "type":I
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 101
    sub-int v0, p5, p3

    .line 102
    .local v0, "h":I
    sub-int v3, p4, p2

    .line 103
    .local v3, "w":I
    div-int/lit8 v2, v3, 0x4

    .line 104
    .local v2, "n":I
    const/4 v4, 0x0

    .line 106
    .local v4, "x":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v5, 0x4

    if-lt v1, v5, :cond_0

    .line 109
    return-void

    .line 107
    :cond_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    add-int v7, v4, v2

    invoke-virtual {v5, v4, v6, v7, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->layout(IIII)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v4, v2

    goto :goto_0
.end method

.method public setSelectedTab(I)V
    .locals 4
    .param p1, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    const/4 p1, -0x1

    .line 89
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 93
    return-void

    .line 90
    :cond_1
    if-gez p1, :cond_3

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    aget-object v1, v1, v0

    if-nez v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->setState(I)V

    .line 89
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_2
    const/4 v2, 0x3

    goto :goto_1

    .line 91
    :cond_3
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar;->mButtons:[Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;

    aget-object v1, v1, v0

    if-ne v0, p1, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/android/view/IHRViewTabBar$IHRTabBarButton;->setIsDown(Z)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method
