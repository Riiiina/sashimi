.class public Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;
.super Lcom/clearchannel/iheartradio/controller/IHRController;
.source "IHRControllerRandomizer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;
    }
.end annotation


# static fields
.field protected static final kAnimationRunTimeMs:I = 0xbb8

.field protected static final kAnimationSpinTimeMinMs:I = 0x3e8

.field protected static final kButtonSpacing:I = 0xa

.field protected static final kGlyphCount:I = 0x7

.field protected static final kGlyphImageResourceHeight:F = 88.0f

.field protected static final kGlyphImageResourceWidth:F = 48.0f

.field protected static final kGlyphIndexA:I = 0xa

.field protected static final kGlyphIndexBackground:I = 0x26

.field protected static final kGlyphIndexDash:I = 0x24

.field protected static final kGlyphIndexDot:I = 0x25

.field protected static final kGlyphMarginH:I = 0x6

.field protected static final kGlyphMarginV:I = 0xa

.field protected static final kGlyphMaxRandomElement:I = 0x26

.field protected static final kGlyphRatioHtoW:F = 1.8333334f

.field protected static final kGlyphRatioWtoH:F = 0.54545456f

.field protected static final kGlyphResourceCount:I = 0x27

.field protected static final kGlyphRows:I = 0x1

.field protected static final kGlyphSpacing:I = 0x4

.field protected static final kGlyphsPerRow:I = 0x7

