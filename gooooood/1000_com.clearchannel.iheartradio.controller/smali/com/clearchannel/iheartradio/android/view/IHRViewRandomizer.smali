.class public Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;
.super Landroid/widget/RelativeLayout;
.source "IHRViewRandomizer.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;
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

.field protected mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;

.field protected mDescription:Landroid/widget/TextView;

.field protected mGlyphHeight:I

.field protected mGlyphWidth:I

.field protected mGlyphs:[Landroid/graphics/Bitmap;

.field protected mHasRun:Z

.field protected mLCDGlyphs:[Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;

.field protected mName:Landroid/widget/TextView;

.field protected mNavigationAmount:I

.field protected mNowPlaying:Landroid/widget/TextView;

.field protected mPRNG:Ljava/util/Random;

.field protected mSongArtist:Landroid/widget/TextView;

.field protected mSongName:Landroid/widget/TextView;

.field protected mStationIdentifier:Ljava/lang/String;

.field protected mStationIndex:I

.field protected mStopTimes:[J

.field protected mSurpriseMe:Landroid/widget/TextView;

.field protected mText:[Ljava/lang/String;

.field protected mWhiteBar:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/16 v0, 0x29

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->kRandomizerImages:[I

    .line 31
    return-void

    .line 55
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

.method public constructor <init>(Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;)V
    .locals 11
    .param p1, "delegate"    # Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;

    .prologue
    const/16 v10, 0x27

    const/4 v9, 0x2

    const v8, -0x333334

    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 125
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v4, 0x7

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStopTimes:[J

    .line 121
    new-array v4, v9, [Ljava/lang/String;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mText:[Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->activity()Lcom/clearchannel/iheartradio/controller/IHRControllerActivity;

    move-result-object v0

    .line 131
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 133
    .local v3, "res":Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;

    .line 134
    new-instance v4, Lcom/clearchannel/iheartradio/model/IHRAnimator;

    invoke-direct {v4, p0}, Lcom/clearchannel/iheartradio/model/IHRAnimator;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mAnimator:Lcom/clearchannel/iheartradio/model/IHRAnimator;

    .line 136
    new-array v4, v10, [Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphs:[Landroid/graphics/Bitmap;

    .line 137
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v10, :cond_0

    .line 141
    const/4 v2, 0x7

    .local v2, "n":I
    new-array v4, v2, [Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;

    .line 143
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSurpriseMe:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 144
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mWhiteBar:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 147
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 148
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v6, :cond_2

    .line 150
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mPRNG:Ljava/util/Random;

    .line 153
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 154
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 155
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 156
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 157
    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 159
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSurpriseMe:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 160
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSurpriseMe:Landroid/widget/TextView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 161
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSurpriseMe:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 162
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSurpriseMe:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSurpriseMe:Landroid/widget/TextView;

    const-string v5, "Surprise Me "

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSurpriseMe:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 167
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 168
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 169
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 170
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 173
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 174
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 175
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 176
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    const/high16 v5, 0x41500000    # 13.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 178
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v9}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 180
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 181
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 183
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 185
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 187
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 188
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 189
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 190
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 193
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 194
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->setSingleLine()V

    .line 196
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 197
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 199
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 200
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {p0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    .line 201
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    const v5, 0x7f0200a8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    const v5, 0x7f0200a9

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 204
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mWhiteBar:Landroid/widget/ImageView;

    const v5, 0x7f020133

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 207
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->randomize()V

    .line 208
    return-void

    .line 138
    .end local v2    # "n":I
    :cond_0
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphs:[Landroid/graphics/Bitmap;

    sget-object v5, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->kRandomizerImages:[I

    aget v5, v5, v1

    invoke-static {v3, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 147
    .restart local v2    # "n":I
    :cond_1
    iget-object v4, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;

    new-instance v5, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;

    invoke-direct {v5, p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;-><init>(Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;)V

    aput-object v5, v4, v1

    invoke-virtual {p0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 148
    :cond_2
    const-string v4, ""

    invoke-virtual {p0, v1, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->setText(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public animationStepped(I)V
    .locals 9
    .param p1, "totalRunTimeMs"    # I

    .prologue
    .line 340
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;

    array-length v2, v5

    .local v2, "n":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 353
    return-void

    .line 341
    :cond_0
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;

    aget-object v0, v5, v1

    .line 343
    .local v0, "glyph":Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;
    int-to-long v5, p1

    iget-object v7, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStopTimes:[J

    aget-wide v7, v7, v1

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 344
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->getGlyphIndex()I

    move-result v3

    .line 346
    .local v3, "o":I
    :cond_1
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mPRNG:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    const v6, 0x7fffffff

    and-int/2addr v5, v6

    rem-int/lit8 v4, v5, 0x26

    .local v4, "p":I
    if-eq v3, v4, :cond_1

    .line 348
    invoke-virtual {v0, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->setGlyphIndex(I)V

    .line 340
    .end local v3    # "o":I
    .end local v4    # "p":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_2
    iget-object v5, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mText:[Ljava/lang/String;

    div-int/lit8 v6, v1, 0x7

    aget-object v5, v5, v6

    rem-int/lit8 v6, v1, 0x7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v0, v5}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->setChar(C)V

    goto :goto_1
.end method

.method public animationStopped()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 356
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 361
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v2

    iget v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStationIndex:I

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForIndex(I)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v1

    .line 365
    .local v1, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/clearchannel/iheartradio/android/services/IHRConfigurationFile;->getNowPlayingByStreamId(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "songInfos":[Ljava/lang/String;
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/clearchannel/iheartradio/model/IHRStation;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    aget-object v2, v0, v4

    if-eqz v2, :cond_0

    aget-object v2, v0, v4

    const-string v3, ""

    if-eq v2, v3, :cond_0

    .line 375
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    const-string v3, "Now Playing"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    :cond_0
    aget-object v2, v0, v5

    if-eqz v2, :cond_1

    aget-object v2, v0, v4

    const-string v3, ""

    if-eq v2, v3, :cond_1

    .line 379
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    const-string v3, "Now Playing"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    :cond_1
    return-void
.end method

.method public dpToPix(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 486
    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 487
    .local v0, "res":I
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 211
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mAnimatorThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 221
    :goto_0
    return v0

    .line 213
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStepped:I

    if-ne v0, v1, :cond_1

    .line 214
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->animationStepped(I)V

    .line 221
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/clearchannel/iheartradio/model/IHRAnimator;->kMessageAnimationStopped:I

    if-ne v0, v1, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->animationStopped()V

    goto :goto_1

    :cond_2
    move v0, v2

    .line 218
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDelegate:Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;

    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStationIdentifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/controller/IHRControllerRandomizer;->onPlay(Ljava/lang/String;)V

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    iget-object v0, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->randomize()V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 25
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 240
    sub-int v10, p5, p3

    .line 241
    .local v10, "height":I
    sub-int v19, p4, p2

    .line 243
    .local v19, "width":I
    const/16 v20, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->dpToPix(I)I

    move-result v5

    .line 244
    .local v5, "buttonHeight":I
    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->dpToPix(I)I

    move-result v6

    .line 246
    .local v6, "buttonWidth":I
    const/16 v20, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->dpToPix(I)I

    move-result v7

    .line 247
    .local v7, "descriptionHeight":I
    const/16 v20, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->dpToPix(I)I

    move-result v16

    .line 251
    .local v16, "nameHeight":I
    move v13, v10

    .line 252
    .local v13, "maxHeight":I
    add-int/lit8 v13, v13, -0x1e

    .line 253
    sub-int v13, v13, v16

    .line 254
    add-int/lit8 v13, v13, -0x2

    .line 255
    sub-int/2addr v13, v7

    .line 256
    add-int/lit8 v13, v13, -0xc

    .line 257
    sub-int/2addr v13, v5

    .line 258
    div-int/lit8 v13, v13, 0x1

    .line 261
    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->dpToPix(I)I

    move-result v20

    mul-int/lit8 v20, v20, 0x2

    sub-int v20, v19, v20

    const/16 v21, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->dpToPix(I)I

    move-result v21

    mul-int/lit8 v21, v21, 0x6

    sub-int v20, v20, v21

    div-int/lit8 v14, v20, 0x7

    .line 263
    .local v14, "maxWidth":I
    move v0, v14

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3feaaaab

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    .line 265
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    move v1, v13

    if-le v0, v1, :cond_2

    .line 266
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    .line 267
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3f0ba2e9

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphWidth:I

    .line 272
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42b00000    # 88.0f

    cmpl-float v20, v20, v21

    if-gtz v20, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphWidth:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x42400000    # 48.0f

    cmpl-float v20, v20, v21

    if-lez v20, :cond_1

    .line 273
    :cond_0
    const/16 v20, 0x58

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    .line 274
    const/16 v20, 0x30

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphWidth:I

    .line 277
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    move/from16 v20, v0

    mul-int/lit8 v8, v20, 0x1

    .line 278
    .local v8, "fullHeight":I
    add-int/lit8 v8, v8, 0xa

    .line 279
    add-int v8, v8, v16

    .line 280
    add-int/lit8 v8, v8, 0x2

    .line 281
    add-int/2addr v8, v7

    .line 282
    add-int/lit8 v8, v8, 0xc

    .line 283
    add-int/2addr v8, v5

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphWidth:I

    move/from16 v20, v0

    mul-int/lit8 v20, v20, 0x7

    add-int/lit8 v9, v20, 0x18

    .line 287
    .local v9, "fullWidth":I
    div-int/lit8 v20, v19, 0x2

    div-int/lit8 v21, v9, 0x2

    sub-int v17, v20, v21

    .line 288
    .local v17, "offsetX":I
    div-int/lit8 v20, v10, 0x2

    div-int/lit8 v21, v8, 0x2

    sub-int v20, v20, v21

    const/16 v21, 0x64

    sub-int v18, v20, v21

    .line 290
    .local v18, "offsetY":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSurpriseMe:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    const/16 v22, 0x50

    sub-int v22, v18, v22

    add-int/lit8 v23, v9, 0x6

    add-int/lit8 v24, v18, 0x1f

    invoke-virtual/range {v20 .. v24}, Landroid/widget/TextView;->layout(IIII)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mWhiteBar:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    const/16 v22, 0x6e

    sub-int v22, v18, v22

    const/16 v23, 0x1f4

    add-int/lit8 v24, v18, 0x1f

    invoke-virtual/range {v20 .. v24}, Landroid/widget/ImageView;->layout(IIII)V

    .line 293
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    const/16 v20, 0x1

    move v0, v11

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 302
    const/16 v20, 0xc

    sub-int v9, v19, v20

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    add-int/lit8 v22, v9, 0x6

    add-int/lit8 v23, v18, 0x1f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 306
    add-int/lit8 v18, v18, 0x1d

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    add-int/lit8 v22, v9, 0x6

    add-int/lit8 v23, v18, 0x1f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 310
    add-int/lit8 v18, v18, 0x30

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    add-int/lit8 v22, v9, 0x6

    add-int/lit8 v23, v18, 0x1f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 314
    add-int/lit8 v18, v18, 0x30

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    add-int/lit8 v22, v9, 0x6

    add-int/lit8 v23, v18, 0x1f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 318
    add-int/lit8 v18, v18, 0x1c

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    add-int/lit8 v22, v9, 0x6

    add-int/lit8 v23, v18, 0x1f

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->layout(IIII)V

    .line 323
    add-int/lit8 v18, v18, 0x2b

    .line 325
    mul-int/lit8 v20, v6, 0x2

    add-int/lit8 v9, v20, 0xa

    .line 327
    sub-int v20, v19, v9

    div-int/lit8 v17, v20, 0x2

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonRandomize:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    add-int v21, v17, v6

    add-int v22, v18, v5

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 331
    add-int/lit8 v20, v6, 0xa

    add-int v17, v17, v20

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    move-object/from16 v20, v0

    add-int v21, v17, v6

    add-int v22, v18, v5

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 334
    return-void

    .line 269
    .end local v8    # "fullHeight":I
    .end local v9    # "fullWidth":I
    .end local v11    # "i":I
    .end local v17    # "offsetX":I
    .end local v18    # "offsetY":I
    :cond_2
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphWidth:I

    goto/16 :goto_0

    .line 294
    .restart local v8    # "fullHeight":I
    .restart local v9    # "fullWidth":I
    .restart local v11    # "i":I
    .restart local v17    # "offsetX":I
    .restart local v18    # "offsetY":I
    :cond_3
    mul-int/lit8 v12, v11, 0x7

    .local v12, "j":I
    add-int/lit8 v15, v12, 0x7

    .local v15, "n":I
    :goto_2
    if-lt v12, v15, :cond_4

    .line 298
    div-int/lit8 v20, v19, 0x2

    div-int/lit8 v21, v9, 0x2

    sub-int v17, v20, v21

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0xa

    add-int v18, v18, v20

    .line 293
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 295
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mLCDGlyphs:[Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;

    move-object/from16 v20, v0

    aget-object v20, v20, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphWidth:I

    move/from16 v21, v0

    add-int v21, v21, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphHeight:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move-object/from16 v0, v20

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer$LCDGlyph;->layout(IIII)V

    .line 294
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mGlyphWidth:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x4

    add-int v17, v17, v20

    goto :goto_2
.end method

.method public randomize()V
    .locals 5

    .prologue
    .line 388
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mButtonPlay:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 389
    invoke-static {}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->shared()Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;

    move-result-object v0

    .line 391
    .local v0, "client":Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;
    invoke-virtual {v0}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationCount()I

    move-result v1

    .line 394
    .local v1, "count":I
    :cond_0
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    rem-int/2addr v3, v1

    iput v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStationIndex:I

    .line 395
    iget v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStationIndex:I

    invoke-virtual {v0, v3}, Lcom/clearchannel/iheartradio/android/model/IHRConfigurationClient;->stationForIndex(I)Lcom/clearchannel/iheartradio/model/IHRStation;

    move-result-object v2

    .line 396
    .local v2, "station":Lcom/clearchannel/iheartradio/model/IHRStation;
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_0

    .line 398
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mDescription:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 399
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 400
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongArtist:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mSongName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mNowPlaying:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    invoke-virtual {v2}, Lcom/clearchannel/iheartradio/model/IHRStation;->getCallLetters()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStationIdentifier:Ljava/lang/String;

    .line 405
    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStationIdentifier:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->randomize(Ljava/lang/String;)V

    .line 406
    return-void
.end method

.method protected randomize(Ljava/lang/String;)V
    .locals 5
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 415
    const/4 v2, 0x0

    invoke-virtual {p0, v2, p1}, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->setText(ILjava/lang/String;)V

    .line 417
    const/16 v1, 0x7d0

    .line 419
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-lt v0, v2, :cond_0

    .line 423
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mAnimator:Lcom/clearchannel/iheartradio/model/IHRAnimator;

    const/16 v3, 0xbb8

    invoke-virtual {v2, v3}, Lcom/clearchannel/iheartradio/model/IHRAnimator;->start(I)Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mAnimatorThread:Ljava/lang/Thread;

    .line 424
    return-void

    .line 420
    :cond_0
    iget-object v2, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mStopTimes:[J

    iget-object v3, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mPRNG:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    rem-int/2addr v3, v1

    add-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    aput-wide v3, v2, v0

    .line 419
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setText(ILjava/lang/String;)V
    .locals 4
    .param p1, "row"    # I
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x7

    .line 429
    if-nez p2, :cond_0

    const-string p2, ""

    .line 431
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, "n":I
    if-lt v0, v3, :cond_1

    .line 432
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mText:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, p1

    .line 438
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mText:[Ljava/lang/String;

    const-string v2, " "

    aput-object v2, v1, p1

    .line 435
    sub-int v1, v3, v0

    const/4 v2, 0x1

    sub-int v0, v1, v2

    :goto_1
    if-gtz v0, :cond_2

    .line 436
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mText:[Ljava/lang/String;

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

    .line 435
    :cond_2
    iget-object v1, p0, Lcom/clearchannel/iheartradio/android/view/IHRViewRandomizer;->mText:[Ljava/lang/String;

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
    .line 408
    const/4 v0, 0x0

    return v0
.end method
