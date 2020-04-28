.class public Lcom/chartcross/view/MxSevenSegment;
.super Ljava/lang/Object;
.source "MxSevenSegment.java"


# static fields
.field public static mCharMap:[I


# instance fields
.field private mButtonBlur:Landroid/graphics/MaskFilter;

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
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 8
    const/16 v0, 0xc60

    new-array v0, v0, [I

    const/16 v1, 0x210

    .line 26
    aput v2, v0, v1

    const/16 v1, 0x211

    aput v2, v0, v1

    const/16 v1, 0x212

    aput v2, v0, v1

    const/16 v1, 0x213

    aput v2, v0, v1

    const/16 v1, 0x214

    aput v2, v0, v1

    const/16 v1, 0x215

    aput v2, v0, v1

    const/16 v1, 0x232

    .line 27
    aput v2, v0, v1

    const/16 v1, 0x233

    aput v2, v0, v1

    const/16 v1, 0x252

    .line 28
    aput v2, v0, v1

    const/16 v1, 0x253

    aput v2, v0, v1

    const/16 v1, 0x255

    aput v2, v0, v1

    const/16 v1, 0x256

    aput v2, v0, v1

    const/16 v1, 0x258

    aput v2, v0, v1

    const/16 v1, 0x273

    .line 29
    aput v2, v0, v1

    const/16 v1, 0x274

    aput v2, v0, v1

    const/16 v1, 0x275

    aput v2, v0, v1

    const/16 v1, 0x276

    aput v2, v0, v1

    const/16 v1, 0x279

    aput v2, v0, v1

    const/16 v1, 0x295

    .line 30
    aput v2, v0, v1

    const/16 v1, 0x296

    aput v2, v0, v1

    const/16 v1, 0x299

    aput v2, v0, v1

    const/16 v1, 0x29a

    aput v2, v0, v1

    const/16 v1, 0x2b5

    .line 31
    aput v2, v0, v1

    const/16 v1, 0x2b7

    aput v2, v0, v1

    const/16 v1, 0x2b8

    aput v2, v0, v1

    const/16 v1, 0x2ba

    aput v2, v0, v1

    const/16 v1, 0x2bb

    aput v2, v0, v1

    const/16 v1, 0x2d6

    .line 32
    aput v2, v0, v1

    const/16 v1, 0x2d8

    aput v2, v0, v1

    const/16 v1, 0x2d9

    aput v2, v0, v1

    const/16 v1, 0x2da

    aput v2, v0, v1

    const/16 v1, 0x2db

    aput v2, v0, v1

    const/16 v1, 0x2dc

    aput v2, v0, v1

    const/16 v1, 0x2f7

    .line 33
    aput v2, v0, v1

    const/16 v1, 0x2f8

    aput v2, v0, v1

    const/16 v1, 0x2f9

    aput v2, v0, v1

    const/16 v1, 0x318

    .line 34
    aput v2, v0, v1

    const/16 v1, 0x319

    aput v2, v0, v1

    const/16 v1, 0x31a

    aput v2, v0, v1

    const/16 v1, 0x31b

    aput v2, v0, v1

    const/16 v1, 0x31c

    aput v2, v0, v1

    const/16 v1, 0x31d

    aput v2, v0, v1

    const/16 v1, 0x31e

    aput v2, v0, v1

    const/16 v1, 0x339

    .line 35
    aput v2, v0, v1

    const/16 v1, 0x33a

    aput v2, v0, v1

    const/16 v1, 0x33b

    aput v2, v0, v1

    const/16 v1, 0x33c

    aput v2, v0, v1

    const/16 v1, 0x33e

    aput v2, v0, v1

    const/16 v1, 0x33f

    aput v2, v0, v1

    const/16 v1, 0x441

    .line 44
    aput v2, v0, v1

    const/16 v1, 0x442

    aput v2, v0, v1

    const/16 v1, 0x443

    aput v2, v0, v1

    const/16 v1, 0x445

    aput v2, v0, v1

    const/16 v1, 0x446

    aput v2, v0, v1

    const/16 v1, 0x447

    aput v2, v0, v1

    const/16 v1, 0x468

    .line 45
    aput v2, v0, v1

    const/16 v1, 0x46f

    aput v2, v0, v1

    const/16 v1, 0x470

    aput v2, v0, v1

    const/16 v1, 0x471

    aput v2, v0, v1

    const/16 v1, 0x472

    aput v2, v0, v1

    const/16 v1, 0x476

    aput v2, v0, v1

    const/16 v1, 0x477

    aput v2, v0, v1

    const/16 v1, 0x483

    .line 46
    aput v2, v0, v1

    const/16 v1, 0x486

    aput v2, v0, v1

    const/16 v1, 0x487

    aput v2, v0, v1

    const/16 v1, 0x488

    aput v2, v0, v1

    const/16 v1, 0x4b1

    .line 47
    aput v2, v0, v1

    const/16 v1, 0x4b2

    aput v2, v0, v1

    const/16 v1, 0x4b3

    aput v2, v0, v1

    const/16 v1, 0x4b4

    aput v2, v0, v1

    const/16 v1, 0x4b8

    aput v2, v0, v1

    const/16 v1, 0x4b9

    aput v2, v0, v1

    const/16 v1, 0x4c5

    .line 48
    aput v2, v0, v1

    const/16 v1, 0x4c8

    aput v2, v0, v1

    const/16 v1, 0x4c9

    aput v2, v0, v1

    const/16 v1, 0x4ca

    aput v2, v0, v1

    const/16 v1, 0x4dc

    aput v2, v0, v1

    const/16 v1, 0x4e6

    .line 49
    aput v2, v0, v1

    const/16 v1, 0x4ea

    aput v2, v0, v1

    const/16 v1, 0x4eb

    aput v2, v0, v1

    const/16 v1, 0x4ec

    aput v2, v0, v1

    const/16 v1, 0x507

    .line 50
    aput v2, v0, v1

    const/16 v1, 0x509

    aput v2, v0, v1

    const/16 v1, 0x50a

    aput v2, v0, v1

    const/16 v1, 0x50b

    aput v2, v0, v1

    const/16 v1, 0x50c

    aput v2, v0, v1

    const/16 v1, 0x50f

    aput v2, v0, v1

    const/16 v1, 0x529

    .line 51
    aput v2, v0, v1

    const/16 v1, 0x52a

    aput v2, v0, v1

    const/16 v1, 0x52c

    aput v2, v0, v1

    const/16 v1, 0x52d

    aput v2, v0, v1

    const/16 v1, 0x52e

    aput v2, v0, v1

    const/16 v1, 0x552

    .line 52
    aput v2, v0, v1

    const/16 v1, 0x553

    aput v2, v0, v1

    const/16 v1, 0x56b

    .line 53
    aput v2, v0, v1

    const/16 v1, 0x56c

    aput v2, v0, v1

    const/16 v1, 0x56d

    aput v2, v0, v1

    const/16 v1, 0x56e

    aput v2, v0, v1

    const/16 v1, 0x58d

    .line 54
    aput v2, v0, v1

    const/16 v1, 0x58f

    aput v2, v0, v1

    const/16 v1, 0x590

    aput v2, v0, v1

    const/16 v1, 0x591

    aput v2, v0, v1

    const/16 v1, 0x59c

    aput v2, v0, v1

    const/16 v1, 0x5af

    .line 55
    aput v2, v0, v1

    const/16 v1, 0x5b0

    aput v2, v0, v1

    const/16 v1, 0x5b1

    aput v2, v0, v1

    const/16 v1, 0x5cd

    .line 56
    aput v2, v0, v1

    const/16 v1, 0x5ce

    aput v2, v0, v1

    const/16 v1, 0x5cf

    aput v2, v0, v1

    const/16 v1, 0x5d1

    aput v2, v0, v1

    const/16 v1, 0x5d2

    aput v2, v0, v1

    const/16 v1, 0x5d8

    aput v2, v0, v1

    const/16 v1, 0x5ef

    .line 57
    aput v2, v0, v1

    const/16 v1, 0x5f0

    aput v2, v0, v1

    const/16 v1, 0x5f2

    aput v2, v0, v1

    const/16 v1, 0x5f3

    aput v2, v0, v1

    const/16 v1, 0x604

    aput v2, v0, v1

    const/16 v1, 0x60f

    .line 58
    aput v2, v0, v1

    const/16 v1, 0x610

    aput v2, v0, v1

    const/16 v1, 0x611

    aput v2, v0, v1

    const/16 v1, 0x612

    aput v2, v0, v1

    const/16 v1, 0x613

    aput v2, v0, v1

    const/16 v1, 0x614

    aput v2, v0, v1

    const/16 v1, 0x630

    .line 60
    aput v2, v0, v1

    const/16 v1, 0x631

    aput v2, v0, v1

    const/16 v1, 0x634

    aput v2, v0, v1

    const/16 v1, 0x635

    aput v2, v0, v1

    const/16 v1, 0x636

    aput v2, v0, v1

    const/16 v1, 0x651

    .line 61
    aput v2, v0, v1

    const/16 v1, 0x652

    aput v2, v0, v1

    const/16 v1, 0x653

    aput v2, v0, v1

    const/16 v1, 0x654

    aput v2, v0, v1

    const/16 v1, 0x655

    aput v2, v0, v1

    const/16 v1, 0x656

    aput v2, v0, v1

    const/16 v1, 0x663

    aput v2, v0, v1

    const/16 v1, 0x672

    .line 62
    aput v2, v0, v1

    const/16 v1, 0x673

    aput v2, v0, v1

    const/16 v1, 0x676

    aput v2, v0, v1

    const/16 v1, 0x677

    aput v2, v0, v1

    const/16 v1, 0x678

    aput v2, v0, v1

    const/16 v1, 0x685

    aput v2, v0, v1

    const/16 v1, 0x693

    .line 63
    aput v2, v0, v1

    const/16 v1, 0x695

    aput v2, v0, v1

    const/16 v1, 0x696

    aput v2, v0, v1

    const/16 v1, 0x698

    aput v2, v0, v1

    const/16 v1, 0x699

    aput v2, v0, v1

    const/16 v1, 0x6b4

    .line 64
    aput v2, v0, v1

    const/16 v1, 0x6be

    aput v2, v0, v1

    const/16 v1, 0x6bf

    aput v2, v0, v1

    const/16 v1, 0x6d6

    .line 65
    aput v2, v0, v1

    const/16 v1, 0x6d7

    aput v2, v0, v1

    const/16 v1, 0x6d8

    aput v2, v0, v1

    const/16 v1, 0x6d9

    aput v2, v0, v1

    const/16 v1, 0x6da

    aput v2, v0, v1

    const/16 v1, 0x6f7

    .line 66
    aput v2, v0, v1

    const/16 v1, 0x6fb

    aput v2, v0, v1

    const/16 v1, 0x711

    aput v2, v0, v1

    const/16 v1, 0x712

    aput v2, v0, v1

    const/16 v1, 0x718

    .line 67
    aput v2, v0, v1

    const/16 v1, 0x719

    aput v2, v0, v1

    const/16 v1, 0x71a

    aput v2, v0, v1

    const/16 v1, 0x71b

    aput v2, v0, v1

    const/16 v1, 0x71c

    aput v2, v0, v1

    const/16 v1, 0x723

    aput v2, v0, v1

    const/16 v1, 0x755

    .line 68
    aput v2, v0, v1

    const/16 v1, 0x756

    aput v2, v0, v1

    const/16 v1, 0x757

    aput v2, v0, v1

    const/16 v1, 0x758

    aput v2, v0, v1

    const/16 v1, 0x75a

    .line 69
    aput v2, v0, v1

    const/16 v1, 0x75b

    aput v2, v0, v1

    const/16 v1, 0x75c

    aput v2, v0, v1

    const/16 v1, 0x75e

    aput v2, v0, v1

    const/16 v1, 0x75f

    aput v2, v0, v1

    const/16 v1, 0x792

    .line 70
    aput v2, v0, v1

    const/16 v1, 0x793

    aput v2, v0, v1

    const/16 v1, 0x794

    aput v2, v0, v1

    const/16 v1, 0x861

    .line 78
    aput v2, v0, v1

    const/16 v1, 0x862

    aput v2, v0, v1

    const/16 v1, 0x863

    aput v2, v0, v1

    const/16 v1, 0x865

    aput v2, v0, v1

    const/16 v1, 0x866

    aput v2, v0, v1

    const/16 v1, 0x867

    aput v2, v0, v1

    const/16 v1, 0x888

    .line 79
    aput v2, v0, v1

    const/16 v1, 0x88f

    aput v2, v0, v1

    const/16 v1, 0x890

    aput v2, v0, v1

    const/16 v1, 0x891

    aput v2, v0, v1

    const/16 v1, 0x892

    aput v2, v0, v1

    const/16 v1, 0x896

    aput v2, v0, v1

    const/16 v1, 0x897

    aput v2, v0, v1

    const/16 v1, 0x8a3

    .line 80
    aput v2, v0, v1

    const/16 v1, 0x8a6

    aput v2, v0, v1

    const/16 v1, 0x8a7

    aput v2, v0, v1

    const/16 v1, 0x8a8

    aput v2, v0, v1

    const/16 v1, 0x8d1

    .line 81
    aput v2, v0, v1

    const/16 v1, 0x8d2

    aput v2, v0, v1

    const/16 v1, 0x8d3

    aput v2, v0, v1

    const/16 v1, 0x8d4

    aput v2, v0, v1

    const/16 v1, 0x8d8

    aput v2, v0, v1

    const/16 v1, 0x8d9

    aput v2, v0, v1

    const/16 v1, 0x8e5

    .line 82
    aput v2, v0, v1

    const/16 v1, 0x8e8

    aput v2, v0, v1

    const/16 v1, 0x8e9

    aput v2, v0, v1

    const/16 v1, 0x8ea

    aput v2, v0, v1

    const/16 v1, 0x8fc

    aput v2, v0, v1

    const/16 v1, 0x906

    .line 83
    aput v2, v0, v1

    const/16 v1, 0x90a

    aput v2, v0, v1

    const/16 v1, 0x90b

    aput v2, v0, v1

    const/16 v1, 0x90c

    aput v2, v0, v1

    const/16 v1, 0x927

    .line 84
    aput v2, v0, v1

    const/16 v1, 0x929

    aput v2, v0, v1

    const/16 v1, 0x92a

    aput v2, v0, v1

    const/16 v1, 0x92b

    aput v2, v0, v1

    const/16 v1, 0x92c

    aput v2, v0, v1

    const/16 v1, 0x92f

    aput v2, v0, v1

    const/16 v1, 0x949

    .line 85
    aput v2, v0, v1

    const/16 v1, 0x94a

    aput v2, v0, v1

    const/16 v1, 0x94c

    aput v2, v0, v1

    const/16 v1, 0x94d

    aput v2, v0, v1

    const/16 v1, 0x94e

    aput v2, v0, v1

    const/16 v1, 0x972

    .line 86
    aput v2, v0, v1

    const/16 v1, 0x973

    aput v2, v0, v1

    const/16 v1, 0x98b

    .line 87
    aput v2, v0, v1

    const/16 v1, 0x98c

    aput v2, v0, v1

    const/16 v1, 0x98d

    aput v2, v0, v1

    const/16 v1, 0x98e

    aput v2, v0, v1

    const/16 v1, 0x9ad

    .line 88
    aput v2, v0, v1

    const/16 v1, 0x9af

    aput v2, v0, v1

    const/16 v1, 0x9b0

    aput v2, v0, v1

    const/16 v1, 0x9b1

    aput v2, v0, v1

    const/16 v1, 0x9bc

    aput v2, v0, v1

    const/16 v1, 0x9cf

    .line 89
    aput v2, v0, v1

    const/16 v1, 0x9d0

    aput v2, v0, v1

    const/16 v1, 0x9d1

    aput v2, v0, v1

    const/16 v1, 0x9ed

    .line 90
    aput v2, v0, v1

    const/16 v1, 0x9ee

    aput v2, v0, v1

    const/16 v1, 0x9ef

    aput v2, v0, v1

    const/16 v1, 0x9f1

    aput v2, v0, v1

    const/16 v1, 0x9f2

    aput v2, v0, v1

    const/16 v1, 0x9f8

    aput v2, v0, v1

    const/16 v1, 0xa0f

    .line 91
    aput v2, v0, v1

    const/16 v1, 0xa10

    aput v2, v0, v1

    const/16 v1, 0xa12

    aput v2, v0, v1

    const/16 v1, 0xa13

    aput v2, v0, v1

    const/16 v1, 0xa24

    aput v2, v0, v1

    const/16 v1, 0xa2f

    .line 92
    aput v2, v0, v1

    const/16 v1, 0xa30

    aput v2, v0, v1

    const/16 v1, 0xa31

    aput v2, v0, v1

    const/16 v1, 0xa32

    aput v2, v0, v1

    const/16 v1, 0xa33

    aput v2, v0, v1

    const/16 v1, 0xa34

    aput v2, v0, v1

    const/16 v1, 0xa50

    .line 94
    aput v2, v0, v1

    const/16 v1, 0xa51

    aput v2, v0, v1

    const/16 v1, 0xa54

    aput v2, v0, v1

    const/16 v1, 0xa55

    aput v2, v0, v1

    const/16 v1, 0xa56

    aput v2, v0, v1

    const/16 v1, 0xa71

    .line 95
    aput v2, v0, v1

    const/16 v1, 0xa72

    aput v2, v0, v1

    const/16 v1, 0xa73

    aput v2, v0, v1

    const/16 v1, 0xa74

    aput v2, v0, v1

    const/16 v1, 0xa75

    aput v2, v0, v1

    const/16 v1, 0xa76

    aput v2, v0, v1

    const/16 v1, 0xa83

    aput v2, v0, v1

    const/16 v1, 0xa92

    .line 96
    aput v2, v0, v1

    const/16 v1, 0xa93

    aput v2, v0, v1

    const/16 v1, 0xa96

    aput v2, v0, v1

    const/16 v1, 0xa97

    aput v2, v0, v1

    const/16 v1, 0xa98

    aput v2, v0, v1

    const/16 v1, 0xaa5

    aput v2, v0, v1

    const/16 v1, 0xab3

    .line 97
    aput v2, v0, v1

    const/16 v1, 0xab5

    aput v2, v0, v1

    const/16 v1, 0xab6

    aput v2, v0, v1

    const/16 v1, 0xab8

    aput v2, v0, v1

    const/16 v1, 0xab9

    aput v2, v0, v1

    const/16 v1, 0xad4

    .line 98
    aput v2, v0, v1

    const/16 v1, 0xade

    aput v2, v0, v1

    const/16 v1, 0xadf

    aput v2, v0, v1

    const/16 v1, 0xaf6

    .line 99
    aput v2, v0, v1

    const/16 v1, 0xaf7

    aput v2, v0, v1

    const/16 v1, 0xaf8

    aput v2, v0, v1

    const/16 v1, 0xaf9

    aput v2, v0, v1

    const/16 v1, 0xafa

    aput v2, v0, v1

    const/16 v1, 0xb17

    .line 100
    aput v2, v0, v1

    const/16 v1, 0xb1b

    aput v2, v0, v1

    const/16 v1, 0xb31

    aput v2, v0, v1

    const/16 v1, 0xb32

    aput v2, v0, v1

    const/16 v1, 0xb38

    .line 101
    aput v2, v0, v1

    const/16 v1, 0xb39

    aput v2, v0, v1

    const/16 v1, 0xb3a

    aput v2, v0, v1

    const/16 v1, 0xb3b

    aput v2, v0, v1

    const/16 v1, 0xb3c

    aput v2, v0, v1

    const/16 v1, 0xb43

    aput v2, v0, v1

    const/16 v1, 0xb75

    .line 102
    aput v2, v0, v1

    const/16 v1, 0xb76

    aput v2, v0, v1

    const/16 v1, 0xb77

    aput v2, v0, v1

    const/16 v1, 0xb78

    aput v2, v0, v1

    const/16 v1, 0xb7a

    .line 103
    aput v2, v0, v1

    const/16 v1, 0xb7b

    aput v2, v0, v1

    const/16 v1, 0xb7c

    aput v2, v0, v1

    const/16 v1, 0xb7e

    aput v2, v0, v1

    const/16 v1, 0xb7f

    aput v2, v0, v1

    const/16 v1, 0xbb2

    .line 104
    aput v2, v0, v1

    const/16 v1, 0xbb3

    aput v2, v0, v1

    const/16 v1, 0xbb4

    aput v2, v0, v1

    .line 7
    sput-object v0, Lcom/chartcross/view/MxSevenSegment;->mCharMap:[I

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    .line 113
    const/16 v0, 0x8

    iput v0, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    .line 114
    const/4 v0, 0x5

    iput v0, p0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    .line 115
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    .line 116
    const/16 v0, 0x40

    const/16 v1, 0xff

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/chartcross/view/MxSevenSegment;->mOffColour:I

    .line 117
    iput-boolean v3, p0, Lcom/chartcross/view/MxSevenSegment;->mShowOff:Z

    .line 118
    iput-boolean v2, p0, Lcom/chartcross/view/MxSevenSegment;->mGlow:Z

    .line 120
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40e00000    # 7.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/chartcross/view/MxSevenSegment;->mButtonBlur:Landroid/graphics/MaskFilter;

    .line 122
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    .line 5
    return-void
.end method

.method private DrawSegment(Landroid/graphics/Canvas;IFFFI)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "index"    # I
    .param p3, "left"    # F
    .param p4, "bottom"    # F
    .param p5, "height"    # F
    .param p6, "colour"    # I

    .prologue
    .line 717
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 718
    float-to-double v2, p5

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v0, v2

    .line 719
    .local v0, "segwidth":F
    float-to-double v2, p5

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v1, v2

    .line 721
    .local v1, "width":F
    packed-switch p2, :pswitch_data_0

    .line 1048
    :goto_0
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1049
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1050
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1051
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1052
    iget v2, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    if-ne p6, v2, :cond_0

    iget-boolean v2, p0, Lcom/chartcross/view/MxSevenSegment;->mGlow:Z

    if-eqz v2, :cond_0

    .line 1054
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/chartcross/view/MxSevenSegment;->mButtonBlur:Landroid/graphics/MaskFilter;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1055
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1057
    :cond_0
    iget v2, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    if-ne p6, v2, :cond_1

    iget-boolean v2, p0, Lcom/chartcross/view/MxSevenSegment;->mGlow:Z

    if-eqz v2, :cond_1

    .line 1059
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1061
    :cond_1
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1062
    return-void

    .line 727
    :pswitch_0
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 728
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 729
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 730
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 731
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 732
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 733
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 737
    :pswitch_1
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 738
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 739
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 740
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 741
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 742
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 743
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 747
    :pswitch_2
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 748
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 749
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 750
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 751
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 752
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 753
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 757
    :pswitch_3
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 758
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 759
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 760
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 761
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 762
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 763
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 767
    :pswitch_4
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 768
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 769
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 770
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    sub-float v3, p4, v3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 771
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p5, v3

    sub-float v3, p4, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 772
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 773
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 777
    :pswitch_5
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 778
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 779
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 780
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p5, v3

    sub-float v3, p4, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 781
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    sub-float v3, p4, p5

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 782
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    sub-float v4, p4, p5

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 783
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 787
    :pswitch_6
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 788
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 789
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 790
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 791
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 792
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 793
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 797
    :pswitch_7
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 798
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 799
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 800
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 801
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 802
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 803
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 807
    :pswitch_8
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 808
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 809
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 810
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 811
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 812
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 813
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 817
    :pswitch_9
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 818
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 819
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 820
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 821
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 822
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 823
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 827
    :pswitch_a
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 828
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 829
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 830
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 831
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 832
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 833
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 837
    :pswitch_b
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 838
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 839
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 840
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 841
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 842
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 843
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 847
    :pswitch_c
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 848
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 849
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 850
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 851
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 852
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 853
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 857
    :pswitch_d
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 858
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 859
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 860
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 861
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 862
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 866
    :pswitch_e
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 867
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 868
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 869
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p5, v3

    sub-float v3, p4, v3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 870
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    sub-float v3, p4, p5

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 871
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 875
    :pswitch_f
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 876
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 877
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 878
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p5, v3

    sub-float v3, p4, v3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 879
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 880
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 884
    :pswitch_10
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 885
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 886
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 887
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 888
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    invoke-virtual {v2, v3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 889
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 893
    :pswitch_11
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 894
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 895
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 896
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 897
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 898
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    sub-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 899
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 903
    :pswitch_12
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 904
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 905
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 906
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 907
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 908
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 909
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 913
    :pswitch_13
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 914
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 915
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 916
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 917
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 918
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    add-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 919
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 923
    :pswitch_14
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 924
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 925
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 926
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 927
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 928
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 929
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 933
    :pswitch_15
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 934
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 935
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 936
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 937
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 938
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 939
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 943
    :pswitch_16
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 944
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 945
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 946
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    const/high16 v5, 0x40c00000    # 6.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 947
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v5, v0

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 951
    :pswitch_17
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 952
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 953
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 954
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 955
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 956
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 957
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 961
    :pswitch_18
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 962
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 963
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 964
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 965
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 966
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40800000    # 4.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    const/high16 v5, 0x40800000    # 4.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 967
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 971
    :pswitch_19
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 972
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 973
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 974
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 975
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, v3, p4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 976
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 977
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 981
    :pswitch_1a
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 982
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 983
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 984
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 985
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 989
    :pswitch_1b
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 990
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 991
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    sub-float v3, p4, v3

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 992
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, p5, v3

    sub-float v3, p4, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v2, p3, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 993
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 994
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 998
    :pswitch_1c
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 999
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1000
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1001
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1002
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1003
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1004
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v0

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1008
    :pswitch_1d
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, p5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1009
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    sub-float v4, p4, p5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1010
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1011
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1012
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1013
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1014
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, p5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1018
    :pswitch_1e
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1019
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1020
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1021
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1022
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1023
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    add-float/2addr v4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1024
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, p5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1028
    :pswitch_1f
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1029
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1030
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1031
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1032
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1033
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1034
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    add-float v3, p3, v1

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 1038
    :pswitch_20
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1039
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v0, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1040
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v0, v5

    add-float/2addr v4, v5

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1041
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1042
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v1, v3

    add-float/2addr v3, p3

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, p5, v4

    sub-float v4, p4, v4

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1043
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    sub-float v4, p4, v0

    iget v5, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1044
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegmentPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v3, v3

    add-float/2addr v3, p3

    iget v4, p0, Lcom/chartcross/view/MxSevenSegment;->mGap:I

    int-to-float v4, v4

    sub-float v4, p4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_0

    .line 721
    nop

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
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public DrawColon(Landroid/graphics/Canvas;III)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I

    .prologue
    .line 573
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 574
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 576
    iget v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    div-int v1, p4, v2

    .line 578
    .local v1, "segwidth":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 579
    .local v0, "r":Landroid/graphics/Rect;
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 580
    div-int/lit8 v2, p4, 0x4

    sub-int v2, p3, v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 581
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 582
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 583
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 585
    mul-int/lit8 v2, p4, 0x3

    div-int/lit8 v2, v2, 0x4

    sub-int v2, p3, v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 586
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 587
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 588
    return-void
.end method

.method public DrawDegree(Landroid/graphics/Canvas;III)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I

    .prologue
    .line 607
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 608
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 610
    iget v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    div-int v1, p4, v2

    .line 612
    .local v1, "segwidth":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 614
    .local v0, "r":Landroid/graphics/Rect;
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 615
    iget v2, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 616
    sub-int v2, p3, p4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 617
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 618
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 620
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 621
    iget v2, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 622
    sub-int v2, p3, p4

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 623
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 624
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 626
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 627
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 628
    sub-int v2, p3, p4

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 629
    iget v2, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 630
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 632
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    mul-int/lit8 v3, v1, 0x3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 633
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 634
    sub-int v2, p3, p4

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 635
    iget v2, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 636
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 637
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
    .line 694
    const/16 v0, 0x20

    sub-int v0, p2, v0

    mul-int/lit8 v8, v0, 0x21

    .line 696
    .local v8, "offset":I
    if-ltz v8, :cond_0

    sget-object v0, Lcom/chartcross/view/MxSevenSegment;->mCharMap:[I

    array-length v0, v0

    if-ge v8, v0, :cond_0

    .line 698
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    const/16 v0, 0x21

    if-lt v7, v0, :cond_1

    .line 713
    .end local v7    # "i":I
    :cond_0
    return-void

    .line 700
    .restart local v7    # "i":I
    :cond_1
    sget-object v0, Lcom/chartcross/view/MxSevenSegment;->mCharMap:[I

    add-int v1, v8, v7

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 702
    add-int/lit8 v2, v7, 0x1

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    iget v6, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSevenSegment;->DrawSegment(Landroid/graphics/Canvas;IFFFI)V

    .line 698
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 706
    :cond_3
    const/4 v0, 0x7

    if-ge v7, v0, :cond_2

    .line 708
    iget-boolean v0, p0, Lcom/chartcross/view/MxSevenSegment;->mShowOff:Z

    if-eqz v0, :cond_2

    add-int/lit8 v2, v7, 0x1

    int-to-float v3, p3

    int-to-float v4, p4

    int-to-float v5, p5

    iget v6, p0, Lcom/chartcross/view/MxSevenSegment;->mOffColour:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartcross/view/MxSevenSegment;->DrawSegment(Landroid/graphics/Canvas;IFFFI)V

    goto :goto_1
.end method

.method public DrawDot(Landroid/graphics/Canvas;III)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I

    .prologue
    .line 592
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 593
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 595
    iget v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    div-int v1, p4, v2

    .line 597
    .local v1, "segwidth":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 598
    .local v0, "r":Landroid/graphics/Rect;
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 599
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 600
    iput p3, v0, Landroid/graphics/Rect;->bottom:I

    .line 601
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 602
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 603
    return-void
.end method

.method public DrawDoubleQuote(Landroid/graphics/Canvas;III)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I

    .prologue
    .line 657
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 658
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 660
    iget v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    div-int v1, p4, v2

    .line 662
    .local v1, "segwidth":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 664
    .local v0, "r":Landroid/graphics/Rect;
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 665
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 666
    sub-int v2, p3, p4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 667
    iget v2, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 668
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 670
    mul-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 671
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 672
    sub-int v2, p3, p4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 673
    iget v2, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 674
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 675
    return-void
.end method

.method public DrawMinus(Landroid/graphics/Canvas;III)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I

    .prologue
    .line 679
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 680
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 682
    iget v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    div-int v1, p4, v2

    .line 684
    .local v1, "segwidth":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 685
    .local v0, "r":Landroid/graphics/Rect;
    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 686
    div-int/lit8 v2, p4, 0x2

    sub-int v2, p3, v2

    div-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 687
    iget v2, v0, Landroid/graphics/Rect;->left:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 688
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 689
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 690
    return-void
.end method

.method public DrawNumber(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIIIDIZ)V
    .locals 37
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
    .line 134
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v19

    .line 135
    .local v19, "DigitCount":I
    const/4 v5, 0x0

    sub-int v6, v19, p7

    move-object/from16 v0, p2

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 136
    .local v24, "NumberL":Ljava/lang/String;
    sub-int v5, v19, p7

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    .line 138
    .local v25, "NumberR":Ljava/lang/String;
    move/from16 v0, v19

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 140
    move/from16 v19, p6

    .line 143
    :cond_0
    const/16 v32, 0x0

    .line 144
    .local v32, "TDigitCount":I
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_0
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v35

    move v1, v5

    if-lt v0, v1, :cond_3

    .line 160
    sub-int v5, v19, v32

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v6

    sub-int v20, v5, v6

    .line 162
    .local v20, "LDigitCount":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v17, v5, v6

    .line 163
    .local v17, "BoundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v18, v5, v6

    .line 165
    .local v18, "BoundsWidth":I
    move/from16 v10, v17

    .line 166
    .local v10, "LTextHeight":I
    int-to-double v5, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move v7, v0

    int-to-double v7, v7

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    int-to-double v7, v7

    mul-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .line 167
    .local v21, "LDigitWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move v5, v0

    div-int v5, v10, v5

    mul-int/lit8 v33, v5, 0x3

    .line 168
    .local v33, "TDigitWidth":I
    mul-int v23, v21, v20

    .line 169
    .local v23, "LTextWidth":I
    mul-int v34, v33, v32

    .line 170
    .local v34, "TTextWidth":I
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, p8

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v27, v0

    .line 171
    .local v27, "RDigitWidth":I
    int-to-double v5, v10

    mul-double v5, v5, p8

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v16, v0

    .line 172
    .local v16, "RTextHeight":I
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    mul-int v5, v5, v27

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move v8, v0

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    sub-int v29, v5, v6

    .line 174
    .local v29, "RTextWidth":I
    move/from16 v0, v18

    int-to-double v0, v0

    move-wide v5, v0

    add-int v7, v23, v29

    add-int v7, v7, v34

    int-to-double v7, v7

    div-double v30, v5, v7

    .line 175
    .local v30, "SizeRatio":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v30, v5

    if-gez v5, :cond_1

    .line 177
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v30

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v21, v0

    .line 178
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v30

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v27, v0

    .line 179
    move/from16 v0, v33

    int-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v30

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v33, v0

    .line 180
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    int-to-double v7, v7

    div-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v22, v0

    .line 181
    .local v22, "LSegWidth":I
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v7, v0

    add-int/lit8 v7, v7, 0x1

    int-to-double v7, v7

    div-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v28, v0

    .line 182
    .local v28, "RSegWidth":I
    sub-int v5, v21, v22

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v7, v0

    int-to-double v7, v7

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move v7, v0

    int-to-double v7, v7

    mul-double/2addr v5, v7

    double-to-int v10, v5

    .line 183
    sub-int v5, v27, v28

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v7, v0

    int-to-double v7, v7

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move v7, v0

    int-to-double v7, v7

    mul-double/2addr v5, v7

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v16, v0

    .line 186
    .end local v22    # "LSegWidth":I
    .end local v28    # "RSegWidth":I
    :cond_1
    mul-int v23, v21, v20

    .line 187
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    mul-int v5, v5, v27

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move v8, v0

    int-to-double v8, v8

    div-double/2addr v6, v8

    double-to-int v6, v6

    sub-int v29, v5, v6

    .line 188
    mul-int v34, v33, v32

    .line 222
    packed-switch p4, :pswitch_data_0

    .line 226
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    .line 227
    .local v8, "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    .line 271
    .local v9, "TextBottom":I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v26, v19, v5

    .line 272
    .local v26, "PadCount":I
    const/16 v36, 0x0

    .local v36, "j":I
    :goto_2
    move/from16 v0, v36

    move/from16 v1, v26

    if-lt v0, v1, :cond_7

    .line 278
    const/16 v35, 0x0

    :goto_3
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v35

    move v1, v5

    if-lt v0, v1, :cond_8

    .line 311
    packed-switch p5, :pswitch_data_1

    .line 332
    :goto_4
    :pswitch_0
    if-nez p11, :cond_2

    .line 334
    const/16 v35, 0x0

    :goto_5
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v35

    move v1, v5

    if-lt v0, v1, :cond_9

    .line 346
    :cond_2
    return-void

    .line 146
    .end local v8    # "TextLeft":I
    .end local v9    # "TextBottom":I
    .end local v10    # "LTextHeight":I
    .end local v16    # "RTextHeight":I
    .end local v17    # "BoundsHeight":I
    .end local v18    # "BoundsWidth":I
    .end local v20    # "LDigitCount":I
    .end local v21    # "LDigitWidth":I
    .end local v23    # "LTextWidth":I
    .end local v26    # "PadCount":I
    .end local v27    # "RDigitWidth":I
    .end local v29    # "RTextWidth":I
    .end local v30    # "SizeRatio":D
    .end local v33    # "TDigitWidth":I
    .end local v34    # "TTextWidth":I
    .end local v36    # "j":I
    :cond_3
    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 147
    .local v7, "Digit":C
    const/16 v5, 0x3a

    if-ne v7, v5, :cond_4

    .line 149
    add-int/lit8 v32, v32, 0x1

    .line 151
    :cond_4
    const/16 v5, 0x2d

    if-ne v7, v5, :cond_5

    .line 153
    add-int/lit8 v32, v32, 0x1

    .line 155
    :cond_5
    const/16 v5, 0x2e

    if-ne v7, v5, :cond_6

    .line 157
    add-int/lit8 v32, v32, 0x1

    .line 144
    :cond_6
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_0

    .line 231
    .end local v7    # "Digit":C
    .restart local v10    # "LTextHeight":I
    .restart local v16    # "RTextHeight":I
    .restart local v17    # "BoundsHeight":I
    .restart local v18    # "BoundsWidth":I
    .restart local v20    # "LDigitCount":I
    .restart local v21    # "LDigitWidth":I
    .restart local v23    # "LTextWidth":I
    .restart local v27    # "RDigitWidth":I
    .restart local v29    # "RTextWidth":I
    .restart local v30    # "SizeRatio":D
    .restart local v33    # "TDigitWidth":I
    .restart local v34    # "TTextWidth":I
    :pswitch_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    .line 232
    .restart local v8    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    div-int/lit8 v6, v17, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v10, 0x2

    add-int v9, v5, v6

    .line 233
    .restart local v9    # "TextBottom":I
    goto :goto_1

    .line 236
    .end local v8    # "TextLeft":I
    .end local v9    # "TextBottom":I
    :pswitch_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v8, v0

    .line 237
    .restart local v8    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int v9, v5, v10

    .line 238
    .restart local v9    # "TextBottom":I
    goto :goto_1

    .line 241
    .end local v8    # "TextLeft":I
    .end local v9    # "TextBottom":I
    :pswitch_3
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v18, 0x2

    add-int/2addr v5, v6

    add-int v6, v23, v29

    add-int v6, v6, v34

    div-int/lit8 v6, v6, 0x2

    sub-int v8, v5, v6

    .line 242
    .restart local v8    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    .line 243
    .restart local v9    # "TextBottom":I
    goto :goto_1

    .line 246
    .end local v8    # "TextLeft":I
    .end local v9    # "TextBottom":I
    :pswitch_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v18, 0x2

    add-int/2addr v5, v6

    add-int v6, v23, v29

    add-int v6, v6, v34

    div-int/lit8 v6, v6, 0x2

    sub-int v8, v5, v6

    .line 247
    .restart local v8    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    div-int/lit8 v6, v17, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v10, 0x2

    add-int v9, v5, v6

    .line 248
    .restart local v9    # "TextBottom":I
    goto/16 :goto_1

    .line 251
    .end local v8    # "TextLeft":I
    .end local v9    # "TextBottom":I
    :pswitch_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v18, 0x2

    add-int/2addr v5, v6

    add-int v6, v23, v29

    add-int v6, v6, v34

    div-int/lit8 v6, v6, 0x2

    sub-int v8, v5, v6

    .line 252
    .restart local v8    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int v9, v5, v10

    .line 253
    .restart local v9    # "TextBottom":I
    goto/16 :goto_1

    .line 256
    .end local v8    # "TextLeft":I
    .end local v9    # "TextBottom":I
    :pswitch_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    add-int v6, v23, v29

    add-int v6, v6, v34

    sub-int v8, v5, v6

    .line 257
    .restart local v8    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    .line 258
    .restart local v9    # "TextBottom":I
    goto/16 :goto_1

    .line 261
    .end local v8    # "TextLeft":I
    .end local v9    # "TextBottom":I
    :pswitch_7
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    add-int v6, v23, v29

    add-int v6, v6, v34

    sub-int v8, v5, v6

    .line 262
    .restart local v8    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    div-int/lit8 v6, v17, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v10, 0x2

    add-int v9, v5, v6

    .line 263
    .restart local v9    # "TextBottom":I
    goto/16 :goto_1

    .line 266
    .end local v8    # "TextLeft":I
    .end local v9    # "TextBottom":I
    :pswitch_8
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    add-int v6, v23, v29

    add-int v6, v6, v34

    sub-int v8, v5, v6

    .line 267
    .restart local v8    # "TextLeft":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int v9, v5, v10

    .restart local v9    # "TextBottom":I
    goto/16 :goto_1

    .line 274
    .restart local v26    # "PadCount":I
    .restart local v36    # "j":I
    :cond_7
    const/16 v7, 0x20

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/chartcross/view/MxSevenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 275
    add-int v8, v8, v21

    .line 272
    add-int/lit8 v36, v36, 0x1

    goto/16 :goto_2

    .line 280
    :cond_8
    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 281
    .restart local v7    # "Digit":C
    sparse-switch v7, :sswitch_data_0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 284
    invoke-virtual/range {v5 .. v10}, Lcom/chartcross/view/MxSevenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 285
    add-int v8, v8, v21

    .line 278
    :goto_6
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_3

    .line 290
    :sswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawColon(Landroid/graphics/Canvas;III)V

    .line 291
    add-int v8, v8, v33

    .line 292
    goto :goto_6

    .line 296
    :sswitch_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawMinus(Landroid/graphics/Canvas;III)V

    .line 297
    add-int v8, v8, v33

    .line 298
    goto :goto_6

    .line 302
    :sswitch_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawColon(Landroid/graphics/Canvas;III)V

    .line 303
    add-int v8, v8, v33

    goto :goto_6

    .line 316
    .end local v7    # "Digit":C
    :pswitch_9
    sub-int v5, v10, v16

    sub-int/2addr v9, v5

    .line 317
    goto/16 :goto_4

    .line 322
    :pswitch_a
    div-int/lit8 v5, v10, 0x2

    div-int/lit8 v6, v16, 0x2

    sub-int/2addr v5, v6

    sub-int/2addr v9, v5

    .line 323
    goto/16 :goto_4

    .line 336
    :cond_9
    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .restart local v7    # "Digit":C
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move v13, v7

    move v14, v8

    move v15, v9

    .line 340
    invoke-virtual/range {v11 .. v16}, Lcom/chartcross/view/MxSevenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 341
    add-int v8, v8, v27

    .line 334
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_5

    .line 222
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

    .line 311
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

    .line 281
    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x3a -> :sswitch_0
    .end sparse-switch
.end method

.method public DrawSingleQuote(Landroid/graphics/Canvas;III)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "left"    # I
    .param p3, "bottom"    # I
    .param p4, "height"    # I

    .prologue
    .line 641
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/chartcross/view/MxSevenSegment;->mOnColour:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 642
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 644
    iget v2, p0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    div-int v1, p4, v2

    .line 646
    .local v1, "segwidth":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 648
    .local v0, "r":Landroid/graphics/Rect;
    div-int/lit8 v2, v1, 0x2

    add-int/2addr v2, p2

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 649
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 650
    sub-int v2, p3, p4

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 651
    iget v2, v0, Landroid/graphics/Rect;->top:I

    mul-int/lit8 v3, v1, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 652
    iget-object v2, p0, Lcom/chartcross/view/MxSevenSegment;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 653
    return-void
.end method

.method public DrawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;III)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "Alignment"    # I
    .param p5, "MinDigits"    # I
    .param p6, "MinHeight"    # I

    .prologue
    .line 409
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/chartcross/view/MxSevenSegment;->GetTextHeight(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;II)I

    move-result v4

    .local v4, "textHeight":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 410
    invoke-virtual/range {v0 .. v7}, Lcom/chartcross/view/MxSevenSegment;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIII)V

    .line 411
    return-void
.end method

.method public DrawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIII)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "Height"    # I
    .param p5, "Alignment"    # I
    .param p6, "MinDigits"    # I
    .param p7, "MinHeight"    # I

    .prologue
    .line 423
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v13

    .line 424
    .local v13, "digitCount":I
    move v0, v13

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 426
    move/from16 v13, p6

    .line 429
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    sub-int v16, v13, v5

    .line 430
    .local v16, "padCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    mul-int v17, v16, v5

    .line 431
    .local v17, "segCount":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v14, v5, :cond_1

    .line 464
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int v11, v5, v6

    .line 465
    .local v11, "boundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int v12, v5, v6

    .line 466
    .local v12, "boundsWidth":I
    move/from16 v10, p4

    .line 467
    .local v10, "textHeight":I
    int-to-double v5, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move v7, v0

    int-to-double v7, v7

    div-double v18, v5, v7

    .line 468
    .local v18, "segWidth":D
    const/4 v5, 0x1

    sub-int v5, v17, v5

    int-to-double v5, v5

    mul-double v5, v5, v18

    move-wide v0, v5

    double-to-int v0, v0

    move/from16 v24, v0

    .line 479
    .local v24, "textWidth":I
    packed-switch p5, :pswitch_data_0

    .line 483
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 484
    .local v22, "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 528
    .local v20, "textBottom":D
    :goto_1
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move v0, v15

    move/from16 v1, v16

    if-lt v0, v1, :cond_8

    .line 534
    const/4 v14, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v14, v5, :cond_9

    .line 569
    return-void

    .line 433
    .end local v10    # "textHeight":I
    .end local v11    # "boundsHeight":I
    .end local v12    # "boundsWidth":I
    .end local v15    # "j":I
    .end local v18    # "segWidth":D
    .end local v20    # "textBottom":D
    .end local v22    # "textLeft":D
    .end local v24    # "textWidth":I
    :cond_1
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 434
    .local v7, "digit":C
    const/16 v5, 0x3a

    if-ne v7, v5, :cond_2

    .line 436
    add-int/lit8 v17, v17, 0x3

    .line 431
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 438
    :cond_2
    const/16 v5, 0x2d

    if-ne v7, v5, :cond_3

    .line 440
    add-int/lit8 v17, v17, 0x3

    goto :goto_4

    .line 442
    :cond_3
    const/16 v5, 0x2e

    if-ne v7, v5, :cond_4

    .line 444
    add-int/lit8 v17, v17, 0x3

    goto :goto_4

    .line 446
    :cond_4
    const/16 v5, 0x27

    if-ne v7, v5, :cond_5

    .line 448
    add-int/lit8 v17, v17, 0x3

    goto :goto_4

    .line 450
    :cond_5
    const/16 v5, 0x22

    if-ne v7, v5, :cond_6

    .line 452
    add-int/lit8 v17, v17, 0x4

    goto :goto_4

    .line 454
    :cond_6
    const/16 v5, 0xb0

    if-ne v7, v5, :cond_7

    .line 456
    add-int/lit8 v17, v17, 0x6

    goto :goto_4

    .line 460
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    add-int v17, v17, v5

    goto :goto_4

    .line 488
    .end local v7    # "digit":C
    .restart local v10    # "textHeight":I
    .restart local v11    # "boundsHeight":I
    .restart local v12    # "boundsWidth":I
    .restart local v18    # "segWidth":D
    .restart local v24    # "textWidth":I
    :pswitch_0
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 489
    .restart local v22    # "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    div-int/lit8 v6, v11, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v10, 0x2

    add-int/2addr v5, v6

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 490
    .restart local v20    # "textBottom":D
    goto :goto_1

    .line 493
    .end local v20    # "textBottom":D
    .end local v22    # "textLeft":D
    :pswitch_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 494
    .restart local v22    # "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int/2addr v5, v10

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 495
    .restart local v20    # "textBottom":D
    goto :goto_1

    .line 498
    .end local v20    # "textBottom":D
    .end local v22    # "textLeft":D
    :pswitch_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v12, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v24, 0x2

    sub-int/2addr v5, v6

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 499
    .restart local v22    # "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 500
    .restart local v20    # "textBottom":D
    goto/16 :goto_1

    .line 503
    .end local v20    # "textBottom":D
    .end local v22    # "textLeft":D
    :pswitch_3
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v12, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v24, 0x2

    sub-int/2addr v5, v6

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 504
    .restart local v22    # "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    div-int/lit8 v6, v11, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v10, 0x2

    add-int/2addr v5, v6

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 505
    .restart local v20    # "textBottom":D
    goto/16 :goto_1

    .line 508
    .end local v20    # "textBottom":D
    .end local v22    # "textLeft":D
    :pswitch_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v5, v0

    div-int/lit8 v6, v12, 0x2

    add-int/2addr v5, v6

    div-int/lit8 v6, v24, 0x2

    sub-int/2addr v5, v6

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 509
    .restart local v22    # "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int/2addr v5, v10

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 510
    .restart local v20    # "textBottom":D
    goto/16 :goto_1

    .line 513
    .end local v20    # "textBottom":D
    .end local v22    # "textLeft":D
    :pswitch_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    sub-int v5, v5, v24

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 514
    .restart local v22    # "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 515
    .restart local v20    # "textBottom":D
    goto/16 :goto_1

    .line 518
    .end local v20    # "textBottom":D
    .end local v22    # "textLeft":D
    :pswitch_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    sub-int v5, v5, v24

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 519
    .restart local v22    # "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    div-int/lit8 v6, v11, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v10, 0x2

    add-int/2addr v5, v6

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .line 520
    .restart local v20    # "textBottom":D
    goto/16 :goto_1

    .line 523
    .end local v20    # "textBottom":D
    .end local v22    # "textLeft":D
    :pswitch_7
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    sub-int v5, v5, v24

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v22, v0

    .line 524
    .restart local v22    # "textLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v5, v0

    add-int/2addr v5, v10

    move v0, v5

    int-to-double v0, v0

    move-wide/from16 v20, v0

    .restart local v20    # "textBottom":D
    goto/16 :goto_1

    .line 530
    .restart local v15    # "j":I
    :cond_8
    const/16 v7, 0x20

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v8, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move v9, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/chartcross/view/MxSevenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 531
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    mul-double v5, v5, v18

    add-double v22, v22, v5

    .line 528
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    .line 536
    :cond_9
    move-object/from16 v0, p2

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 537
    .restart local v7    # "digit":C
    sparse-switch v7, :sswitch_data_0

    .line 540
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v8, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move v9, v0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/chartcross/view/MxSevenSegment;->DrawDigit(Landroid/graphics/Canvas;CIII)V

    .line 541
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    int-to-double v5, v5

    mul-double v5, v5, v18

    add-double v22, v22, v5

    .line 534
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 544
    :sswitch_0
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v5, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawColon(Landroid/graphics/Canvas;III)V

    .line 545
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double v5, v5, v18

    add-double v22, v22, v5

    .line 546
    goto :goto_5

    .line 548
    :sswitch_1
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v5, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawMinus(Landroid/graphics/Canvas;III)V

    .line 549
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double v5, v5, v18

    add-double v22, v22, v5

    .line 550
    goto :goto_5

    .line 552
    :sswitch_2
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v5, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawDot(Landroid/graphics/Canvas;III)V

    .line 553
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double v5, v5, v18

    add-double v22, v22, v5

    .line 554
    goto :goto_5

    .line 556
    :sswitch_3
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v5, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawSingleQuote(Landroid/graphics/Canvas;III)V

    .line 557
    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    mul-double v5, v5, v18

    add-double v22, v22, v5

    .line 558
    goto :goto_5

    .line 560
    :sswitch_4
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v5, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawDoubleQuote(Landroid/graphics/Canvas;III)V

    .line 561
    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double v5, v5, v18

    add-double v22, v22, v5

    .line 562
    goto :goto_5

    .line 564
    :sswitch_5
    move-wide/from16 v0, v22

    double-to-int v0, v0

    move v5, v0

    move-wide/from16 v0, v20

    double-to-int v0, v0

    move v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/chartcross/view/MxSevenSegment;->DrawDegree(Landroid/graphics/Canvas;III)V

    .line 565
    const-wide/high16 v5, 0x4018000000000000L    # 6.0

    mul-double v5, v5, v18

    add-double v22, v22, v5

    goto/16 :goto_5

    .line 479
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

    .line 537
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x27 -> :sswitch_3
        0x2d -> :sswitch_1
        0x2e -> :sswitch_2
        0x3a -> :sswitch_0
        0xb0 -> :sswitch_5
    .end sparse-switch
.end method

.method public GetTextHeight(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;II)I
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "MinDigits"    # I
    .param p5, "MinHeight"    # I

    .prologue
    .line 350
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 351
    .local v5, "digitCount":I
    move v0, v5

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 353
    move/from16 v5, p4

    .line 357
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v7, v5, v15

    .line 358
    .local v7, "padCount":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v15, v0

    add-int/lit8 v15, v15, 0x1

    mul-int v8, v7, v15

    .line 359
    .local v8, "segCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v6, v15, :cond_2

    .line 392
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v2, v15, v16

    .line 393
    .local v2, "boundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v3, v15, v16

    .line 394
    .local v3, "boundsWidth":I
    move v13, v2

    .line 395
    .local v13, "textHeight":I
    int-to-double v15, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v9, v15, v17

    .line 396
    .local v9, "segWidth":D
    const/4 v15, 0x1

    sub-int v15, v8, v15

    int-to-double v15, v15

    mul-double/2addr v15, v9

    double-to-int v14, v15

    .line 398
    .local v14, "textWidth":I
    int-to-double v15, v3

    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v11, v15, v17

    .line 399
    .local v11, "sizeRatio":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v11, v15

    if-gez v15, :cond_1

    .line 401
    mul-double/2addr v9, v11

    .line 402
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegRatio:I

    move v15, v0

    int-to-double v15, v15

    mul-double/2addr v15, v9

    double-to-int v13, v15

    .line 404
    :cond_1
    return v13

    .line 361
    .end local v2    # "boundsHeight":I
    .end local v3    # "boundsWidth":I
    .end local v9    # "segWidth":D
    .end local v11    # "sizeRatio":D
    .end local v13    # "textHeight":I
    .end local v14    # "textWidth":I
    :cond_2
    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 362
    .local v4, "digit":C
    const/16 v15, 0x3a

    if-ne v4, v15, :cond_3

    .line 364
    add-int/lit8 v8, v8, 0x3

    .line 359
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 366
    :cond_3
    const/16 v15, 0x2d

    if-ne v4, v15, :cond_4

    .line 368
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    .line 370
    :cond_4
    const/16 v15, 0x2e

    if-ne v4, v15, :cond_5

    .line 372
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    .line 374
    :cond_5
    const/16 v15, 0x27

    if-ne v4, v15, :cond_6

    .line 376
    add-int/lit8 v8, v8, 0x3

    goto :goto_1

    .line 378
    :cond_6
    const/16 v15, 0x22

    if-ne v4, v15, :cond_7

    .line 380
    add-int/lit8 v8, v8, 0x4

    goto :goto_1

    .line 382
    :cond_7
    const/16 v15, 0xb0

    if-ne v4, v15, :cond_8

    .line 384
    add-int/lit8 v8, v8, 0x6

    goto :goto_1

    .line 388
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/chartcross/view/MxSevenSegment;->mSegMultiplier:I

    move v15, v0

    add-int/lit8 v15, v15, 0x1

    add-int/2addr v8, v15

    goto :goto_1
.end method
