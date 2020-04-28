.class public Lcom/chartcross/view/MxSixteenSegment;
.super Ljava/lang/Object;
.source "MxSixteenSegment.java"


# instance fields
.field private mButtonBlur:Landroid/graphics/MaskFilter;

.field public mCharMap:[I

.field public mGap:I

.field public mGlow:Z

.field public mOffColour:I

.field public mOnColour:I

.field private mPaint:Landroid/graphics/Paint;

.field public mSegMultiplier:I

.field public mSegRatio:I

.field private mSegmentPath:Landroid/graphics/Path;

.field public mShowOff:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0xff

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/16 v0, 0x600

    new-array v0, v0, [I

    const/16 v1, 0xa8

    .line 19
    aput v2, v0, v1

    const/16 v1, 0xa9

    aput v2, v0, v1

    const/16 v1, 0xaa

    aput v2, v0, v1

    const/16 v1, 0xab

    aput v2, v0, v1

    const/16 v1, 0xac

    aput v2, v0, v1

    const/16 v1, 0xad

    aput v2, v0, v1

    const/16 v1, 0xae

    aput v2, v0, v1

    const/16 v1, 0xaf

    aput v2, v0, v1

    const/16 v1, 0xb8

    .line 20
    aput v2, v0, v1

    const/16 v1, 0xb9

    aput v2, v0, v1

    const/16 v1, 0xba

    aput v2, v0, v1

    const/16 v1, 0xbb

    aput v2, v0, v1

    const/16 v1, 0xcd

    .line 21
    aput v2, v0, v1

    const/16 v1, 0xd8

    .line 22
    aput v2, v0, v1

    const/16 v1, 0xd9

    aput v2, v0, v1

    const/16 v1, 0xfd

    .line 24
    aput v2, v0, v1

    aput v2, v0, v4

    const/16 v1, 0x100

    .line 26
    aput v2, v0, v1

    const/16 v1, 0x101

    aput v2, v0, v1

    const/16 v1, 0x102

    aput v2, v0, v1

    const/16 v1, 0x103

    aput v2, v0, v1

    const/16 v1, 0x104

    aput v2, v0, v1

    const/16 v1, 0x105

    aput v2, v0, v1

    const/16 v1, 0x106

    aput v2, v0, v1

    const/16 v1, 0x107

    aput v2, v0, v1

    const/16 v1, 0x10d

    aput v2, v0, v1

    const/16 v1, 0x10f

    aput v2, v0, v1

    const/16 v1, 0x112

    .line 27
    aput v2, v0, v1

    const/16 v1, 0x113

    aput v2, v0, v1

    const/16 v1, 0x11d

    aput v2, v0, v1

    const/16 v1, 0x120

    .line 28
    aput v2, v0, v1

    const/16 v1, 0x121

    aput v2, v0, v1

    const/16 v1, 0x122

    aput v2, v0, v1

    const/16 v1, 0x124

    aput v2, v0, v1

    const/16 v1, 0x125

    aput v2, v0, v1

    const/16 v1, 0x126

    aput v2, v0, v1

    const/16 v1, 0x128

    aput v2, v0, v1

    const/16 v1, 0x129

    aput v2, v0, v1

    const/16 v1, 0x130

    .line 29
    aput v2, v0, v1

    const/16 v1, 0x131

    aput v2, v0, v1

    const/16 v1, 0x132

    aput v2, v0, v1

    const/16 v1, 0x133

    aput v2, v0, v1

    const/16 v1, 0x134

    aput v2, v0, v1

    const/16 v1, 0x135

    aput v2, v0, v1

    const/16 v1, 0x139

    aput v2, v0, v1

    const/16 v1, 0x140

    .line 30
    aput v2, v0, v1

    const/16 v1, 0x141

    aput v2, v0, v1

    const/16 v1, 0x147

    aput v2, v0, v1

    const/16 v1, 0x148

    aput v2, v0, v1

    const/16 v1, 0x149

    aput v2, v0, v1

    const/16 v1, 0x150

    .line 31
    aput v2, v0, v1

    const/16 v1, 0x151

    aput v2, v0, v1

    const/16 v1, 0x153

    aput v2, v0, v1

    const/16 v1, 0x154

    aput v2, v0, v1

    const/16 v1, 0x155

    aput v2, v0, v1

    const/16 v1, 0x157

    aput v2, v0, v1

    const/16 v1, 0x158

    aput v2, v0, v1

    const/16 v1, 0x159

    aput v2, v0, v1

    const/16 v1, 0x160

    .line 32
    aput v2, v0, v1

    const/16 v1, 0x163

    aput v2, v0, v1

    const/16 v1, 0x164

    aput v2, v0, v1

    const/16 v1, 0x165

    aput v2, v0, v1

    const/16 v1, 0x166

    aput v2, v0, v1

    const/16 v1, 0x167

    aput v2, v0, v1

    const/16 v1, 0x168

    aput v2, v0, v1

    const/16 v1, 0x169

    aput v2, v0, v1

    const/16 v1, 0x170

    .line 33
    aput v2, v0, v1

    const/16 v1, 0x171

    aput v2, v0, v1

    const/16 v1, 0x172

    aput v2, v0, v1

    const/16 v1, 0x173

    aput v2, v0, v1

    const/16 v1, 0x180

    .line 34
    aput v2, v0, v1

    const/16 v1, 0x181

    aput v2, v0, v1

    const/16 v1, 0x182

    aput v2, v0, v1

    const/16 v1, 0x183

    aput v2, v0, v1

    const/16 v1, 0x184

    aput v2, v0, v1

    const/16 v1, 0x185

    aput v2, v0, v1

    const/16 v1, 0x186

    aput v2, v0, v1

    const/16 v1, 0x187

    aput v2, v0, v1

    const/16 v1, 0x188

    aput v2, v0, v1

    const/16 v1, 0x189

    aput v2, v0, v1

    const/16 v1, 0x190

    .line 35
    aput v2, v0, v1

    const/16 v1, 0x191

    aput v2, v0, v1

    const/16 v1, 0x192

    aput v2, v0, v1

    const/16 v1, 0x193

    aput v2, v0, v1

    const/16 v1, 0x194

    aput v2, v0, v1

    const/16 v1, 0x197

    aput v2, v0, v1

    const/16 v1, 0x198

    aput v2, v0, v1

    const/16 v1, 0x199

    aput v2, v0, v1

    const/16 v1, 0x200

    .line 43
    aput v2, v0, v1

    const/16 v1, 0x201

    aput v2, v0, v1

    const/16 v1, 0x202

    aput v2, v0, v1

    const/16 v1, 0x204

    aput v2, v0, v1

    const/16 v1, 0x205

    aput v2, v0, v1

    const/16 v1, 0x206

    aput v2, v0, v1

    const/16 v1, 0x207

    aput v2, v0, v1

    const/16 v1, 0x209

    aput v2, v0, v1

    const/16 v1, 0x20d

    aput v2, v0, v1

    const/16 v1, 0x210

    .line 44
    aput v2, v0, v1

    const/16 v1, 0x211

    aput v2, v0, v1

    const/16 v1, 0x212

    aput v2, v0, v1

    const/16 v1, 0x213

    aput v2, v0, v1

    const/16 v1, 0x216

    aput v2, v0, v1

    const/16 v1, 0x217

    aput v2, v0, v1

    const/16 v1, 0x218

    aput v2, v0, v1

    const/16 v1, 0x219

    aput v2, v0, v1

    const/16 v1, 0x220

    .line 45
    aput v2, v0, v1

    const/16 v1, 0x221

    aput v2, v0, v1

    const/16 v1, 0x222

    aput v2, v0, v1

    const/16 v1, 0x223

    aput v2, v0, v1

    const/16 v1, 0x224

    aput v2, v0, v1

    const/16 v1, 0x225

    aput v2, v0, v1

    const/16 v1, 0x229

    aput v2, v0, v1

    const/16 v1, 0x22a

    aput v2, v0, v1

    const/16 v1, 0x22b

    aput v2, v0, v1

    const/16 v1, 0x230

    .line 46
    aput v2, v0, v1

    const/16 v1, 0x231

    aput v2, v0, v1

    const/16 v1, 0x234

    aput v2, v0, v1

    const/16 v1, 0x235

    aput v2, v0, v1

    const/16 v1, 0x236

    aput v2, v0, v1

    const/16 v1, 0x237

    aput v2, v0, v1

    const/16 v1, 0x240

    .line 47
    aput v2, v0, v1

    const/16 v1, 0x241

    aput v2, v0, v1

    const/16 v1, 0x242

    aput v2, v0, v1

    const/16 v1, 0x243

    aput v2, v0, v1

    const/16 v1, 0x244

    aput v2, v0, v1

    const/16 v1, 0x245

    aput v2, v0, v1

    const/16 v1, 0x24a

    aput v2, v0, v1

    const/16 v1, 0x24b

    aput v2, v0, v1

    const/16 v1, 0x250

    .line 48
    aput v2, v0, v1

    const/16 v1, 0x251

    aput v2, v0, v1

    const/16 v1, 0x254

    aput v2, v0, v1

    const/16 v1, 0x255

    aput v2, v0, v1

    const/16 v1, 0x256

    aput v2, v0, v1

    const/16 v1, 0x257

    aput v2, v0, v1

    const/16 v1, 0x258

    aput v2, v0, v1

    const/16 v1, 0x260

    .line 49
    aput v2, v0, v1

    const/16 v1, 0x261

    aput v2, v0, v1

    const/16 v1, 0x266

    aput v2, v0, v1

    const/16 v1, 0x267

    aput v2, v0, v1

    const/16 v1, 0x268

    aput v2, v0, v1

    const/16 v1, 0x270

    .line 50
    aput v2, v0, v1

    const/16 v1, 0x271

    aput v2, v0, v1

    const/16 v1, 0x273

    aput v2, v0, v1

    const/16 v1, 0x274

    aput v2, v0, v1

    const/16 v1, 0x275

    aput v2, v0, v1

    const/16 v1, 0x276

    aput v2, v0, v1

    const/16 v1, 0x277

    aput v2, v0, v1

    const/16 v1, 0x279

    aput v2, v0, v1

    const/16 v1, 0x282

    .line 51
    aput v2, v0, v1

    const/16 v1, 0x283

    aput v2, v0, v1

    const/16 v1, 0x286

    aput v2, v0, v1

    const/16 v1, 0x287

    aput v2, v0, v1

    const/16 v1, 0x288

    aput v2, v0, v1

    const/16 v1, 0x289

    aput v2, v0, v1

    const/16 v1, 0x290

    .line 52
    aput v2, v0, v1

    const/16 v1, 0x291

    aput v2, v0, v1

    const/16 v1, 0x294

    aput v2, v0, v1

    const/16 v1, 0x295

    aput v2, v0, v1

    const/16 v1, 0x29a

    aput v2, v0, v1

    const/16 v1, 0x29b

    aput v2, v0, v1

    const/16 v1, 0x2a2

    .line 53
    aput v2, v0, v1

    const/16 v1, 0x2a3

    aput v2, v0, v1

    const/16 v1, 0x2a4

    aput v2, v0, v1

    const/16 v1, 0x2a5

    aput v2, v0, v1

    const/16 v1, 0x2a6

    aput v2, v0, v1

    const/16 v1, 0x2b6

    .line 54
    aput v2, v0, v1

    const/16 v1, 0x2b7

    aput v2, v0, v1

    const/16 v1, 0x2b8

    aput v2, v0, v1

    const/16 v1, 0x2bd

    aput v2, v0, v1

    const/16 v1, 0x2be

    aput v2, v0, v1

    const/16 v1, 0x2c4

    .line 55
    aput v2, v0, v1

    const/16 v1, 0x2c5

    aput v2, v0, v1

    const/16 v1, 0x2c6

    aput v2, v0, v1

    const/16 v1, 0x2c7

    aput v2, v0, v1

    const/16 v1, 0x2d2

    .line 56
    aput v2, v0, v1

    const/16 v1, 0x2d3

    aput v2, v0, v1

    const/16 v1, 0x2d6

    aput v2, v0, v1

    const/16 v1, 0x2d7

    aput v2, v0, v1

    const/16 v1, 0x2dc

    aput v2, v0, v1

    const/16 v1, 0x2dd

    aput v2, v0, v1

    const/16 v1, 0x2e2

    .line 57
    aput v2, v0, v1

    const/16 v1, 0x2e3

    aput v2, v0, v1

    const/16 v1, 0x2e6

    aput v2, v0, v1

    const/16 v1, 0x2e7

    aput v2, v0, v1

    const/16 v1, 0x2ec

    aput v2, v0, v1

    const/16 v1, 0x2ee

    aput v2, v0, v1

    const/16 v1, 0x2f0

    .line 58
    aput v2, v0, v1

    const/16 v1, 0x2f1

    aput v2, v0, v1

    const/16 v1, 0x2f2

    aput v2, v0, v1

    const/16 v1, 0x2f3

    aput v2, v0, v1

    const/16 v1, 0x2f4

    aput v2, v0, v1

    const/16 v1, 0x2f5

    aput v2, v0, v1

    const/16 v1, 0x2f6

    aput v2, v0, v1

    const/16 v1, 0x2f7

    aput v2, v0, v1

    const/16 v1, 0x300

    .line 60
    aput v2, v0, v1

    const/16 v1, 0x301

    aput v2, v0, v1

    const/16 v1, 0x302

    aput v2, v0, v1

    const/16 v1, 0x306

    aput v2, v0, v1

    const/16 v1, 0x307

    aput v2, v0, v1

    const/16 v1, 0x308

    aput v2, v0, v1

    const/16 v1, 0x309

    aput v2, v0, v1

    const/16 v1, 0x310

    .line 61
    aput v2, v0, v1

    const/16 v1, 0x311

    aput v2, v0, v1

    const/16 v1, 0x312

    aput v2, v0, v1

    const/16 v1, 0x313

    aput v2, v0, v1

    const/16 v1, 0x314

    aput v2, v0, v1

    const/16 v1, 0x315

    aput v2, v0, v1

    const/16 v1, 0x316

    aput v2, v0, v1

    const/16 v1, 0x317

    aput v2, v0, v1

    const/16 v1, 0x31e

    aput v2, v0, v1

    const/16 v1, 0x320

    .line 62
    aput v2, v0, v1

    const/16 v1, 0x321

    aput v2, v0, v1

    const/16 v1, 0x322

    aput v2, v0, v1

    const/16 v1, 0x326

    aput v2, v0, v1

    const/16 v1, 0x327

    aput v2, v0, v1

    const/16 v1, 0x328

    aput v2, v0, v1

    const/16 v1, 0x329

    aput v2, v0, v1

    const/16 v1, 0x32e

    aput v2, v0, v1

    const/16 v1, 0x330

    .line 63
    aput v2, v0, v1

    const/16 v1, 0x331

    aput v2, v0, v1

    const/16 v1, 0x333

    aput v2, v0, v1

    const/16 v1, 0x334

    aput v2, v0, v1

    const/16 v1, 0x335

    aput v2, v0, v1

    const/16 v1, 0x337

    aput v2, v0, v1

    const/16 v1, 0x338

    aput v2, v0, v1

    const/16 v1, 0x339

    aput v2, v0, v1

    const/16 v1, 0x340

    .line 64
    aput v2, v0, v1

    const/16 v1, 0x341

    aput v2, v0, v1

    const/16 v1, 0x34a

    aput v2, v0, v1

    const/16 v1, 0x34b

    aput v2, v0, v1

    const/16 v1, 0x352

    .line 65
    aput v2, v0, v1

    const/16 v1, 0x353

    aput v2, v0, v1

    const/16 v1, 0x354

    aput v2, v0, v1

    const/16 v1, 0x355

    aput v2, v0, v1

    const/16 v1, 0x356

    aput v2, v0, v1

    const/16 v1, 0x357

    aput v2, v0, v1

    const/16 v1, 0x366

    .line 66
    aput v2, v0, v1

    const/16 v1, 0x367

    aput v2, v0, v1

    const/16 v1, 0x36d

    aput v2, v0, v1

    const/16 v1, 0x36f

    aput v2, v0, v1

    const/16 v1, 0x372

    .line 67
    aput v2, v0, v1

    const/16 v1, 0x373

    aput v2, v0, v1

    const/16 v1, 0x376

    aput v2, v0, v1

    const/16 v1, 0x377

    aput v2, v0, v1

    const/16 v1, 0x37e

    aput v2, v0, v1

    const/16 v1, 0x37f

    aput v2, v0, v1

    const/16 v1, 0x38c

    .line 68
    aput v2, v0, v1

    const/16 v1, 0x38d

    aput v2, v0, v1

    const/16 v1, 0x38e

    aput v2, v0, v1

    const/16 v1, 0x38f

    aput v2, v0, v1

    const/16 v1, 0x39b

    .line 69
    aput v2, v0, v1

    const/16 v1, 0x39c

    aput v2, v0, v1

    const/16 v1, 0x39d

    aput v2, v0, v1

    const/16 v1, 0x3a0

    .line 70
    aput v2, v0, v1

    const/16 v1, 0x3a1

    aput v2, v0, v1

    const/16 v1, 0x3a4

    aput v2, v0, v1

    const/16 v1, 0x3a5

    aput v2, v0, v1

    const/16 v1, 0x3ad

    aput v2, v0, v1

    const/16 v1, 0x3af

    aput v2, v0, v1

    iput-object v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mCharMap:[I

    .line 114
    iput v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    .line 115
    const/16 v0, 0x8

    iput v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    .line 116
    const/4 v0, 0x5

    iput v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    .line 117
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mOnColour:I

    .line 118
    const/16 v0, 0x40

    invoke-static {v0, v4, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    .line 119
    iput-boolean v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    .line 120
    iput-boolean v3, p0, Lcom/chartcross/view/MxSixteenSegment;->mGlow:Z

    .line 122
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    .line 123
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40e00000    # 7.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mButtonBlur:Landroid/graphics/MaskFilter;

    .line 124
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    .line 5
    return-void
.end method

.method private DrawSegment(Landroid/graphics/Canvas;IIIII)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "left"    # I
    .param p4, "bottom"    # I
    .param p5, "height"    # I
    .param p6, "colour"    # I

    .prologue
    .line 1024
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1025
    int-to-double v2, p5

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v0, v2

    .line 1026
    .local v0, "segwidth":I
    int-to-double v2, p5

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 1028
    .local v1, "width":I
    packed-switch p2, :pswitch_data_0

    .line 1032
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1033
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1034
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1035
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1036
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1037
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1038
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1252
    :goto_0
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1253
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1254
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1255
    iget v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mOnColour:I

    if-ne p6, v2, :cond_0

    iget-boolean v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mGlow:Z

    if-eqz v2, :cond_0

    .line 1257
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/chartcross/view/MxSixteenSegment;->mButtonBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1258
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1260
    :cond_0
    iget v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mOnColour:I

    if-ne p6, v2, :cond_1

    iget-boolean v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mGlow:Z

    if-eqz v2, :cond_1

    .line 1262
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1264
    :cond_1
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1265
    return-void

    .line 1052
    :pswitch_0
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1053
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1054
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1055
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1056
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1057
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1058
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1072
    :pswitch_1
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    int-to-float v3, v3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1073
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1074
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1075
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1076
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1077
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1078
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    int-to-float v3, v3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1082
    :pswitch_2
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1083
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1084
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x4

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1085
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1086
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1087
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1088
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1092
    :pswitch_3
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1093
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1094
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x4

    sub-int v4, p4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1095
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1096
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1097
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    sub-int v4, p4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1098
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1112
    :pswitch_4
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1113
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1114
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x2

    sub-int v4, p4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1115
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1116
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, p4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1117
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x4

    sub-int v4, p4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1118
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1132
    :pswitch_5
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1133
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1134
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-int/lit8 v4, v0, 0x4

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1135
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    int-to-float v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1136
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    int-to-float v3, p3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1137
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1138
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1142
    :pswitch_6
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1143
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1144
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1145
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    int-to-float v3, p3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1146
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    int-to-float v3, p3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1147
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x4

    add-int/2addr v3, p3

    int-to-float v3, v3

    sub-int v4, p4, p5

    div-int/lit8 v5, v0, 0x4

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1148
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1152
    :pswitch_7
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1153
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1154
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1155
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1156
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1157
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v0, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1158
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1162
    :pswitch_8
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1163
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1164
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1165
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1166
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1167
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1168
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1172
    :pswitch_9
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1173
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1174
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1175
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1176
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1177
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1178
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1192
    :pswitch_a
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1193
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1194
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1195
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1196
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1197
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1198
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1212
    :pswitch_b
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    div-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1213
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    div-int/lit8 v5, v0, 0x3

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1214
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1215
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x3

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1216
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    add-int/2addr v4, v0

    div-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1217
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1218
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    div-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1222
    :pswitch_c
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    div-int/lit8 v4, v0, 0x3

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1223
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    div-int/lit8 v5, v0, 0x3

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1224
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1225
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1226
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    add-int/2addr v4, v0

    div-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1227
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1228
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    div-int/lit8 v4, v0, 0x3

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, p5

    add-int/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1232
    :pswitch_d
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    div-int/lit8 v4, v0, 0x3

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1233
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    div-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1234
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1235
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1236
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    sub-int/2addr v4, v0

    div-int/lit8 v5, v0, 0x3

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1237
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1238
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v1

    sub-int/2addr v3, v0

    div-int/lit8 v4, v0, 0x3

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1242
    :pswitch_e
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    div-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1243
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    div-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1244
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1245
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v3, p3

    div-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v0, 0x3

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-int/lit8 v4, p5, 0x2

    sub-int v4, p4, v4

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1246
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    sub-int/2addr v4, v0

    div-int/lit8 v5, v0, 0x3

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1247
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1248
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-int v3, p3, v0

    div-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-int v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSixteenSegment;->mGap:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1028
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method public DrawColon(Landroid/graphics/Canvas;IIIII)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "digit"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "height"    # I

    .prologue
    .line 824
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chartcross/view/MxSixteenSegment;->mOnColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 825
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 827
    iget v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    div-int v1, p6, v2

    .line 829
    .local v1, "segwidth":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 830
    .local v0, "r":Landroid/graphics/Rect;
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 831
    div-int/lit8 v2, p6, 0x4

    sub-int v2, p5, v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 832
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 833
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 834
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 836
    mul-int/lit8 v2, p6, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int v2, p5, v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 837
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 838
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 851
    return-void
.end method

.method public DrawDigit(Landroid/graphics/Canvas;CIII)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "digit"    # C
    .param p3, "left"    # I
    .param p4, "bottom"    # I
    .param p5, "height"    # I

    .prologue
    .line 885
    const/16 v0, 0x20

    sub-int v0, p2, v0

    mul-int/lit8 v8, v0, 0x10

    .line 887
    .local v8, "offset":I
    if-ltz v8, :cond_4

    const/16 v0, 0x600

    if-ge v8, v0, :cond_4

    .line 889
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0x10

    if-lt v7, v0, :cond_1

    .line 1020
    .end local v7    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 891
    .restart local v7    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mCharMap:[I

    add-int v1, v8, v7

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 893
    add-int/lit8 v2, v7, 0x1

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOnColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 889
    :cond_2
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 897
    :cond_3
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    goto :goto_2

    .line 903
    .end local v7    # "i":I
    :cond_4
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 904
    :cond_5
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_6

    const/4 v2, 0x2

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 905
    :cond_6
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_7

    const/4 v2, 0x3

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 906
    :cond_7
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_8

    const/4 v2, 0x4

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 907
    :cond_8
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_9

    const/4 v2, 0x5

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 908
    :cond_9
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_a

    const/4 v2, 0x6

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 909
    :cond_a
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_b

    const/4 v2, 0x7

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 910
    :cond_b
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_c

    const/16 v2, 0x8

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 911
    :cond_c
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_d

    const/16 v2, 0x9

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 912
    :cond_d
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_e

    const/16 v2, 0xa

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 913
    :cond_e
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_f

    const/16 v2, 0xb

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 914
    :cond_f
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_10

    const/16 v2, 0xc

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 915
    :cond_10
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_11

    const/16 v2, 0xd

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 916
    :cond_11
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_12

    const/16 v2, 0xe

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 917
    :cond_12
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_13

    const/16 v2, 0xf

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    .line 918
    :cond_13
    iget-boolean v0, p0, Lcom/chartcross/view/MxSixteenSegment;->mShowOff:Z

    if-eqz v0, :cond_0

    const/16 v2, 0x10

    iget v6, p0, Lcom/chartcross/view/MxSixteenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSixteenSegment;->DrawSegment(Landroid/graphics/Canvas;IIIII)V

    goto/16 :goto_1
.end method

.method public DrawMinus(Landroid/graphics/Canvas;IIIII)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "digit"    # I
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "height"    # I

    .prologue
    .line 855
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chartcross/view/MxSixteenSegment;->mOnColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 856
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 858
    iget v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    div-int v1, p6, v2

    .line 860
    .local v1, "segwidth":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 861
    .local v0, "r":Landroid/graphics/Rect;
    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 862
    div-int/lit8 v2, p6, 0x2

    sub-int v2, p5, v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 863
    iget v2, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 864
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 865
    iget-object v2, p0, Lcom/chartcross/view/MxSixteenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 882
    return-void
.end method

.method public DrawNumber(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;III)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Number"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "Alignment"    # I
    .param p5, "MinDigits"    # I
    .param p6, "MinHeight"    # I

    .prologue
    .line 438
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v10

    .line 439
    .local v10, "DigitCount":I
    move v0, v10

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    .line 441
    move/from16 v10, p5

    .line 444
    :cond_0
    const/16 v17, 0x0

    .line 445
    .local v17, "TDigitCount":I
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v21

    move v1, v2

    if-lt v0, v1, :cond_2

    .line 457
    sub-int v12, v10, v17

    .line 459
    .local v12, "LDigitCount":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    sub-int v8, v2, v3

    .line 460
    .local v8, "BoundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    sub-int v9, v2, v3

    .line 462
    .local v9, "BoundsWidth":I
    move v7, v8

    .line 463
    .local v7, "TextHeight":I
    int-to-double v2, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v4, v0

    int-to-double v4, v4

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v11, v2

    .line 464
    .local v11, "DigitWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v2, v0

    div-int v2, v7, v2

    mul-int/lit8 v18, v2, 0x3

    .line 465
    .local v18, "TDigitWidth":I
    mul-int v20, v11, v12

    .line 466
    .local v20, "TextWidth":I
    mul-int v19, v18, v17

    .line 468
    .local v19, "TTextWidth":I
    int-to-double v2, v9

    add-int v4, v20, v19

    int-to-double v4, v4

    div-double v15, v2, v4

    .line 469
    .local v15, "SizeRatio":D
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, v15, v2

    if-gez v2, :cond_1

    .line 471
    int-to-double v2, v11

    mul-double/2addr v2, v15

    double-to-int v11, v2

    .line 472
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v2, v0

    mul-double/2addr v2, v15

    move-wide v0, v2

    double-to-int v0, v0

    move/from16 v18, v0

    .line 473
    int-to-double v2, v11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v14, v2

    .line 474
    .local v14, "SegWidth":I
    sub-int v2, v11, v14

    int-to-double v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    move v4, v0

    int-to-double v4, v4

    div-double/2addr v2, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v4, v0

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v7, v2

    .line 480
    .end local v14    # "SegWidth":I
    :cond_1
    mul-int v2, v11, v12

    int-to-double v3, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v5, v0

    int-to-double v5, v5

    div-double/2addr v3, v5

    double-to-int v3, v3

    sub-int v20, v2, v3

    .line 481
    mul-int v19, v18, v17

    .line 483
    add-int v20, v20, v19

    .line 524
    packed-switch p4, :pswitch_data_0

    .line 528
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    .line 529
    .local v5, "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    .line 573
    .local v6, "TextBottom":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v13, v10, v2

    .line 574
    .local v13, "PadCount":I
    const/16 v22, 0x0

    .local v22, "j":I
    :goto_2
    move/from16 v0, v22

    move v1, v13

    if-lt v0, v1, :cond_5

    .line 580
    const/16 v21, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v21

    move v1, v2

    if-lt v0, v1, :cond_6

    .line 658
    return-void

    .line 447
    .end local v5    # "TextLeft":I
    .end local v6    # "TextBottom":I
    .end local v7    # "TextHeight":I
    .end local v8    # "BoundsHeight":I
    .end local v9    # "BoundsWidth":I
    .end local v11    # "DigitWidth":I
    .end local v12    # "LDigitCount":I
    .end local v13    # "PadCount":I
    .end local v15    # "SizeRatio":D
    .end local v18    # "TDigitWidth":I
    .end local v19    # "TTextWidth":I
    .end local v20    # "TextWidth":I
    .end local v22    # "j":I
    :cond_2
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 448
    .local v4, "Digit":C
    const/16 v2, 0x3a

    if-ne v4, v2, :cond_3

    .line 450
    add-int/lit8 v17, v17, 0x1

    .line 452
    :cond_3
    const/16 v2, 0x2d

    if-ne v4, v2, :cond_4

    .line 454
    add-int/lit8 v17, v17, 0x1

    .line 445
    :cond_4
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 533
    .end local v4    # "Digit":C
    .restart local v7    # "TextHeight":I
    .restart local v8    # "BoundsHeight":I
    .restart local v9    # "BoundsWidth":I
    .restart local v11    # "DigitWidth":I
    .restart local v12    # "LDigitCount":I
    .restart local v15    # "SizeRatio":D
    .restart local v18    # "TDigitWidth":I
    .restart local v19    # "TTextWidth":I
    .restart local v20    # "TextWidth":I
    :pswitch_0
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    .line 534
    .restart local v5    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    div-int/lit8 v3, v8, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, v7, 0x2

    add-int v6, v2, v3

    .line 535
    .restart local v6    # "TextBottom":I
    goto :goto_1

    .line 538
    .end local v5    # "TextLeft":I
    .end local v6    # "TextBottom":I
    :pswitch_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    .line 539
    .restart local v5    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v2, v0

    add-int v6, v2, v7

    .line 540
    .restart local v6    # "TextBottom":I
    goto :goto_1

    .line 543
    .end local v5    # "TextLeft":I
    .end local v6    # "TextBottom":I
    :pswitch_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    div-int/lit8 v3, v9, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v20, 0x2

    sub-int v5, v2, v3

    .line 544
    .restart local v5    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    .line 545
    .restart local v6    # "TextBottom":I
    goto :goto_1

    .line 548
    .end local v5    # "TextLeft":I
    .end local v6    # "TextBottom":I
    :pswitch_3
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    div-int/lit8 v3, v9, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v20, 0x2

    sub-int v5, v2, v3

    .line 549
    .restart local v5    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    div-int/lit8 v3, v8, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, v7, 0x2

    add-int v6, v2, v3

    .line 550
    .restart local v6    # "TextBottom":I
    goto :goto_1

    .line 553
    .end local v5    # "TextLeft":I
    .end local v6    # "TextBottom":I
    :pswitch_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    div-int/lit8 v3, v9, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v20, 0x2

    sub-int v5, v2, v3

    .line 554
    .restart local v5    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v2, v0

    add-int v6, v2, v7

    .line 555
    .restart local v6    # "TextBottom":I
    goto/16 :goto_1

    .line 558
    .end local v5    # "TextLeft":I
    .end local v6    # "TextBottom":I
    :pswitch_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    sub-int v5, v2, v20

    .line 559
    .restart local v5    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    .line 560
    .restart local v6    # "TextBottom":I
    goto/16 :goto_1

    .line 563
    .end local v5    # "TextLeft":I
    .end local v6    # "TextBottom":I
    :pswitch_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    sub-int v5, v2, v20

    .line 564
    .restart local v5    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    div-int/lit8 v3, v8, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, v7, 0x2

    add-int v6, v2, v3

    .line 565
    .restart local v6    # "TextBottom":I
    goto/16 :goto_1

    .line 568
    .end local v5    # "TextLeft":I
    .end local v6    # "TextBottom":I
    :pswitch_7
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    sub-int v5, v2, v20

    .line 569
    .restart local v5    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v2, v0

    add-int v6, v2, v7

    .restart local v6    # "TextBottom":I
    goto/16 :goto_1

    .line 576
    .restart local v13    # "PadCount":I
    .restart local v22    # "j":I
    :cond_5
    const/16 v4, 0x7e

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/chartcross/view/MxSixteenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 577
    add-int/2addr v5, v11

    .line 574
    add-int/lit8 v22, v22, 0x1

    goto/16 :goto_2

    .line 594
    :cond_6
    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .restart local v4    # "Digit":C
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 595
    invoke-virtual/range {v2 .. v7}, Lcom/chartcross/view/MxSixteenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 596
    add-int/2addr v5, v11

    .line 580
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_3

    .line 524
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public DrawNumber(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIIIDIZ)V
    .locals 35
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Number"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "LAlignment"    # I
    .param p5, "RAlignment"    # I
    .param p6, "MinDigits"    # I
    .param p7, "RDigits"    # I
    .param p8, "SmallSizeRatio"    # D
    .param p10, "MinHeight"    # I
    .param p11, "HideSmall"    # Z

    .prologue
    .line 136
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v17

    .line 137
    .local v17, "DigitCount":I
    const/4 v3, 0x0

    sub-int v4, v17, p7

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    .line 138
    .local v22, "NumberL":Ljava/lang/String;
    sub-int v3, v17, p7

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 140
    .local v23, "NumberR":Ljava/lang/String;
    move/from16 v0, v17

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 142
    move/from16 v17, p6

    .line 145
    :cond_0
    const/16 v30, 0x0

    .line 146
    .local v30, "TDigitCount":I
    const/16 v33, 0x0

    .local v33, "i":I
    :goto_0
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v33

    move v1, v3

    if-lt v0, v1, :cond_3

    .line 158
    sub-int v3, v17, v30

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v4

    sub-int v18, v3, v4

    .line 160
    .local v18, "LDigitCount":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    sub-int v15, v3, v4

    .line 161
    .local v15, "BoundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    sub-int v16, v3, v4

    .line 163
    .local v16, "BoundsWidth":I
    move v8, v15

    .line 164
    .local v8, "LTextHeight":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v3, v0

    div-int v3, v8, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    mul-int v19, v3, v4

    .line 165
    .local v19, "LDigitWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v3, v0

    div-int v3, v8, v3

    mul-int/lit8 v31, v3, 0x3

    .line 166
    .local v31, "TDigitWidth":I
    mul-int v21, v19, v18

    .line 167
    .local v21, "LTextWidth":I
    mul-int v32, v31, v30

    .line 168
    .local v32, "TTextWidth":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v3, v0

    mul-double v3, v3, p8

    move-wide v0, v3

    double-to-int v0, v0

    move/from16 v25, v0

    .line 169
    .local v25, "RDigitWidth":I
    int-to-double v3, v8

    mul-double v3, v3, p8

    double-to-int v14, v3

    .line 170
    .local v14, "RTextHeight":I
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    mul-int v3, v3, v25

    int-to-double v4, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v6, v0

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v27, v3, v4

    .line 172
    .local v27, "RTextWidth":I
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide v3, v0

    add-int v5, v21, v27

    add-int v5, v5, v32

    int-to-double v5, v5

    div-double v28, v3, v5

    .line 173
    .local v28, "SizeRatio":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v3, v28, v3

    if-gez v3, :cond_1

    .line 175
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v3, v0

    mul-double v3, v3, v28

    move-wide v0, v3

    double-to-int v0, v0

    move/from16 v19, v0

    .line 176
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v3, v0

    mul-double v3, v3, v28

    move-wide v0, v3

    double-to-int v0, v0

    move/from16 v25, v0

    .line 177
    move/from16 v0, v31

    int-to-double v0, v0

    move-wide v3, v0

    mul-double v3, v3, v28

    move-wide v0, v3

    double-to-int v0, v0

    move/from16 v31, v0

    .line 178
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    move-wide v0, v3

    double-to-int v0, v0

    move/from16 v20, v0

    .line 179
    .local v20, "LSegWidth":I
    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    div-double/2addr v3, v5

    move-wide v0, v3

    double-to-int v0, v0

    move/from16 v26, v0

    .line 180
    .local v26, "RSegWidth":I
    sub-int v3, v19, v20

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    move v5, v0

    int-to-double v5, v5

    div-double/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v5, v0

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v8, v3

    .line 181
    sub-int v3, v25, v26

    int-to-double v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegMultiplier:I

    move v5, v0

    int-to-double v5, v5

    div-double/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v5, v0

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-int v14, v3

    .line 184
    .end local v20    # "LSegWidth":I
    .end local v26    # "RSegWidth":I
    :cond_1
    mul-int v21, v19, v18

    .line 185
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    mul-int v3, v3, v25

    int-to-double v4, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSixteenSegment;->mSegRatio:I

    move v6, v0

    int-to-double v6, v6

    div-double/2addr v4, v6

    double-to-int v4, v4

    sub-int v27, v3, v4

    .line 186
    mul-int v32, v31, v30

    .line 220
    packed-switch p4, :pswitch_data_0

    .line 224
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    .line 225
    .local v6, "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    .line 269
    .local v7, "TextBottom":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v24, v17, v3

    .line 270
    .local v24, "PadCount":I
    const/16 v34, 0x0

    .local v34, "j":I
    :goto_2
    move/from16 v0, v34

    move/from16 v1, v24

    if-lt v0, v1, :cond_6

    .line 276
    const/16 v33, 0x0

    :goto_3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v33

    move v1, v3

    if-lt v0, v1, :cond_7

    .line 346
    packed-switch p5, :pswitch_data_1

    .line 367
    :goto_4
    :pswitch_0
    if-nez p11, :cond_2

    .line 369
    const/16 v33, 0x0

    :goto_5
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v33

    move v1, v3

    if-lt v0, v1, :cond_8

    .line 426
    :cond_2
    return-void

    .line 148
    .end local v6    # "TextLeft":I
    .end local v7    # "TextBottom":I
    .end local v8    # "LTextHeight":I
    .end local v14    # "RTextHeight":I
    .end local v15    # "BoundsHeight":I
    .end local v16    # "BoundsWidth":I
    .end local v18    # "LDigitCount":I
    .end local v19    # "LDigitWidth":I
    .end local v21    # "LTextWidth":I
    .end local v24    # "PadCount":I
    .end local v25    # "RDigitWidth":I
    .end local v27    # "RTextWidth":I
    .end local v28    # "SizeRatio":D
    .end local v31    # "TDigitWidth":I
    .end local v32    # "TTextWidth":I
    .end local v34    # "j":I
    :cond_3
    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 149
    .local v5, "Digit":C
    const/16 v3, 0x3a

    if-ne v5, v3, :cond_4

    .line 151
    add-int/lit8 v30, v30, 0x1

    .line 153
    :cond_4
    const/16 v3, 0x2d

    if-ne v5, v3, :cond_5

    .line 155
    add-int/lit8 v30, v30, 0x1

    .line 146
    :cond_5
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_0

    .line 229
    .end local v5    # "Digit":C
    .restart local v8    # "LTextHeight":I
    .restart local v14    # "RTextHeight":I
    .restart local v15    # "BoundsHeight":I
    .restart local v16    # "BoundsWidth":I
    .restart local v18    # "LDigitCount":I
    .restart local v19    # "LDigitWidth":I
    .restart local v21    # "LTextWidth":I
    .restart local v25    # "RDigitWidth":I
    .restart local v27    # "RTextWidth":I
    .restart local v28    # "SizeRatio":D
    .restart local v31    # "TDigitWidth":I
    .restart local v32    # "TTextWidth":I
    :pswitch_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    .line 230
    .restart local v6    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    div-int/lit8 v4, v15, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v8, 0x2

    add-int v7, v3, v4

    .line 231
    .restart local v7    # "TextBottom":I
    goto :goto_1

    .line 234
    .end local v6    # "TextLeft":I
    .end local v7    # "TextBottom":I
    :pswitch_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    .line 235
    .restart local v6    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    add-int v7, v3, v8

    .line 236
    .restart local v7    # "TextBottom":I
    goto :goto_1

    .line 239
    .end local v6    # "TextLeft":I
    .end local v7    # "TextBottom":I
    :pswitch_3
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    div-int/lit8 v4, v16, 0x2

    add-int/2addr v3, v4

    add-int v4, v21, v27

    add-int v4, v4, v32

    div-int/lit8 v4, v4, 0x2

    sub-int v6, v3, v4

    .line 240
    .restart local v6    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    .line 241
    .restart local v7    # "TextBottom":I
    goto :goto_1

    .line 244
    .end local v6    # "TextLeft":I
    .end local v7    # "TextBottom":I
    :pswitch_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    div-int/lit8 v4, v16, 0x2

    add-int/2addr v3, v4

    add-int v4, v21, v27

    add-int v4, v4, v32

    div-int/lit8 v4, v4, 0x2

    sub-int v6, v3, v4

    .line 245
    .restart local v6    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    div-int/lit8 v4, v15, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v8, 0x2

    add-int v7, v3, v4

    .line 246
    .restart local v7    # "TextBottom":I
    goto/16 :goto_1

    .line 249
    .end local v6    # "TextLeft":I
    .end local v7    # "TextBottom":I
    :pswitch_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    div-int/lit8 v4, v16, 0x2

    add-int/2addr v3, v4

    add-int v4, v21, v27

    add-int v4, v4, v32

    div-int/lit8 v4, v4, 0x2

    sub-int v6, v3, v4

    .line 250
    .restart local v6    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    add-int v7, v3, v8

    .line 251
    .restart local v7    # "TextBottom":I
    goto/16 :goto_1

    .line 254
    .end local v6    # "TextLeft":I
    .end local v7    # "TextBottom":I
    :pswitch_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    add-int v4, v21, v27

    sub-int v6, v3, v4

    .line 255
    .restart local v6    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v7, v0

    .line 256
    .restart local v7    # "TextBottom":I
    goto/16 :goto_1

    .line 259
    .end local v6    # "TextLeft":I
    .end local v7    # "TextBottom":I
    :pswitch_7
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    add-int v4, v21, v27

    sub-int v6, v3, v4

    .line 260
    .restart local v6    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    div-int/lit8 v4, v15, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, v8, 0x2

    add-int v7, v3, v4

    .line 261
    .restart local v7    # "TextBottom":I
    goto/16 :goto_1

    .line 264
    .end local v6    # "TextLeft":I
    .end local v7    # "TextBottom":I
    :pswitch_8
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    add-int v4, v21, v27

    add-int v4, v4, v32

    sub-int v6, v3, v4

    .line 265
    .restart local v6    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    add-int v7, v3, v8

    .restart local v7    # "TextBottom":I
    goto/16 :goto_1

    .line 272
    .restart local v24    # "PadCount":I
    .restart local v34    # "j":I
    :cond_6
    const/16 v5, 0x7e

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/chartcross/view/MxSixteenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 273
    add-int v6, v6, v19

    .line 270
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_2

    .line 278
    :cond_7
    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .restart local v5    # "Digit":C
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 279
    invoke-virtual/range {v3 .. v8}, Lcom/chartcross/view/MxSixteenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 280
    add-int v6, v6, v19

    .line 276
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_3

    .line 351
    .end local v5    # "Digit":C
    :pswitch_9
    sub-int v3, v8, v14

    sub-int/2addr v7, v3

    .line 352
    goto/16 :goto_4

    .line 357
    :pswitch_a
    div-int/lit8 v3, v8, 0x2

    div-int/lit8 v4, v14, 0x2

    sub-int/2addr v3, v4

    sub-int/2addr v7, v3

    .line 358
    goto/16 :goto_4

    .line 371
    :cond_8
    move-object/from16 v0, v23

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .restart local v5    # "Digit":C
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move v11, v5

    move v12, v6

    move v13, v7

    .line 372
    invoke-virtual/range {v9 .. v14}, Lcom/chartcross/view/MxSixteenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 373
    add-int v6, v6, v25

    .line 369
    add-int/lit8 v33, v33, 0x1

    goto/16 :goto_5

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 346
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