.field public static final kRandomizerImages:[I

.field protected static final kTextMarginH:I = 0x6

.field protected static final kTextMarginV:I = 0x2

.field protected static final kTextMarginV2:I = 0xc


# instance fields
.field protected mAnimator:Lcom/clearchannel/iheartradio/model/IHRAnimator;

.field protected mAnimatorThread:Ljava/lang/Thread;

.field protected mButtonPlay:Landroid/widget/ImageView;

.field protected mButtonRandomize:Landroid/widget/ImageView;

.field protected mDescription:Landroid/widget/TextView;

.field protected mGlyphHeight:I

.field protected mGlyphWidth:I

.field protected mGlyphs:[Landroid/graphics/Bitmap;

.field protected mHasRun:Z

.field protected mLCDGlyphs:[Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;

.field protected mName:Landroid/widget/TextView;

.field protected mNavigationAmount:I

.field protected mNowPlaying:Landroid/widget/TextView;

.field protected mPRNG:Ljava/util/Random;

.field protected mSongArtist:Landroid/widget/TextView;

.field protected mSongName:Landroid/widget/TextView;

.field protected mStationIdentifier:Ljava/lang/String;

.field protected mStationIndex:I

.field protected mStopTimes:[J

.field protected mText:[Ljava/lang/String;

.field protected mWhiteBar:Landroid/widget/ImageView;

.field protected mlcdLayout:Landroid/widget/TableRow;

.field protected view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->kRandomizerImages:[I

    .line 38
    return-void

    .line 62
    :array_0
    .array-data 4
        0x7f020081
        0x7f020082
        0x7f020083
        0x7f020084
        0x7f020085
        0x7f020086
        0x7f020087
        0x7f020088
        0x7f020089
        0x7f02008a
        0x7f02008b
        0x7f02008c
        0x7f02008e
        0x7f02008f
        0x7f020092
        0x7f020093
        0x7f020094
        0x7f020095
        0x7f020096
        0x7f020097
        0x7f020098
        0x7f020099
        0x7f02009a
        0x7f02009b
        0x7f02009c
        0x7f02009d
        0x7f02009e
        0x7f02009f
        0x7f0200a0
        0x7f0200a1
        0x7f0200a2
        0x7f0200a3
        0x7f0200a4
        0x7f0200a5
        0x7f0200a6
        0x7f0200a7
        0x7f020090
        0x7f020091
        0x7f02008d
        0x7f0200a8
        0x7f0200a9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/clearchannel/iheartradio/controller/IHRController;-><init>()V

    .line 127
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStopTimes:[J

    .line 128
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mText:[Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public animationStepped(I)V
    .locals 9
    .param p1, "totalRunTimeMs"    # I

    .prologue
    .line 272
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;

    array-length v2, v5

    .local v2, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 285
    return-void

    .line 273
    :cond_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;

    aget-object v0, v5, v1

    .line 275
    .local v0, "glyph":Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;
    int-to-long v5, p1

    iget-object v7, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStopTimes:[J

    aget-wide v7, v7, v1

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 276
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;->getGlyphIndex()I

    move-result v3

    .line 278
    .local v3, "o":I
    :cond_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mPRNG:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    rem-int/lit8 v4, v5, 0x26

    .local v4, "p":I
    if-eq v3, v4, :cond_1

    .line 280
    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;->setGlyphIndex(I)V

    .line 272
    .end local v3    # "o":I
    .end local v4    # "p":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    :cond_2
    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mText:[Ljava/lang/String;

    div-int/lit8 v6, v1, 0x7

    aget-object v5, v5, v6

    rem-int/lit8 v6, v1, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;->setChar(C)V

    goto :goto_1
.end method

.method public animationStopped()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 288
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 293
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    iget v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStationIndex:I

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForIndex(I)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    .line 294
    .local v1, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->getNowPlayingByCallLetters(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "songInfos":[Ljava/lang/String;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    aget-object v2, v0, v4

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 299
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    const-string v3, "Now Playing"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongArtist:Landroid/widget/TextView;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    aget-object v2, v0, v4

    const-string v3, ""

    if-eq v2, v3, :cond_1

    .line 303
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    const-string v3, "Now Playing"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongName:Landroid/widget/TextView;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    :cond_1
    return-void
.end method

.method public buildUI()V
    .locals 11

    .prologue
    const/16 v7, 0x27

    const v10, -0x333334

    const/4 v9, -0x1

    const/4 v8, 0x1

    .line 144
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->getContext()Landroid/app/Activity;

    move-result-object v0

    .line 147
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 148
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mControllerActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03002a

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mContent:Landroid/view/View;

    .line 151
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mContent:Landroid/view/View;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    .line 153
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    const v5, 0x7f0900b3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    .line 154
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    const v5, 0x7f0900b2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    .line 156
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRAnimator;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/model/IHRAnimator;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mAnimator:Lcom/clearchannel/iheartradio/model/IHRAnimator;

    .line 158
    new-array v4, v7, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mGlyphs:[Landroid/graphics/Bitmap;

    .line 159
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v7, :cond_0

    .line 163
    const/4 v2, 0x7

    .local v2, "n":I
    new-array v4, v2, [Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;

    .line 166
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    const v5, 0x7f0900ac

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableRow;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mlcdLayout:Landroid/widget/TableRow;

    .line 167
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 186
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v8, :cond_2

    .line 189
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mPRNG:Ljava/util/Random;

    .line 191
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    const v5, 0x7f0900ad

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    .line 192
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    const v5, 0x7f0900ae

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mName:Landroid/widget/TextView;

    .line 193
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    const v5, 0x7f0900b0

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongArtist:Landroid/widget/TextView;

    .line 194
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    const v5, 0x7f0900b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongName:Landroid/widget/TextView;

    .line 195
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->view:Landroid/view/View;

    const v5, 0x7f0900af

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    .line 206
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mName:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 207
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 208
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 209
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mName:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 212
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 213
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 215
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 216
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 217
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 219
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 220
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 221
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 222
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 224
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 226
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongArtist:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 227
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongArtist:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongArtist:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 229
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongArtist:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongArtist:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 232
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongName:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 233
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 234
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 235
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 236
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongName:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 238
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    const v5, 0x7f0200a8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 239
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    const v5, 0x7f0200a9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 241
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 243
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->randomize()V

    .line 245
    return-void

    .line 160
    .end local v2    # "n":I
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mGlyphs:[Landroid/graphics/Bitmap;

    sget-object v5, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->kRandomizerImages:[I

    aget v5, v5, v1

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 170
    .restart local v2    # "n":I
    :cond_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;

    new-instance v5, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;-><init>(Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;)V

    aput-object v5, v4, v1

    .line 175
    iget-object v4, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mlcdLayout:Landroid/widget/TableRow;

    iget-object v5, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer$LCDGlyph;

    aget-object v5, v5, v1

    const/16 v6, 0x26

    invoke-virtual {p0, v6}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->dpToPix(I)I

    move-result v6

    const/16 v7, 0x46

    invoke-virtual {p0, v7}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->dpToPix(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/TableRow;->addView(Landroid/view/View;II)V

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 186
    :cond_2
    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->setText(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 417
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->getContext()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 418
    .local v0, "res":I
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mAnimatorThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 259
    :goto_0
    return v0

    .line 251
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStepped:I

    if-ne v0, v1, :cond_1

    .line 252
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->animationStepped(I)V

    .line 259
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 253
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStopped:I

    if-ne v0, v1, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->animationStopped()V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 256
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStationIdentifier:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->onPlay(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->randomize()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/clearchannel/iheartradio/controller/IHRController;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->buildUI()V

    .line 139
    return-void
.end method

.method public onPlay(Ljava/lang/String;)V
    .locals 4
    .param p1, "inLetters"    # Ljava/lang/String;

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v1

    const-class v2, Lcom/clearchannel/iheartradio/controller/IHRControllerTabView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v1, v2, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushing(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "callLetter"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;->pushControllerIntent(Landroid/content/Intent;)Lcom/clearchannel/iheartradio/controller/IHRController;

    .line 414
    return-void
.end method

.method public randomize()V
    .locals 5

    .prologue
    .line 313
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 316
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationCount()I

    move-result v1

    .line 319
    .local v1, "count":I
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    rem-int/2addr v3, v1

    iput v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStationIndex:I

    .line 320
    iget v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStationIndex:I

    invoke-virtual {v0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForIndex(I)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v2

    .line 321
    .local v2, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    .line 323
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mDescription:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongArtist:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mSongName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mNowPlaying:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStationIdentifier:Ljava/lang/String;

    .line 330
    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStationIdentifier:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->randomize(Ljava/lang/String;)V

    .line 331
    return-void
.end method

.method protected randomize(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 340
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->setText(ILjava/lang/String;)V

    .line 342
    const/16 v1, 0x7d0

    .line 344
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    .line 348
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mAnimator:Lcom/clearchannel/iheartradio/model/IHRAnimator;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRAnimator;->start(I)Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mAnimatorThread:Ljava/lang/Thread;

    .line 349
    return-void

    .line 345
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mStopTimes:[J

    iget-object v3, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mPRNG:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    rem-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    aput-wide v3, v2, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setText(ILjava/lang/String;)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    .line 354
    if-nez p2, :cond_0

    const-string p2, ""

    .line 356
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "n":I
    if-lt v0, v3, :cond_1

    .line 357
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mText:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 363
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mText:[Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, p1

    .line 360
    sub-int v1, v3, v0

    const/4 v2, 0x1

    sub-int v0, v1, v2

    :goto_1
    if-gtz v0, :cond_2

    .line 361
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mText:[Ljava/lang/String;

    aget-object v2, v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    goto :goto_0

    .line 360
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->mText:[Ljava/lang/String;

    aget-object v2, v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public wantsBanner()Z
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    return v0
.end method
