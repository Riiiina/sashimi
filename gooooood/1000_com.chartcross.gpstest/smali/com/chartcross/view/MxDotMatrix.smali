.class public Lcom/chartcross/view/MxDotMatrix;
.super Ljava/lang/Object;
.source "MxDotMatrix.java"


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

.field public mShowOff:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 8
    const/16 v0, 0x1ea0

    new-array v0, v0, [I

    const/16 v1, 0x63

    .line 11
    aput v3, v0, v1

    const/16 v1, 0x65

    aput v3, v0, v1

    const/16 v1, 0x6a

    aput v3, v0, v1

    const/16 v1, 0x6c

    aput v3, v0, v1

    const/16 v1, 0x71

    aput v3, v0, v1

    const/16 v1, 0x73

    aput v3, v0, v1

    const/16 v1, 0x159

    .line 16
    aput v3, v0, v1

    const/16 v1, 0x160

    aput v3, v0, v1

    const/16 v1, 0x167

    aput v3, v0, v1

    const/16 v1, 0x293

    .line 22
    aput v3, v0, v1

    const/16 v1, 0x294

    aput v3, v0, v1

    const/16 v1, 0x295

    aput v3, v0, v1

    const/16 v1, 0x2d2

    .line 23
    aput v3, v0, v1

    const/16 v1, 0x2d3

    aput v3, v0, v1

    const/16 v1, 0x2d9

    aput v3, v0, v1

    const/16 v1, 0x2da

    aput v3, v0, v1

    const/16 v1, 0x312

    .line 26
    aput v3, v0, v1

    const/16 v1, 0x313

    aput v3, v0, v1

    const/16 v1, 0x314

    aput v3, v0, v1

    const/16 v1, 0x318

    aput v3, v0, v1

    const/16 v1, 0x31c

    aput v3, v0, v1

    const/16 v1, 0x31f

    aput v3, v0, v1

    const/16 v1, 0x323

    aput v3, v0, v1

    const/16 v1, 0x326

    aput v3, v0, v1

    const/16 v1, 0x32a

    aput v3, v0, v1

    const/16 v1, 0x32d

    aput v3, v0, v1

    const/16 v1, 0x331

    aput v3, v0, v1

    const/16 v1, 0x334

    aput v3, v0, v1

    const/16 v1, 0x338

    aput v3, v0, v1

    const/16 v1, 0x33c

    aput v3, v0, v1

    const/16 v1, 0x33d

    aput v3, v0, v1

    const/16 v1, 0x33e

    aput v3, v0, v1

    const/16 v1, 0x344

    .line 27
    aput v3, v0, v1

    const/16 v1, 0x34a

    aput v3, v0, v1

    const/16 v1, 0x34b

    aput v3, v0, v1

    const/16 v1, 0x352

    aput v3, v0, v1

    const/16 v1, 0x359

    aput v3, v0, v1

    const/16 v1, 0x360

    aput v3, v0, v1

    const/16 v1, 0x367

    aput v3, v0, v1

    const/16 v1, 0x36d

    aput v3, v0, v1

    const/16 v1, 0x36e

    aput v3, v0, v1

    const/16 v1, 0x36f

    aput v3, v0, v1

    const/16 v1, 0x374

    .line 28
    aput v3, v0, v1

    const/16 v1, 0x375

    aput v3, v0, v1

    const/16 v1, 0x376

    aput v3, v0, v1

    const/16 v1, 0x37a

    aput v3, v0, v1

    const/16 v1, 0x37e

    aput v3, v0, v1

    const/16 v1, 0x385

    aput v3, v0, v1

    const/16 v1, 0x38b

    aput v3, v0, v1

    const/16 v1, 0x391

    aput v3, v0, v1

    const/16 v1, 0x397

    aput v3, v0, v1

    const/16 v1, 0x39d

    aput v3, v0, v1

    const/16 v1, 0x39e

    aput v3, v0, v1

    const/16 v1, 0x39f

    aput v3, v0, v1

    const/16 v1, 0x3a0

    aput v3, v0, v1

    const/16 v1, 0x3a1

    aput v3, v0, v1

    const/16 v1, 0x3a5

    .line 29
    aput v3, v0, v1

    const/16 v1, 0x3a6

    aput v3, v0, v1

    const/16 v1, 0x3a7

    aput v3, v0, v1

    const/16 v1, 0x3ab

    aput v3, v0, v1

    const/16 v1, 0x3af

    aput v3, v0, v1

    const/16 v1, 0x3b6

    aput v3, v0, v1

    const/16 v1, 0x3bb

    aput v3, v0, v1

    const/16 v1, 0x3bc

    aput v3, v0, v1

    const/16 v1, 0x3c4

    aput v3, v0, v1

    const/16 v1, 0x3c7

    aput v3, v0, v1

    const/16 v1, 0x3cb

    aput v3, v0, v1

    const/16 v1, 0x3cf

    aput v3, v0, v1

    const/16 v1, 0x3d0

    aput v3, v0, v1

    const/16 v1, 0x3d1

    aput v3, v0, v1

    const/16 v1, 0x3d8

    .line 30
    aput v3, v0, v1

    const/16 v1, 0x3de

    aput v3, v0, v1

    const/16 v1, 0x3df

    aput v3, v0, v1

    const/16 v1, 0x3e4

    aput v3, v0, v1

    const/16 v1, 0x3e6

    aput v3, v0, v1

    const/16 v1, 0x3ea

    aput v3, v0, v1

    const/16 v1, 0x3ed

    aput v3, v0, v1

    const/16 v1, 0x3f1

    aput v3, v0, v1

    const/16 v1, 0x3f2

    aput v3, v0, v1

    const/16 v1, 0x3f3

    aput v3, v0, v1

    const/16 v1, 0x3f4

    aput v3, v0, v1

    const/16 v1, 0x3f5

    aput v3, v0, v1

    const/16 v1, 0x3fb

    aput v3, v0, v1

    const/16 v1, 0x402

    aput v3, v0, v1

    const/16 v1, 0x406

    .line 31
    aput v3, v0, v1

    const/16 v1, 0x407

    aput v3, v0, v1

    const/16 v1, 0x408

    aput v3, v0, v1

    const/16 v1, 0x409

    aput v3, v0, v1

    const/16 v1, 0x40a

    aput v3, v0, v1

    const/16 v1, 0x40d

    aput v3, v0, v1

    const/16 v1, 0x414

    aput v3, v0, v1

    const/16 v1, 0x415

    aput v3, v0, v1

    const/16 v1, 0x416

    aput v3, v0, v1

    const/16 v1, 0x417

    aput v3, v0, v1

    const/16 v1, 0x41f

    aput v3, v0, v1

    const/16 v1, 0x426

    aput v3, v0, v1

    const/16 v1, 0x429

    aput v3, v0, v1

    const/16 v1, 0x42d

    aput v3, v0, v1

    const/16 v1, 0x431

    aput v3, v0, v1

    const/16 v1, 0x432

    aput v3, v0, v1

    const/16 v1, 0x433

    aput v3, v0, v1

    const/16 v1, 0x438

    .line 32
    aput v3, v0, v1

    const/16 v1, 0x439

    aput v3, v0, v1

    const/16 v1, 0x43a

    aput v3, v0, v1

    const/16 v1, 0x43e

    aput v3, v0, v1

    const/16 v1, 0x442

    aput v3, v0, v1

    const/16 v1, 0x445

    aput v3, v0, v1

    const/16 v1, 0x44c

    aput v3, v0, v1

    const/16 v1, 0x44d

    aput v3, v0, v1

    const/16 v1, 0x44e

    aput v3, v0, v1

    const/16 v1, 0x44f

    aput v3, v0, v1

    const/16 v1, 0x453

    aput v3, v0, v1

    const/16 v1, 0x457

    aput v3, v0, v1

    const/16 v1, 0x45a

    aput v3, v0, v1

    const/16 v1, 0x45e

    aput v3, v0, v1

    const/16 v1, 0x462

    aput v3, v0, v1

    const/16 v1, 0x463

    aput v3, v0, v1

    const/16 v1, 0x464

    aput v3, v0, v1

    const/16 v1, 0x468

    .line 33
    aput v3, v0, v1

    const/16 v1, 0x469

    aput v3, v0, v1

    const/16 v1, 0x46a

    aput v3, v0, v1

    const/16 v1, 0x46b

    aput v3, v0, v1

    const/16 v1, 0x46c

    aput v3, v0, v1

    const/16 v1, 0x473

    aput v3, v0, v1

    const/16 v1, 0x479

    aput v3, v0, v1

    const/16 v1, 0x47f

    aput v3, v0, v1

    const/16 v1, 0x485

    aput v3, v0, v1

    const/16 v1, 0x48c

    aput v3, v0, v1

    const/16 v1, 0x493

    aput v3, v0, v1

    const/16 v1, 0x49a

    .line 34
    aput v3, v0, v1

    const/16 v1, 0x49b

    aput v3, v0, v1

    const/16 v1, 0x49c

    aput v3, v0, v1

    const/16 v1, 0x4a0

    aput v3, v0, v1

    const/16 v1, 0x4a4

    aput v3, v0, v1

    const/16 v1, 0x4a7

    aput v3, v0, v1

    const/16 v1, 0x4ab

    aput v3, v0, v1

    const/16 v1, 0x4af

    aput v3, v0, v1

    const/16 v1, 0x4b0

    aput v3, v0, v1

    const/16 v1, 0x4b1

    aput v3, v0, v1

    const/16 v1, 0x4b5

    aput v3, v0, v1

    const/16 v1, 0x4b9

    aput v3, v0, v1

    const/16 v1, 0x4bc

    aput v3, v0, v1

    const/16 v1, 0x4c0

    aput v3, v0, v1

    const/16 v1, 0x4c4

    aput v3, v0, v1

    const/16 v1, 0x4c5

    aput v3, v0, v1

    const/16 v1, 0x4c6

    aput v3, v0, v1

    const/16 v1, 0x4cb

    .line 35
    aput v3, v0, v1

    const/16 v1, 0x4cc

    aput v3, v0, v1

    const/16 v1, 0x4cd

    aput v3, v0, v1

    const/16 v1, 0x4d1

    aput v3, v0, v1

    const/16 v1, 0x4d5

    aput v3, v0, v1

    const/16 v1, 0x4d8

    aput v3, v0, v1

    const/16 v1, 0x4dc

    aput v3, v0, v1

    const/16 v1, 0x4e0

    aput v3, v0, v1

    const/16 v1, 0x4e1

    aput v3, v0, v1

    const/16 v1, 0x4e2

    aput v3, v0, v1

    const/16 v1, 0x4e3

    aput v3, v0, v1

    const/16 v1, 0x4ea

    aput v3, v0, v1

    const/16 v1, 0x4ed

    aput v3, v0, v1

    const/16 v1, 0x4f1

    aput v3, v0, v1

    const/16 v1, 0x4f5

    aput v3, v0, v1

    const/16 v1, 0x4f6

    aput v3, v0, v1

    const/16 v1, 0x4f7

    aput v3, v0, v1

    const/16 v1, 0x503

    .line 36
    aput v3, v0, v1

    const/16 v1, 0x504

    aput v3, v0, v1

    const/16 v1, 0x50a

    aput v3, v0, v1

    const/16 v1, 0x50b

    aput v3, v0, v1

    const/16 v1, 0x518

    aput v3, v0, v1

    const/16 v1, 0x519

    aput v3, v0, v1

    const/16 v1, 0x51f

    aput v3, v0, v1

    const/16 v1, 0x520

    aput v3, v0, v1

    const/16 v1, 0x534

    .line 37
    aput v3, v0, v1

    const/16 v1, 0x535

    aput v3, v0, v1

    const/16 v1, 0x53b

    aput v3, v0, v1

    const/16 v1, 0x53c

    aput v3, v0, v1

    const/16 v1, 0x549

    aput v3, v0, v1

    const/16 v1, 0x54a

    aput v3, v0, v1

    const/16 v1, 0x551

    aput v3, v0, v1

    const/16 v1, 0x557

    aput v3, v0, v1

    const/16 v1, 0x560

    .line 38
    aput v3, v0, v1

    const/16 v1, 0x566

    aput v3, v0, v1

    const/16 v1, 0x56c

    aput v3, v0, v1

    const/16 v1, 0x572

    aput v3, v0, v1

    const/16 v1, 0x57a

    aput v3, v0, v1

    const/16 v1, 0x582

    aput v3, v0, v1

    const/16 v1, 0x58a

    aput v3, v0, v1

    const/16 v1, 0x59c

    .line 39
    aput v3, v0, v1

    const/16 v1, 0x59d

    aput v3, v0, v1

    const/16 v1, 0x59e

    aput v3, v0, v1

    const/16 v1, 0x59f

    aput v3, v0, v1

    const/16 v1, 0x5a0

    aput v3, v0, v1

    const/16 v1, 0x5aa

    aput v3, v0, v1

    const/16 v1, 0x5ab

    aput v3, v0, v1

    const/16 v1, 0x5ac

    aput v3, v0, v1

    const/16 v1, 0x5ad

    aput v3, v0, v1

    const/16 v1, 0x5ae

    aput v3, v0, v1

    const/16 v1, 0x5c0

    .line 40
    aput v3, v0, v1

    const/16 v1, 0x5c8

    aput v3, v0, v1

    const/16 v1, 0x5d0

    aput v3, v0, v1

    const/16 v1, 0x5d8

    aput v3, v0, v1

    const/16 v1, 0x5de

    aput v3, v0, v1

    const/16 v1, 0x5e4

    aput v3, v0, v1

    const/16 v1, 0x5ea

    aput v3, v0, v1

    const/16 v1, 0x5f1

    .line 41
    aput v3, v0, v1

    const/16 v1, 0x5f2

    aput v3, v0, v1

    const/16 v1, 0x5f3

    aput v3, v0, v1

    const/16 v1, 0x5f7

    aput v3, v0, v1

    const/16 v1, 0x5fb

    aput v3, v0, v1

    const/16 v1, 0x602

    aput v3, v0, v1

    const/16 v1, 0x608

    aput v3, v0, v1

    const/16 v1, 0x60e

    aput v3, v0, v1

    const/16 v1, 0x61c

    aput v3, v0, v1

    const/16 v1, 0x622

    .line 43
    aput v3, v0, v1

    const/16 v1, 0x623

    aput v3, v0, v1

    const/16 v1, 0x624

    aput v3, v0, v1

    const/16 v1, 0x628

    aput v3, v0, v1

    const/16 v1, 0x62c

    aput v3, v0, v1

    const/16 v1, 0x62f

    aput v3, v0, v1

    const/16 v1, 0x631

    aput v3, v0, v1

    const/16 v1, 0x632

    aput v3, v0, v1

    const/16 v1, 0x633

    aput v3, v0, v1

    const/16 v1, 0x636

    aput v3, v0, v1

    const/16 v1, 0x638

    aput v3, v0, v1

    const/16 v1, 0x639

    aput v3, v0, v1

    const/16 v1, 0x63a

    aput v3, v0, v1

    const/16 v1, 0x63d

    aput v3, v0, v1

    const/16 v1, 0x63f

    aput v3, v0, v1

    const/16 v1, 0x640

    aput v3, v0, v1

    const/16 v1, 0x644

    aput v3, v0, v1

    const/16 v1, 0x64c

    aput v3, v0, v1

    const/16 v1, 0x64d

    aput v3, v0, v1

    const/16 v1, 0x64e

    aput v3, v0, v1

    const/16 v1, 0x653

    .line 44
    aput v3, v0, v1

    const/16 v1, 0x654

    aput v3, v0, v1

    const/16 v1, 0x655

    aput v3, v0, v1

    const/16 v1, 0x659

    aput v3, v0, v1

    const/16 v1, 0x65d

    aput v3, v0, v1

    const/16 v1, 0x660

    aput v3, v0, v1

    const/16 v1, 0x664

    aput v3, v0, v1

    const/16 v1, 0x667

    aput v3, v0, v1

    const/16 v1, 0x66b

    aput v3, v0, v1

    const/16 v1, 0x66e

    aput v3, v0, v1

    const/16 v1, 0x66f

    aput v3, v0, v1

    const/16 v1, 0x670

    aput v3, v0, v1

    const/16 v1, 0x671

    aput v3, v0, v1

    const/16 v1, 0x672

    aput v3, v0, v1

    const/16 v1, 0x675

    aput v3, v0, v1

    const/16 v1, 0x679

    aput v3, v0, v1

    const/16 v1, 0x67c

    aput v3, v0, v1

    const/16 v1, 0x680

    aput v3, v0, v1

    const/16 v1, 0x683

    .line 45
    aput v3, v0, v1

    const/16 v1, 0x684

    aput v3, v0, v1

    const/16 v1, 0x685

    aput v3, v0, v1

    const/16 v1, 0x686

    aput v3, v0, v1

    const/16 v1, 0x68a

    aput v3, v0, v1

    const/16 v1, 0x68e

    aput v3, v0, v1

    const/16 v1, 0x691

    aput v3, v0, v1

    const/16 v1, 0x695

    aput v3, v0, v1

    const/16 v1, 0x698

    aput v3, v0, v1

    const/16 v1, 0x699

    aput v3, v0, v1

    const/16 v1, 0x69a

    aput v3, v0, v1

    const/16 v1, 0x69b

    aput v3, v0, v1

    const/16 v1, 0x69f

    aput v3, v0, v1

    const/16 v1, 0x6a3

    aput v3, v0, v1

    const/16 v1, 0x6a6

    aput v3, v0, v1

    const/16 v1, 0x6aa

    aput v3, v0, v1

    const/16 v1, 0x6ad

    aput v3, v0, v1

    const/16 v1, 0x6ae

    aput v3, v0, v1

    const/16 v1, 0x6af

    aput v3, v0, v1

    const/16 v1, 0x6b0

    aput v3, v0, v1

    const/16 v1, 0x6b5

    .line 46
    aput v3, v0, v1

    const/16 v1, 0x6b6

    aput v3, v0, v1

    const/16 v1, 0x6b7

    aput v3, v0, v1

    const/16 v1, 0x6bb

    aput v3, v0, v1

    const/16 v1, 0x6bf

    aput v3, v0, v1

    const/16 v1, 0x6c2

    aput v3, v0, v1

    const/16 v1, 0x6c9

    aput v3, v0, v1

    const/16 v1, 0x6d0

    aput v3, v0, v1

    const/16 v1, 0x6d7

    aput v3, v0, v1

    const/16 v1, 0x6db

    aput v3, v0, v1

    const/16 v1, 0x6df

    aput v3, v0, v1

    const/16 v1, 0x6e0

    aput v3, v0, v1

    const/16 v1, 0x6e1

    aput v3, v0, v1

    const/16 v1, 0x6e5

    .line 47
    aput v3, v0, v1

    const/16 v1, 0x6e6

    aput v3, v0, v1

    const/16 v1, 0x6e7

    aput v3, v0, v1

    const/16 v1, 0x6e8

    aput v3, v0, v1

    const/16 v1, 0x6ec

    aput v3, v0, v1

    const/16 v1, 0x6f0

    aput v3, v0, v1

    const/16 v1, 0x6f3

    aput v3, v0, v1

    const/16 v1, 0x6f7

    aput v3, v0, v1

    const/16 v1, 0x6fa

    aput v3, v0, v1

    const/16 v1, 0x6fe

    aput v3, v0, v1

    const/16 v1, 0x701

    aput v3, v0, v1

    const/16 v1, 0x705

    aput v3, v0, v1

    const/16 v1, 0x708

    aput v3, v0, v1

    const/16 v1, 0x70c

    aput v3, v0, v1

    const/16 v1, 0x70f

    aput v3, v0, v1

    const/16 v1, 0x710

    aput v3, v0, v1

    const/16 v1, 0x711

    aput v3, v0, v1

    const/16 v1, 0x712

    aput v3, v0, v1

    const/16 v1, 0x716

    .line 48
    aput v3, v0, v1

    const/16 v1, 0x717

    aput v3, v0, v1

    const/16 v1, 0x718

    aput v3, v0, v1

    const/16 v1, 0x719

    aput v3, v0, v1

    const/16 v1, 0x71a

    aput v3, v0, v1

    const/16 v1, 0x71d

    aput v3, v0, v1

    const/16 v1, 0x724

    aput v3, v0, v1

    const/16 v1, 0x72b

    aput v3, v0, v1

    const/16 v1, 0x72c

    aput v3, v0, v1

    const/16 v1, 0x72d

    aput v3, v0, v1

    const/16 v1, 0x732

    aput v3, v0, v1

    const/16 v1, 0x739

    aput v3, v0, v1

    const/16 v1, 0x740

    aput v3, v0, v1

    const/16 v1, 0x741

    aput v3, v0, v1

    const/16 v1, 0x742

    aput v3, v0, v1

    const/16 v1, 0x743

    aput v3, v0, v1

    const/16 v1, 0x744

    aput v3, v0, v1

    const/16 v1, 0x747

    .line 49
    aput v3, v0, v1

    const/16 v1, 0x748

    aput v3, v0, v1

    const/16 v1, 0x749

    aput v3, v0, v1

    const/16 v1, 0x74a

    aput v3, v0, v1

    const/16 v1, 0x74b

    aput v3, v0, v1

    const/16 v1, 0x74e

    aput v3, v0, v1

    const/16 v1, 0x755

    aput v3, v0, v1

    const/16 v1, 0x75c

    aput v3, v0, v1

    const/16 v1, 0x75d

    aput v3, v0, v1

    const/16 v1, 0x75e

    aput v3, v0, v1

    const/16 v1, 0x763

    aput v3, v0, v1

    const/16 v1, 0x76a

    aput v3, v0, v1

    const/16 v1, 0x771

    aput v3, v0, v1

    const/16 v1, 0x779

    .line 50
    aput v3, v0, v1

    const/16 v1, 0x77a

    aput v3, v0, v1

    const/16 v1, 0x77b

    aput v3, v0, v1

    const/16 v1, 0x77f

    aput v3, v0, v1

    const/16 v1, 0x783

    aput v3, v0, v1

    const/16 v1, 0x786

    aput v3, v0, v1

    const/16 v1, 0x78d

    aput v3, v0, v1

    const/16 v1, 0x78f

    aput v3, v0, v1

    const/16 v1, 0x790

    aput v3, v0, v1

    const/16 v1, 0x791

    aput v3, v0, v1

    const/16 v1, 0x794

    aput v3, v0, v1

    const/16 v1, 0x798

    aput v3, v0, v1

    const/16 v1, 0x79b

    aput v3, v0, v1

    const/16 v1, 0x79f

    aput v3, v0, v1

    const/16 v1, 0x7a3

    aput v3, v0, v1

    const/16 v1, 0x7a4

    aput v3, v0, v1

    const/16 v1, 0x7a5

    aput v3, v0, v1

    const/16 v1, 0x7a6

    aput v3, v0, v1

    const/16 v1, 0x7a9

    .line 51
    aput v3, v0, v1

    const/16 v1, 0x7ad

    aput v3, v0, v1

    const/16 v1, 0x7b0

    aput v3, v0, v1

    const/16 v1, 0x7b4

    aput v3, v0, v1

    const/16 v1, 0x7b7

    aput v3, v0, v1

    const/16 v1, 0x7bb

    aput v3, v0, v1

    const/16 v1, 0x7be

    aput v3, v0, v1

    const/16 v1, 0x7bf

    aput v3, v0, v1

    const/16 v1, 0x7c0

    aput v3, v0, v1

    const/16 v1, 0x7c1

    aput v3, v0, v1

    const/16 v1, 0x7c2

    aput v3, v0, v1

    const/16 v1, 0x7c5

    aput v3, v0, v1

    const/16 v1, 0x7c9

    aput v3, v0, v1

    const/16 v1, 0x7cc

    aput v3, v0, v1

    const/16 v1, 0x7d0

    aput v3, v0, v1

    const/16 v1, 0x7d3

    aput v3, v0, v1

    const/16 v1, 0x7d7

    aput v3, v0, v1

    const/16 v1, 0x7db

    .line 52
    aput v3, v0, v1

    const/16 v1, 0x7dc

    aput v3, v0, v1

    const/16 v1, 0x7dd

    aput v3, v0, v1

    const/16 v1, 0x7e3

    aput v3, v0, v1

    const/16 v1, 0x7ea

    aput v3, v0, v1

    const/16 v1, 0x7f1

    aput v3, v0, v1

    const/16 v1, 0x7f8

    aput v3, v0, v1

    const/16 v1, 0x7ff

    aput v3, v0, v1

    const/16 v1, 0x805

    aput v3, v0, v1

    const/16 v1, 0x806

    aput v3, v0, v1

    const/16 v1, 0x807

    aput v3, v0, v1

    const/16 v1, 0x80f

    .line 53
    aput v3, v0, v1

    const/16 v1, 0x816

    aput v3, v0, v1

    const/16 v1, 0x81d

    aput v3, v0, v1

    const/16 v1, 0x824

    aput v3, v0, v1

    const/16 v1, 0x827

    aput v3, v0, v1

    const/16 v1, 0x82b

    aput v3, v0, v1

    const/16 v1, 0x82e

    aput v3, v0, v1

    const/16 v1, 0x832

    aput v3, v0, v1

    const/16 v1, 0x836

    aput v3, v0, v1

    const/16 v1, 0x837

    aput v3, v0, v1

    const/16 v1, 0x838

    aput v3, v0, v1

    const/16 v1, 0x83c

    .line 54
    aput v3, v0, v1

    const/16 v1, 0x840

    aput v3, v0, v1

    const/16 v1, 0x843

    aput v3, v0, v1

    const/16 v1, 0x846

    aput v3, v0, v1

    const/16 v1, 0x84a

    aput v3, v0, v1

    const/16 v1, 0x84c

    aput v3, v0, v1

    const/16 v1, 0x851

    aput v3, v0, v1

    const/16 v1, 0x852

    aput v3, v0, v1

    const/16 v1, 0x858

    aput v3, v0, v1

    const/16 v1, 0x85a

    aput v3, v0, v1

    const/16 v1, 0x85f

    aput v3, v0, v1

    const/16 v1, 0x862

    aput v3, v0, v1

    const/16 v1, 0x866

    aput v3, v0, v1

    const/16 v1, 0x86a

    aput v3, v0, v1

    const/16 v1, 0x86d

    .line 55
    aput v3, v0, v1

    const/16 v1, 0x874

    aput v3, v0, v1

    const/16 v1, 0x87b

    aput v3, v0, v1

    const/16 v1, 0x882

    aput v3, v0, v1

    const/16 v1, 0x889

    aput v3, v0, v1

    const/16 v1, 0x890

    aput v3, v0, v1

    const/16 v1, 0x897

    aput v3, v0, v1

    const/16 v1, 0x898

    aput v3, v0, v1

    const/16 v1, 0x899

    aput v3, v0, v1

    const/16 v1, 0x89a

    aput v3, v0, v1

    const/16 v1, 0x89b

    aput v3, v0, v1

    const/16 v1, 0x89e

    .line 56
    aput v3, v0, v1

    const/16 v1, 0x8a2

    aput v3, v0, v1

    const/16 v1, 0x8a5

    aput v3, v0, v1

    const/16 v1, 0x8a6

    aput v3, v0, v1

    const/16 v1, 0x8a8

    aput v3, v0, v1

    const/16 v1, 0x8a9

    aput v3, v0, v1

    const/16 v1, 0x8ac

    aput v3, v0, v1

    const/16 v1, 0x8ae

    aput v3, v0, v1

    const/16 v1, 0x8b0

    aput v3, v0, v1

    const/16 v1, 0x8b3

    aput v3, v0, v1

    const/16 v1, 0x8b5

    aput v3, v0, v1

    const/16 v1, 0x8b7

    aput v3, v0, v1

    const/16 v1, 0x8ba

    aput v3, v0, v1

    const/16 v1, 0x8be

    aput v3, v0, v1

    const/16 v1, 0x8c1

    aput v3, v0, v1

    const/16 v1, 0x8c5

    aput v3, v0, v1

    const/16 v1, 0x8c8

    aput v3, v0, v1

    const/16 v1, 0x8cc

    aput v3, v0, v1

    const/16 v1, 0x8cf

    .line 57
    aput v3, v0, v1

    const/16 v1, 0x8d3

    aput v3, v0, v1

    const/16 v1, 0x8d6

    aput v3, v0, v1

    const/16 v1, 0x8da

    aput v3, v0, v1

    const/16 v1, 0x8dd

    aput v3, v0, v1

    const/16 v1, 0x8de

    aput v3, v0, v1

    const/16 v1, 0x8e1

    aput v3, v0, v1

    const/16 v1, 0x8e4

    aput v3, v0, v1

    const/16 v1, 0x8e6

    aput v3, v0, v1

    const/16 v1, 0x8e8

    aput v3, v0, v1

    const/16 v1, 0x8eb

    aput v3, v0, v1

    const/16 v1, 0x8ee

    aput v3, v0, v1

    const/16 v1, 0x8ef

    aput v3, v0, v1

    const/16 v1, 0x8f2

    aput v3, v0, v1

    const/16 v1, 0x8f6

    aput v3, v0, v1

    const/16 v1, 0x8f9

    aput v3, v0, v1

    const/16 v1, 0x8fd

    aput v3, v0, v1

    const/16 v1, 0x901

    .line 58
    aput v3, v0, v1

    const/16 v1, 0x902

    aput v3, v0, v1

    const/16 v1, 0x903

    aput v3, v0, v1

    const/16 v1, 0x907

    aput v3, v0, v1

    const/16 v1, 0x90b

    aput v3, v0, v1

    const/16 v1, 0x90e

    aput v3, v0, v1

    const/16 v1, 0x912

    aput v3, v0, v1

    const/16 v1, 0x915

    aput v3, v0, v1

    const/16 v1, 0x919

    aput v3, v0, v1

    const/16 v1, 0x91c

    aput v3, v0, v1

    const/16 v1, 0x920

    aput v3, v0, v1

    const/16 v1, 0x923

    aput v3, v0, v1

    const/16 v1, 0x927

    aput v3, v0, v1

    const/16 v1, 0x92b

    aput v3, v0, v1

    const/16 v1, 0x92c

    aput v3, v0, v1

    const/16 v1, 0x92d

    aput v3, v0, v1

    const/16 v1, 0x931

    .line 60
    aput v3, v0, v1

    const/16 v1, 0x932

    aput v3, v0, v1

    const/16 v1, 0x933

    aput v3, v0, v1

    const/16 v1, 0x934

    aput v3, v0, v1

    const/16 v1, 0x938

    aput v3, v0, v1

    const/16 v1, 0x93c

    aput v3, v0, v1

    const/16 v1, 0x93f

    aput v3, v0, v1

    const/16 v1, 0x943

    aput v3, v0, v1

    const/16 v1, 0x946

    aput v3, v0, v1

    const/16 v1, 0x947

    aput v3, v0, v1

    const/16 v1, 0x948

    aput v3, v0, v1

    const/16 v1, 0x949

    aput v3, v0, v1

    const/16 v1, 0x94a

    const/16 v2, 0x9

    aput v2, v0, v1

    const/16 v1, 0x94d

    aput v3, v0, v1

    const/16 v1, 0x954

    aput v3, v0, v1

    const/16 v1, 0x95b

    aput v3, v0, v1

    const/16 v1, 0x963

    .line 61
    aput v3, v0, v1

    const/16 v1, 0x964

    aput v3, v0, v1

    const/16 v1, 0x965

    aput v3, v0, v1

    const/16 v1, 0x969

    aput v3, v0, v1

    const/16 v1, 0x96d

    aput v3, v0, v1

    const/16 v1, 0x970

    aput v3, v0, v1

    const/16 v1, 0x974

    aput v3, v0, v1

    const/16 v1, 0x977

    aput v3, v0, v1

    const/16 v1, 0x97b

    aput v3, v0, v1

    const/16 v1, 0x97e

    aput v3, v0, v1

    const/16 v1, 0x980

    aput v3, v0, v1

    const/16 v1, 0x982

    aput v3, v0, v1

    const/16 v1, 0x985

    aput v3, v0, v1

    const/16 v1, 0x988

    aput v3, v0, v1

    const/16 v1, 0x98d

    aput v3, v0, v1

    const/16 v1, 0x98e

    aput v3, v0, v1

    const/16 v1, 0x990

    aput v3, v0, v1

    const/16 v1, 0x993

    .line 62
    aput v3, v0, v1

    const/16 v1, 0x994

    aput v3, v0, v1

    const/16 v1, 0x995

    aput v3, v0, v1

    const/16 v1, 0x996

    aput v3, v0, v1

    const/16 v1, 0x99a

    aput v3, v0, v1

    const/16 v1, 0x99e

    aput v3, v0, v1

    const/16 v1, 0x9a1

    aput v3, v0, v1

    const/16 v1, 0x9a5

    aput v3, v0, v1

    const/16 v1, 0x9a8

    aput v3, v0, v1

    const/16 v1, 0x9a9

    aput v3, v0, v1

    const/16 v1, 0x9aa

    aput v3, v0, v1

    const/16 v1, 0x9ab

    aput v3, v0, v1

    const/16 v1, 0x9af

    aput v3, v0, v1

    const/16 v1, 0x9b1

    aput v3, v0, v1

    const/16 v1, 0x9b6

    aput v3, v0, v1

    const/16 v1, 0x9b9

    aput v3, v0, v1

    const/16 v1, 0x9bd

    aput v3, v0, v1

    const/16 v1, 0x9c1

    aput v3, v0, v1

    const/16 v1, 0x9c5

    .line 63
    aput v3, v0, v1

    const/16 v1, 0x9c6

    aput v3, v0, v1

    const/16 v1, 0x9c7

    aput v3, v0, v1

    const/16 v1, 0x9cb

    aput v3, v0, v1

    const/16 v1, 0x9cf

    aput v3, v0, v1

    const/16 v1, 0x9d2

    aput v3, v0, v1

    const/16 v1, 0x9da

    aput v3, v0, v1

    const/16 v1, 0x9db

    aput v3, v0, v1

    const/16 v1, 0x9dc

    aput v3, v0, v1

    const/16 v1, 0x9e4

    aput v3, v0, v1

    const/16 v1, 0x9e7

    aput v3, v0, v1

    const/16 v1, 0x9eb

    aput v3, v0, v1

    const/16 v1, 0x9ef

    aput v3, v0, v1

    const/16 v1, 0x9f0

    aput v3, v0, v1

    const/16 v1, 0x9f1

    aput v3, v0, v1

    const/16 v1, 0x9f5

    .line 64
    aput v3, v0, v1

    const/16 v1, 0x9f6

    aput v3, v0, v1

    const/16 v1, 0x9f7

    aput v3, v0, v1

    const/16 v1, 0x9f8

    aput v3, v0, v1

    const/16 v1, 0x9f9

    aput v3, v0, v1

    const/16 v1, 0x9fe

    aput v3, v0, v1

    const/16 v1, 0xa05

    aput v3, v0, v1

    const/16 v1, 0xa0c

    aput v3, v0, v1

    const/16 v1, 0xa13

    aput v3, v0, v1

    const/16 v1, 0xa1a

    aput v3, v0, v1

    const/16 v1, 0xa21

    aput v3, v0, v1

    const/16 v1, 0xa26

    .line 65
    aput v3, v0, v1

    const/16 v1, 0xa2a

    aput v3, v0, v1

    const/16 v1, 0xa2d

    aput v3, v0, v1

    const/16 v1, 0xa31

    aput v3, v0, v1

    const/16 v1, 0xa34

    aput v3, v0, v1

    const/16 v1, 0xa38

    aput v3, v0, v1

    const/16 v1, 0xa3b

    aput v3, v0, v1

    const/16 v1, 0xa3f

    aput v3, v0, v1

    const/16 v1, 0xa42

    aput v3, v0, v1

    const/16 v1, 0xa46

    aput v3, v0, v1

    const/16 v1, 0xa49

    aput v3, v0, v1

    const/16 v1, 0xa4d

    aput v3, v0, v1

    const/16 v1, 0xa51

    aput v3, v0, v1

    const/16 v1, 0xa52

    aput v3, v0, v1

    const/16 v1, 0xa53

    aput v3, v0, v1

    const/16 v1, 0xa57

    .line 66
    aput v3, v0, v1

    const/16 v1, 0xa5b

    aput v3, v0, v1

    const/16 v1, 0xa5e

    aput v3, v0, v1

    const/16 v1, 0xa62

    aput v3, v0, v1

    const/16 v1, 0xa65

    aput v3, v0, v1

    const/16 v1, 0xa69

    aput v3, v0, v1

    const/16 v1, 0xa6c

    aput v3, v0, v1

    const/16 v1, 0xa70

    aput v3, v0, v1

    const/16 v1, 0xa73

    aput v3, v0, v1

    const/16 v1, 0xa77

    aput v3, v0, v1

    const/16 v1, 0xa7b

    aput v3, v0, v1

    const/16 v1, 0xa7d

    aput v3, v0, v1

    const/16 v1, 0xa83

    aput v3, v0, v1

    const/16 v1, 0xa88

    .line 67
    aput v3, v0, v1

    const/16 v1, 0xa8c

    aput v3, v0, v1

    const/16 v1, 0xa8f

    aput v3, v0, v1

    const/16 v1, 0xa93

    aput v3, v0, v1

    const/16 v1, 0xa96

    aput v3, v0, v1

    const/16 v1, 0xa9a

    aput v3, v0, v1

    const/16 v1, 0xa9d

    aput v3, v0, v1

    const/16 v1, 0xaa1

    aput v3, v0, v1

    const/16 v1, 0xaa4

    aput v3, v0, v1

    const/16 v1, 0xaa6

    aput v3, v0, v1

    const/16 v1, 0xaa8

    aput v3, v0, v1

    const/16 v1, 0xaab

    aput v3, v0, v1

    const/16 v1, 0xaac

    aput v3, v0, v1

    const/16 v1, 0xaae

    aput v3, v0, v1

    const/16 v1, 0xaaf

    aput v3, v0, v1

    const/16 v1, 0xab2

    aput v3, v0, v1

    const/16 v1, 0xab6

    aput v3, v0, v1

    const/16 v1, 0xab9

    .line 68
    aput v3, v0, v1

    const/16 v1, 0xabd

    aput v3, v0, v1

    const/16 v1, 0xac0

    aput v3, v0, v1

    const/16 v1, 0xac4

    aput v3, v0, v1

    const/16 v1, 0xac8

    aput v3, v0, v1

    const/16 v1, 0xaca

    aput v3, v0, v1

    const/16 v1, 0xad0

    aput v3, v0, v1

    const/16 v1, 0xad6

    aput v3, v0, v1

    const/16 v1, 0xad8

    aput v3, v0, v1

    const/16 v1, 0xadc

    aput v3, v0, v1

    const/16 v1, 0xae0

    aput v3, v0, v1

    const/16 v1, 0xae3

    aput v3, v0, v1

    const/16 v1, 0xae7

    aput v3, v0, v1

    const/16 v1, 0xaea

    .line 69
    aput v3, v0, v1

    const/16 v1, 0xaee

    aput v3, v0, v1

    const/16 v1, 0xaf1

    aput v3, v0, v1

    const/16 v1, 0xaf5

    aput v3, v0, v1

    const/16 v1, 0xaf8

    aput v3, v0, v1

    const/16 v1, 0xafc

    aput v3, v0, v1

    const/16 v1, 0xb00

    aput v3, v0, v1

    const/16 v1, 0xb02

    aput v3, v0, v1

    const/16 v1, 0xb08

    aput v3, v0, v1

    const/16 v1, 0xb0f

    aput v3, v0, v1

    const/16 v1, 0xb16

    aput v3, v0, v1

    const/16 v1, 0xb1b

    .line 70
    aput v3, v0, v1

    const/16 v1, 0xb1c

    aput v3, v0, v1

    const/16 v1, 0xb1d

    aput v3, v0, v1

    const/16 v1, 0xb1e

    aput v3, v0, v1

    const/16 v1, 0xb1f

    aput v3, v0, v1

    const/16 v1, 0xb26    # 4.0E-42f

    aput v3, v0, v1

    const/16 v1, 0xb2c

    aput v3, v0, v1

    const/16 v1, 0xb32

    aput v3, v0, v1

    const/16 v1, 0xb38

    aput v3, v0, v1

    const/16 v1, 0xb3e

    aput v3, v0, v1

    const/16 v1, 0xb45

    aput v3, v0, v1

    const/16 v1, 0xb46

    aput v3, v0, v1

    const/16 v1, 0xb47

    aput v3, v0, v1

    const/16 v1, 0xb48

    aput v3, v0, v1

    const/16 v1, 0xb49

    aput v3, v0, v1

    const/16 v1, 0xb4d

    .line 71
    aput v3, v0, v1

    const/16 v1, 0xb4e

    aput v3, v0, v1

    const/16 v1, 0xb4f

    aput v3, v0, v1

    const/16 v1, 0xb54

    aput v3, v0, v1

    const/16 v1, 0xb5b

    aput v3, v0, v1

    const/16 v1, 0xb62

    aput v3, v0, v1

    const/16 v1, 0xb69

    aput v3, v0, v1

    const/16 v1, 0xb70

    aput v3, v0, v1

    const/16 v1, 0xb77

    aput v3, v0, v1

    const/16 v1, 0xb78

    aput v3, v0, v1

    const/16 v1, 0xb79

    aput v3, v0, v1

    const/16 v1, 0xb84

    .line 72
    aput v3, v0, v1

    const/16 v1, 0xb8c

    aput v3, v0, v1

    const/16 v1, 0xb94

    aput v3, v0, v1

    const/16 v1, 0xb9c

    aput v3, v0, v1

    const/16 v1, 0xba4

    aput v3, v0, v1

    const/16 v1, 0xbaf

    .line 73
    aput v3, v0, v1

    const/16 v1, 0xbb0

    aput v3, v0, v1

    const/16 v1, 0xbb1

    aput v3, v0, v1

    const/16 v1, 0xbb8

    aput v3, v0, v1

    const/16 v1, 0xbbf

    aput v3, v0, v1

    const/16 v1, 0xbc6

    aput v3, v0, v1

    const/16 v1, 0xbcd

    aput v3, v0, v1

    const/16 v1, 0xbd4

    aput v3, v0, v1

    const/16 v1, 0xbd9

    aput v3, v0, v1

    const/16 v1, 0xbda

    aput v3, v0, v1

    const/16 v1, 0xbdb

    aput v3, v0, v1

    const/16 v1, 0xbe1

    .line 74
    aput v3, v0, v1

    const/16 v1, 0xbe7

    aput v3, v0, v1

    const/16 v1, 0xbe9

    aput v3, v0, v1

    const/16 v1, 0xbed

    aput v3, v0, v1

    const/16 v1, 0xbf1

    aput v3, v0, v1

    const/16 v1, 0xc3a

    .line 75
    aput v3, v0, v1

    const/16 v1, 0xc3b

    aput v3, v0, v1

    const/16 v1, 0xc3c

    aput v3, v0, v1

    const/16 v1, 0xc3d

    aput v3, v0, v1

    const/16 v1, 0xc3e

    aput v3, v0, v1

    const/16 v1, 0xc42

    .line 77
    aput v3, v0, v1

    const/16 v1, 0xc4a

    aput v3, v0, v1

    const/16 v1, 0xc52

    aput v3, v0, v1

    const/16 v1, 0xc81

    .line 78
    aput v3, v0, v1

    const/16 v1, 0xc82

    aput v3, v0, v1

    const/16 v1, 0xc83

    aput v3, v0, v1

    const/16 v1, 0xc8b

    aput v3, v0, v1

    const/16 v1, 0xc8f

    aput v3, v0, v1

    const/16 v1, 0xc90

    aput v3, v0, v1

    const/16 v1, 0xc91

    aput v3, v0, v1

    const/16 v1, 0xc92

    aput v3, v0, v1

    const/16 v1, 0xc95

    aput v3, v0, v1

    const/16 v1, 0xc99

    aput v3, v0, v1

    const/16 v1, 0xc9d

    aput v3, v0, v1

    const/16 v1, 0xc9e

    aput v3, v0, v1

    const/16 v1, 0xc9f

    aput v3, v0, v1

    const/16 v1, 0xca0

    aput v3, v0, v1

    const/16 v1, 0xca3

    .line 79
    aput v3, v0, v1

    const/16 v1, 0xcaa

    aput v3, v0, v1

    const/16 v1, 0xcb1

    aput v3, v0, v1

    const/16 v1, 0xcb3

    aput v3, v0, v1

    const/16 v1, 0xcb4

    aput v3, v0, v1

    const/16 v1, 0xcb8

    aput v3, v0, v1

    const/16 v1, 0xcb9

    aput v3, v0, v1

    const/16 v1, 0xcbc

    aput v3, v0, v1

    const/16 v1, 0xcbf

    aput v3, v0, v1

    const/16 v1, 0xcc3

    aput v3, v0, v1

    const/16 v1, 0xcc6

    aput v3, v0, v1

    const/16 v1, 0xcca

    aput v3, v0, v1

    const/16 v1, 0xccd

    aput v3, v0, v1

    const/16 v1, 0xcce

    aput v3, v0, v1

    const/16 v1, 0xccf

    aput v3, v0, v1

    const/16 v1, 0xcd0

    aput v3, v0, v1

    const/16 v1, 0xce3

    .line 80
    aput v3, v0, v1

    const/16 v1, 0xce4

    aput v3, v0, v1

    const/16 v1, 0xce5

    aput v3, v0, v1

    const/16 v1, 0xce9

    aput v3, v0, v1

    const/16 v1, 0xcf0

    aput v3, v0, v1

    const/16 v1, 0xcf7

    aput v3, v0, v1

    const/16 v1, 0xcfb

    aput v3, v0, v1

    const/16 v1, 0xcff

    aput v3, v0, v1

    const/16 v1, 0xd00

    aput v3, v0, v1

    const/16 v1, 0xd01

    aput v3, v0, v1

    const/16 v1, 0xd09

    .line 81
    aput v3, v0, v1

    const/16 v1, 0xd10

    aput v3, v0, v1

    const/16 v1, 0xd14

    aput v3, v0, v1

    const/16 v1, 0xd15

    aput v3, v0, v1

    const/16 v1, 0xd17

    aput v3, v0, v1

    const/16 v1, 0xd1a

    aput v3, v0, v1

    const/16 v1, 0xd1d

    aput v3, v0, v1

    const/16 v1, 0xd1e

    aput v3, v0, v1

    const/16 v1, 0xd21

    aput v3, v0, v1

    const/16 v1, 0xd25

    aput v3, v0, v1

    const/16 v1, 0xd28

    aput v3, v0, v1

    const/16 v1, 0xd2c

    aput v3, v0, v1

    const/16 v1, 0xd30

    aput v3, v0, v1

    const/16 v1, 0xd31

    aput v3, v0, v1

    const/16 v1, 0xd32

    aput v3, v0, v1

    const/16 v1, 0xd33

    aput v3, v0, v1

    const/16 v1, 0xd45

    .line 82
    aput v3, v0, v1

    const/16 v1, 0xd46

    aput v3, v0, v1

    const/16 v1, 0xd47

    aput v3, v0, v1

    const/16 v1, 0xd4b

    aput v3, v0, v1

    const/16 v1, 0xd4f

    aput v3, v0, v1

    const/16 v1, 0xd52

    aput v3, v0, v1

    const/16 v1, 0xd53

    aput v3, v0, v1

    const/16 v1, 0xd54

    aput v3, v0, v1

    const/16 v1, 0xd55

    aput v3, v0, v1

    const/16 v1, 0xd56

    aput v3, v0, v1

    const/16 v1, 0xd59

    aput v3, v0, v1

    const/16 v1, 0xd61

    aput v3, v0, v1

    const/16 v1, 0xd62

    aput v3, v0, v1

    const/16 v1, 0xd63

    aput v3, v0, v1

    const/16 v1, 0xd69

    .line 83
    aput v3, v0, v1

    const/16 v1, 0xd6a

    aput v3, v0, v1

    const/16 v1, 0xd6f

    aput v3, v0, v1

    const/16 v1, 0xd72

    aput v3, v0, v1

    const/16 v1, 0xd76

    aput v3, v0, v1

    const/16 v1, 0xd7c

    aput v3, v0, v1

    const/16 v1, 0xd7d

    aput v3, v0, v1

    const/16 v1, 0xd7e

    aput v3, v0, v1

    const/16 v1, 0xd84

    aput v3, v0, v1

    const/16 v1, 0xd8b

    aput v3, v0, v1

    const/16 v1, 0xd92

    aput v3, v0, v1

    const/16 v1, 0xda7

    .line 84
    aput v3, v0, v1

    const/16 v1, 0xda8

    aput v3, v0, v1

    const/16 v1, 0xda9

    aput v3, v0, v1

    const/16 v1, 0xdaa

    aput v3, v0, v1

    const/16 v1, 0xdad

    aput v3, v0, v1

    const/16 v1, 0xdb1

    aput v3, v0, v1

    const/16 v1, 0xdb5

    aput v3, v0, v1

    const/16 v1, 0xdb6

    aput v3, v0, v1

    const/16 v1, 0xdb7

    aput v3, v0, v1

    const/16 v1, 0xdb8

    aput v3, v0, v1

    const/16 v1, 0xdbf

    aput v3, v0, v1

    const/16 v1, 0xdc3

    aput v3, v0, v1

    const/16 v1, 0xdc4

    aput v3, v0, v1

    const/16 v1, 0xdc5

    aput v3, v0, v1

    const/16 v1, 0xdc9

    .line 85
    aput v3, v0, v1

    const/16 v1, 0xdd0

    aput v3, v0, v1

    const/16 v1, 0xdd7

    aput v3, v0, v1

    const/16 v1, 0xdd9

    aput v3, v0, v1

    const/16 v1, 0xdda

    aput v3, v0, v1

    const/16 v1, 0xdde

    aput v3, v0, v1

    const/16 v1, 0xddf

    aput v3, v0, v1

    const/16 v1, 0xde2

    aput v3, v0, v1

    const/16 v1, 0xde5

    aput v3, v0, v1

    const/16 v1, 0xde9

    aput v3, v0, v1

    const/16 v1, 0xdec

    aput v3, v0, v1

    const/16 v1, 0xdf0    # 5.0E-42f

    aput v3, v0, v1

    const/16 v1, 0xdf3

    aput v3, v0, v1

    const/16 v1, 0xdf7

    aput v3, v0, v1

    const/16 v1, 0xdfc

    .line 86
    aput v3, v0, v1

    const/16 v1, 0xe09

    aput v3, v0, v1

    const/16 v1, 0xe0a

    aput v3, v0, v1

    const/16 v1, 0xe11

    aput v3, v0, v1

    const/16 v1, 0xe18

    aput v3, v0, v1

    const/16 v1, 0xe1f

    aput v3, v0, v1

    const/16 v1, 0xe25

    aput v3, v0, v1

    const/16 v1, 0xe26

    aput v3, v0, v1

    const/16 v1, 0xe27

    aput v3, v0, v1

    const/16 v1, 0xe2e

    .line 87
    aput v3, v0, v1

    const/16 v1, 0xe3b

    aput v3, v0, v1

    const/16 v1, 0xe3c

    aput v3, v0, v1

    const/16 v1, 0xe43

    aput v3, v0, v1

    const/16 v1, 0xe4a

    aput v3, v0, v1

    const/16 v1, 0xe4e

    aput v3, v0, v1

    const/16 v1, 0xe51

    aput v3, v0, v1

    const/16 v1, 0xe56

    aput v3, v0, v1

    const/16 v1, 0xe57

    aput v3, v0, v1

    const/16 v1, 0xe5d

    .line 88
    aput v3, v0, v1

    const/16 v1, 0xe64

    aput v3, v0, v1

    const/16 v1, 0xe6b

    aput v3, v0, v1

    const/16 v1, 0xe6e

    aput v3, v0, v1

    const/16 v1, 0xe72

    aput v3, v0, v1

    const/16 v1, 0xe74

    aput v3, v0, v1

    const/16 v1, 0xe79

    aput v3, v0, v1

    const/16 v1, 0xe7a

    aput v3, v0, v1

    const/16 v1, 0xe80

    aput v3, v0, v1

    const/16 v1, 0xe82

    aput v3, v0, v1

    const/16 v1, 0xe87

    aput v3, v0, v1

    const/16 v1, 0xe8a

    aput v3, v0, v1

    const/16 v1, 0xe8e

    .line 89
    aput v3, v0, v1

    const/16 v1, 0xe8f

    aput v3, v0, v1

    const/16 v1, 0xe96

    aput v3, v0, v1

    const/16 v1, 0xe9d

    aput v3, v0, v1

    const/16 v1, 0xea4

    aput v3, v0, v1

    const/16 v1, 0xeab

    aput v3, v0, v1

    const/16 v1, 0xeb2

    aput v3, v0, v1

    const/16 v1, 0xeb8

    aput v3, v0, v1

    const/16 v1, 0xeb9

    aput v3, v0, v1

    const/16 v1, 0xeba

    aput v3, v0, v1

    const/16 v1, 0xecc

    .line 90
    aput v3, v0, v1

    const/16 v1, 0xecd

    aput v3, v0, v1

    const/16 v1, 0xecf

    aput v3, v0, v1

    const/16 v1, 0xed3

    aput v3, v0, v1

    const/16 v1, 0xed5

    aput v3, v0, v1

    const/16 v1, 0xed7

    aput v3, v0, v1

    const/16 v1, 0xeda

    aput v3, v0, v1

    const/16 v1, 0xedc

    aput v3, v0, v1

    const/16 v1, 0xede

    aput v3, v0, v1

    const/16 v1, 0xee1

    aput v3, v0, v1

    const/16 v1, 0xee3

    aput v3, v0, v1

    const/16 v1, 0xee5

    aput v3, v0, v1

    const/16 v1, 0xee8

    aput v3, v0, v1

    const/16 v1, 0xeec

    aput v3, v0, v1

    const/16 v1, 0xefd

    .line 91
    aput v3, v0, v1

    const/16 v1, 0xeff

    aput v3, v0, v1

    const/16 v1, 0xf00

    aput v3, v0, v1

    const/16 v1, 0xf04

    aput v3, v0, v1

    const/16 v1, 0xf05

    aput v3, v0, v1

    const/16 v1, 0xf08

    aput v3, v0, v1

    const/16 v1, 0xf0b

    aput v3, v0, v1

    const/16 v1, 0xf0f

    aput v3, v0, v1

    const/16 v1, 0xf12

    aput v3, v0, v1

    const/16 v1, 0xf16

    aput v3, v0, v1

    const/16 v1, 0xf19

    aput v3, v0, v1

    const/16 v1, 0xf1d

    aput v3, v0, v1

    const/16 v1, 0xf2f

    .line 92
    aput v3, v0, v1

    const/16 v1, 0xf30

    aput v3, v0, v1

    const/16 v1, 0xf31

    aput v3, v0, v1

    const/16 v1, 0xf35

    aput v3, v0, v1

    const/16 v1, 0xf39

    aput v3, v0, v1

    const/16 v1, 0xf3c

    aput v3, v0, v1

    const/16 v1, 0xf40

    aput v3, v0, v1

    const/16 v1, 0xf43

    aput v3, v0, v1

    const/16 v1, 0xf47

    aput v3, v0, v1

    const/16 v1, 0xf4b

    aput v3, v0, v1

    const/16 v1, 0xf4c

    aput v3, v0, v1

    const/16 v1, 0xf4d

    aput v3, v0, v1

    const/16 v1, 0xf5f

    .line 94
    aput v3, v0, v1

    const/16 v1, 0xf60

    aput v3, v0, v1

    const/16 v1, 0xf61

    aput v3, v0, v1

    const/16 v1, 0xf62

    aput v3, v0, v1

    const/16 v1, 0xf66

    aput v3, v0, v1

    const/16 v1, 0xf6a

    aput v3, v0, v1

    const/16 v1, 0xf6d

    aput v3, v0, v1

    const/16 v1, 0xf6e

    aput v3, v0, v1

    const/16 v1, 0xf6f

    aput v3, v0, v1

    const/16 v1, 0xf70

    aput v3, v0, v1

    const/16 v1, 0xf74

    aput v3, v0, v1

    const/16 v1, 0xf7b

    aput v3, v0, v1

    const/16 v1, 0xf91

    .line 95
    aput v3, v0, v1

    const/16 v1, 0xf92

    aput v3, v0, v1

    const/16 v1, 0xf93

    aput v3, v0, v1

    const/16 v1, 0xf94

    aput v3, v0, v1

    const/16 v1, 0xf97

    aput v3, v0, v1

    const/16 v1, 0xf9b

    aput v3, v0, v1

    const/16 v1, 0xf9f

    aput v3, v0, v1

    const/16 v1, 0xfa0

    aput v3, v0, v1

    const/16 v1, 0xfa1

    aput v3, v0, v1

    const/16 v1, 0xfa2

    aput v3, v0, v1

    const/16 v1, 0xfa9

    aput v3, v0, v1

    const/16 v1, 0xfb0

    aput v3, v0, v1

    const/16 v1, 0xfc1

    .line 96
    aput v3, v0, v1

    const/16 v1, 0xfc3

    aput v3, v0, v1

    const/16 v1, 0xfc4

    aput v3, v0, v1

    const/16 v1, 0xfc8

    aput v3, v0, v1

    const/16 v1, 0xfc9

    aput v3, v0, v1

    const/16 v1, 0xfcc

    aput v3, v0, v1

    const/16 v1, 0xfcf

    aput v3, v0, v1

    const/16 v1, 0xfd6

    aput v3, v0, v1

    const/16 v1, 0xfdd

    aput v3, v0, v1

    const/16 v1, 0xff3

    .line 97
    aput v3, v0, v1

    const/16 v1, 0xff4

    aput v3, v0, v1

    const/16 v1, 0xff5

    aput v3, v0, v1

    const/16 v1, 0xff9

    aput v3, v0, v1

    const/16 v1, 0x1001

    aput v3, v0, v1

    const/16 v1, 0x1002

    aput v3, v0, v1

    const/16 v1, 0x1003

    aput v3, v0, v1

    const/16 v1, 0x100b

    aput v3, v0, v1

    const/16 v1, 0x100e

    aput v3, v0, v1

    const/16 v1, 0x100f

    aput v3, v0, v1

    const/16 v1, 0x1010

    aput v3, v0, v1

    const/16 v1, 0x1011

    aput v3, v0, v1

    const/16 v1, 0x1016

    .line 98
    aput v3, v0, v1

    const/16 v1, 0x101d

    aput v3, v0, v1

    const/16 v1, 0x1023

    aput v3, v0, v1

    const/16 v1, 0x1024

    aput v3, v0, v1

    const/16 v1, 0x1025

    aput v3, v0, v1

    const/16 v1, 0x102b

    aput v3, v0, v1

    const/16 v1, 0x1032

    aput v3, v0, v1

    const/16 v1, 0x1039

    aput v3, v0, v1

    const/16 v1, 0x103c

    aput v3, v0, v1

    const/16 v1, 0x1041

    aput v3, v0, v1

    const/16 v1, 0x1042

    aput v3, v0, v1

    const/16 v1, 0x1054

    .line 99
    aput v3, v0, v1

    const/16 v1, 0x1058

    aput v3, v0, v1

    const/16 v1, 0x105b

    aput v3, v0, v1

    const/16 v1, 0x105f

    aput v3, v0, v1

    const/16 v1, 0x1062

    aput v3, v0, v1

    const/16 v1, 0x1066

    aput v3, v0, v1

    const/16 v1, 0x1069

    aput v3, v0, v1

    const/16 v1, 0x106c

    aput v3, v0, v1

    const/16 v1, 0x106d

    aput v3, v0, v1

    const/16 v1, 0x1071

    aput v3, v0, v1

    const/16 v1, 0x1072

    aput v3, v0, v1

    const/16 v1, 0x1074

    aput v3, v0, v1

    const/16 v1, 0x1085

    .line 100
    aput v3, v0, v1

    const/16 v1, 0x1089

    aput v3, v0, v1

    const/16 v1, 0x108c

    aput v3, v0, v1

    const/16 v1, 0x1090

    aput v3, v0, v1

    const/16 v1, 0x1093

    aput v3, v0, v1

    const/16 v1, 0x1097

    aput v3, v0, v1

    const/16 v1, 0x109b

    aput v3, v0, v1

    const/16 v1, 0x109d

    aput v3, v0, v1

    const/16 v1, 0x10a3

    aput v3, v0, v1

    const/16 v1, 0x10b6

    .line 101
    aput v3, v0, v1

    const/16 v1, 0x10ba    # 6.0E-42f

    aput v3, v0, v1

    const/16 v1, 0x10bd

    aput v3, v0, v1

    const/16 v1, 0x10c1

    aput v3, v0, v1

    const/16 v1, 0x10c4

    aput v3, v0, v1

    const/16 v1, 0x10c6

    aput v3, v0, v1

    const/16 v1, 0x10c8

    aput v3, v0, v1

    const/16 v1, 0x10cb

    aput v3, v0, v1

    const/16 v1, 0x10cd

    aput v3, v0, v1

    const/16 v1, 0x10cf

    aput v3, v0, v1

    const/16 v1, 0x10d3

    aput v3, v0, v1

    const/16 v1, 0x10d5

    aput v3, v0, v1

    const/16 v1, 0x10e7

    .line 102
    aput v3, v0, v1

    const/16 v1, 0x10eb

    aput v3, v0, v1

    const/16 v1, 0x10ef

    aput v3, v0, v1

    const/16 v1, 0x10f1

    aput v3, v0, v1

    const/16 v1, 0x10f7

    aput v3, v0, v1

    const/16 v1, 0x10fd

    aput v3, v0, v1

    const/16 v1, 0x10ff

    aput v3, v0, v1

    const/16 v1, 0x1103

    aput v3, v0, v1

    const/16 v1, 0x1107

    aput v3, v0, v1

    const/16 v1, 0x1118

    .line 103
    aput v3, v0, v1

    const/16 v1, 0x111c

    aput v3, v0, v1

    const/16 v1, 0x111f

    aput v3, v0, v1

    const/16 v1, 0x1123

    aput v3, v0, v1

    const/16 v1, 0x1127

    aput v3, v0, v1

    const/16 v1, 0x1128

    aput v3, v0, v1

    const/16 v1, 0x1129

    aput v3, v0, v1

    const/16 v1, 0x112a

    aput v3, v0, v1

    const/16 v1, 0x1131

    aput v3, v0, v1

    const/16 v1, 0x1135

    aput v3, v0, v1

    const/16 v1, 0x1136

    aput v3, v0, v1

    const/16 v1, 0x1137

    aput v3, v0, v1

    const/16 v1, 0x1149

    .line 104
    aput v3, v0, v1

    const/16 v1, 0x114a

    aput v3, v0, v1

    const/16 v1, 0x114b

    aput v3, v0, v1

    const/16 v1, 0x114c

    aput v3, v0, v1

    const/16 v1, 0x114d

    aput v3, v0, v1

    const/16 v1, 0x1153

    aput v3, v0, v1

    const/16 v1, 0x1159

    aput v3, v0, v1

    const/16 v1, 0x115f

    aput v3, v0, v1

    const/16 v1, 0x1165

    aput v3, v0, v1

    const/16 v1, 0x1166

    aput v3, v0, v1

    const/16 v1, 0x1167

    aput v3, v0, v1

    const/16 v1, 0x1168

    aput v3, v0, v1

    const/16 v1, 0x1169

    aput v3, v0, v1

    const/16 v1, 0x1b91

    .line 162
    aput v3, v0, v1

    const/16 v1, 0x1b92

    aput v3, v0, v1

    const/16 v1, 0x1b93

    aput v3, v0, v1

    const/16 v1, 0x1b98

    aput v3, v0, v1

    const/16 v1, 0x1b9a

    aput v3, v0, v1

    const/16 v1, 0x1b9f

    aput v3, v0, v1

    const/16 v1, 0x1ba0

    aput v3, v0, v1

    const/16 v1, 0x1ba1

    aput v3, v0, v1

    .line 7
    sput-object v0, Lcom/chartcross/view/MxDotMatrix;->mCharMap:[I

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput v2, p0, Lcom/chartcross/view/MxDotMatrix;->mGap:I

    .line 181
    const/16 v0, 0x8

    iput v0, p0, Lcom/chartcross/view/MxDotMatrix;->mSegRatio:I

    .line 182
    const/4 v0, 0x5

    iput v0, p0, Lcom/chartcross/view/MxDotMatrix;->mSegMultiplier:I

    .line 183
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/chartcross/view/MxDotMatrix;->mOnColour:I

    .line 184
    const/16 v0, 0x40

    const/16 v1, 0xff

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/chartcross/view/MxDotMatrix;->mOffColour:I

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartcross/view/MxDotMatrix;->mShowOff:Z

    .line 186
    iput-boolean v2, p0, Lcom/chartcross/view/MxDotMatrix;->mGlow:Z

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartcross/view/MxDotMatrix;->mPaint:Landroid/graphics/Paint;

    .line 189
    new-instance v0, Landroid/graphics/BlurMaskFilter;

    const/high16 v1, 0x40e00000    # 7.0f

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v0, v1, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    iput-object v0, p0, Lcom/chartcross/view/MxDotMatrix;->mButtonBlur:Landroid/graphics/MaskFilter;

    .line 5
    return-void
.end method


# virtual methods
.method public DrawDigit(Landroid/graphics/Canvas;CDDDID)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "digit"    # C
    .param p3, "left"    # D
    .param p5, "bottom"    # D
    .param p7, "height"    # D
    .param p9, "columns"    # I
    .param p10, "cellSize"    # D

    .prologue
    .line 987
    const/16 v9, 0x20

    sub-int v9, p2, v9

    mul-int/lit8 v2, v9, 0x31

    .line 988
    .local v2, "offset":I
    if-ltz v2, :cond_0

    sget-object v9, Lcom/chartcross/view/MxDotMatrix;->mCharMap:[I

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 990
    iget-object v9, p0, Lcom/chartcross/view/MxDotMatrix;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 991
    iget-object v9, p0, Lcom/chartcross/view/MxDotMatrix;->mPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 992
    const/4 v6, 0x0

    .local v6, "y":I
    :goto_0
    const/4 v9, 0x7

    if-lt v6, v9, :cond_1

    .line 1013
    .end local v6    # "y":I
    :cond_0
    return-void

    .line 994
    .restart local v6    # "y":I
    :cond_1
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_1
    move v0, v3

    move/from16 v1, p9

    if-lt v0, v1, :cond_2

    .line 992
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 996
    :cond_2
    int-to-double v9, v3

    mul-double v9, v9, p10

    add-double v9, v9, p3

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, p10, v11

    add-double v4, v9, v11

    .line 997
    .local v4, "xpos":D
    sub-double v9, p5, p7

    int-to-double v11, v6

    mul-double v11, v11, p10

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double v11, p10, v11

    add-double v7, v9, v11

    .line 998
    .local v7, "ypos":D
    sget-object v9, Lcom/chartcross/view/MxDotMatrix;->mCharMap:[I

    mul-int/lit8 v10, v6, 0x7

    add-int/2addr v10, v3

    add-int/lit8 v10, v10, 0x1

    add-int/2addr v10, v2

    aget v9, v9, v10

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    .line 1000
    iget-object v9, p0, Lcom/chartcross/view/MxDotMatrix;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/chartcross/view/MxDotMatrix;->mOnColour:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1001
    double-to-float v9, v4

    double-to-float v10, v7

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, p10

    double-to-float v11, v11

    iget-object v12, p0, Lcom/chartcross/view/MxDotMatrix;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 994
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1006
    :cond_4
    iget-object v9, p0, Lcom/chartcross/view/MxDotMatrix;->mPaint:Landroid/graphics/Paint;

    iget v10, p0, Lcom/chartcross/view/MxDotMatrix;->mOffColour:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1007
    iget-boolean v9, p0, Lcom/chartcross/view/MxDotMatrix;->mShowOff:Z

    if-eqz v9, :cond_3

    double-to-float v9, v4

    double-to-float v10, v7

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, p10

    double-to-float v11, v11

    iget-object v12, p0, Lcom/chartcross/view/MxDotMatrix;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2
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
    .line 817
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/chartcross/view/MxDotMatrix;->GetTextHeight(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;II)I

    move-result v4

    .local v4, "textHeight":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 818
    invoke-virtual/range {v0 .. v7}, Lcom/chartcross/view/MxDotMatrix;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIII)V

    .line 819
    return-void
.end method

.method public DrawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIII)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "Height"    # I
    .param p5, "Alignment"    # I
    .param p6, "MinDigits"    # I
    .param p7, "MinHeight"    # I

    .prologue
    .line 827
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    sub-int v14, v2, v3

    .line 828
    .local v14, "boundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    sub-int v15, v2, v3

    .line 830
    .local v15, "boundsWidth":I
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v2, v0

    const-wide/high16 v4, 0x401c000000000000L    # 7.0

    div-double v12, v2, v4

    .line 832
    .local v12, "cellSize":D
    const/16 v19, 0x0

    .line 833
    .local v19, "padCellCount":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    .line 835
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v2, p6, v2

    mul-int/lit8 v19, v2, 0x6

    .line 838
    :cond_0
    const/16 v16, 0x0

    .line 839
    .local v16, "cellCount":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v17

    move v1, v2

    if-lt v0, v1, :cond_1

    .line 872
    add-int v2, v16, v19

    const/4 v3, 0x1

    sub-int v20, v2, v3

    .line 873
    .local v20, "panelCellCount":I
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v2, v0

    mul-double/2addr v2, v12

    move-wide v0, v2

    double-to-int v0, v0

    move/from16 v21, v0

    .line 884
    .local v21, "panelWidth":I
    packed-switch p5, :pswitch_data_0

    .line 888
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    int-to-double v5, v2

    .line 889
    .local v5, "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    int-to-double v7, v2

    .line 933
    .local v7, "TextBottom":D
    :goto_1
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_8

    .line 939
    const/16 v17, 0x0

    :goto_3
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v17

    move v1, v2

    if-lt v0, v1, :cond_9

    .line 982
    return-void

    .line 841
    .end local v5    # "TextLeft":D
    .end local v7    # "TextBottom":D
    .end local v18    # "j":I
    .end local v20    # "panelCellCount":I
    .end local v21    # "panelWidth":I
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 842
    .local v4, "digit":C
    const/16 v2, 0x3a

    if-ne v4, v2, :cond_2

    .line 844
    add-int/lit8 v16, v16, 0x5

    .line 839
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 846
    :cond_2
    const/16 v2, 0x2e

    if-ne v4, v2, :cond_3

    .line 848
    add-int/lit8 v16, v16, 0x3

    goto :goto_4

    .line 850
    :cond_3
    const/16 v2, 0x27

    if-ne v4, v2, :cond_4

    .line 852
    add-int/lit8 v16, v16, 0x4

    goto :goto_4

    .line 854
    :cond_4
    const/16 v2, 0x22

    if-ne v4, v2, :cond_5

    .line 856
    add-int/lit8 v16, v16, 0x4

    goto :goto_4

    .line 858
    :cond_5
    const/16 v2, 0xb0

    if-ne v4, v2, :cond_6

    .line 860
    add-int/lit8 v16, v16, 0x4

    goto :goto_4

    .line 862
    :cond_6
    const/16 v2, 0x2d

    if-ne v4, v2, :cond_7

    .line 864
    add-int/lit8 v16, v16, 0x4

    goto :goto_4

    .line 868
    :cond_7
    add-int/lit8 v16, v16, 0x6

    goto :goto_4

    .line 893
    .end local v4    # "digit":C
    .restart local v20    # "panelCellCount":I
    .restart local v21    # "panelWidth":I
    :pswitch_0
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    int-to-double v5, v2

    .line 894
    .restart local v5    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    div-int/lit8 v3, v14, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, p4, 0x2

    add-int/2addr v2, v3

    int-to-double v7, v2

    .line 895
    .restart local v7    # "TextBottom":D
    goto :goto_1

    .line 898
    .end local v5    # "TextLeft":D
    .end local v7    # "TextBottom":D
    :pswitch_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    int-to-double v5, v2

    .line 899
    .restart local v5    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v2, v0

    add-int v2, v2, p4

    int-to-double v7, v2

    .line 900
    .restart local v7    # "TextBottom":D
    goto :goto_1

    .line 903
    .end local v5    # "TextLeft":D
    .end local v7    # "TextBottom":D
    :pswitch_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    div-int/lit8 v3, v15, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v21, 0x2

    sub-int/2addr v2, v3

    int-to-double v5, v2

    .line 904
    .restart local v5    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    int-to-double v7, v2

    .line 905
    .restart local v7    # "TextBottom":D
    goto :goto_1

    .line 908
    .end local v5    # "TextLeft":D
    .end local v7    # "TextBottom":D
    :pswitch_3
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    div-int/lit8 v3, v15, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v21, 0x2

    sub-int/2addr v2, v3

    int-to-double v5, v2

    .line 909
    .restart local v5    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    div-int/lit8 v3, v14, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, p4, 0x2

    add-int/2addr v2, v3

    int-to-double v7, v2

    .line 910
    .restart local v7    # "TextBottom":D
    goto/16 :goto_1

    .line 913
    .end local v5    # "TextLeft":D
    .end local v7    # "TextBottom":D
    :pswitch_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v2, v0

    div-int/lit8 v3, v15, 0x2

    add-int/2addr v2, v3

    div-int/lit8 v3, v21, 0x2

    sub-int/2addr v2, v3

    int-to-double v5, v2

    .line 914
    .restart local v5    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v2, v0

    add-int v2, v2, p4

    int-to-double v7, v2

    .line 915
    .restart local v7    # "TextBottom":D
    goto/16 :goto_1

    .line 918
    .end local v5    # "TextLeft":D
    .end local v7    # "TextBottom":D
    :pswitch_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    sub-int v2, v2, v21

    int-to-double v5, v2

    .line 919
    .restart local v5    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    int-to-double v7, v2

    .line 920
    .restart local v7    # "TextBottom":D
    goto/16 :goto_1

    .line 923
    .end local v5    # "TextLeft":D
    .end local v7    # "TextBottom":D
    :pswitch_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    sub-int v2, v2, v21

    int-to-double v5, v2

    .line 924
    .restart local v5    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v2, v0

    div-int/lit8 v3, v14, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v3, p4, 0x2

    add-int/2addr v2, v3

    int-to-double v7, v2

    .line 925
    .restart local v7    # "TextBottom":D
    goto/16 :goto_1

    .line 928
    .end local v5    # "TextLeft":D
    .end local v7    # "TextBottom":D
    :pswitch_7
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v2, v0

    sub-int v2, v2, v21

    int-to-double v5, v2

    .line 929
    .restart local v5    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v2, v0

    add-int v2, v2, p4

    int-to-double v7, v2

    .restart local v7    # "TextBottom":D
    goto/16 :goto_1

    .line 935
    .restart local v18    # "j":I
    :cond_8
    const/16 v4, 0x20

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v9, v0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v13}, Lcom/chartcross/view/MxDotMatrix;->DrawDigit(Landroid/graphics/Canvas;CDDDID)V

    .line 936
    add-double/2addr v5, v12

    .line 933
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 942
    :cond_9
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 944
    .restart local v4    # "digit":C
    sparse-switch v4, :sswitch_data_0

    .line 947
    const/4 v11, 0x6

    .line 975
    .local v11, "cols":I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move/from16 v0, v17

    move v1, v2

    if-ne v0, v1, :cond_a

    .line 977
    add-int/lit8 v11, v11, -0x1

    .line 979
    :cond_a
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v9, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v13}, Lcom/chartcross/view/MxDotMatrix;->DrawDigit(Landroid/graphics/Canvas;CDDDID)V

    .line 980
    int-to-double v2, v11

    mul-double/2addr v2, v12

    add-double/2addr v5, v2

    .line 939
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_3

    .line 951
    .end local v11    # "cols":I
    :sswitch_0
    const/4 v11, 0x3

    .line 952
    .restart local v11    # "cols":I
    goto :goto_5

    .line 955
    .end local v11    # "cols":I
    :sswitch_1
    const/4 v11, 0x4

    .line 956
    .restart local v11    # "cols":I
    goto :goto_5

    .line 959
    .end local v11    # "cols":I
    :sswitch_2
    const/4 v11, 0x4

    .line 960
    .restart local v11    # "cols":I
    goto :goto_5

    .line 963
    .end local v11    # "cols":I
    :sswitch_3
    const/4 v11, 0x4

    .line 964
    .restart local v11    # "cols":I
    goto :goto_5

    .line 967
    .end local v11    # "cols":I
    :sswitch_4
    const/4 v11, 0x5

    .line 968
    .restart local v11    # "cols":I
    goto :goto_5

    .line 971
    .end local v11    # "cols":I
    :sswitch_5
    const/4 v11, 0x4

    .restart local v11    # "cols":I
    goto :goto_5

    .line 884
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
    .end packed-switch

    .line 944
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x2d -> :sswitch_5
        0x2e -> :sswitch_0
        0x3a -> :sswitch_4
        0xb0 -> :sswitch_3
    .end sparse-switch
.end method

.method public DrawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIIIDIZ)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "LAlignment"    # I
    .param p5, "RAlignment"    # I
    .param p6, "MinDigits"    # I
    .param p7, "RDigits"    # I
    .param p8, "SmallSizeRatio"    # D
    .param p10, "MinHeight"    # I
    .param p11, "HideSmall"    # Z

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p10

    move-wide/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lcom/chartcross/view/MxDotMatrix;->GetTextHeight(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIID)I

    move-result v4

    .local v4, "textHeight":I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move/from16 v12, p11

    .line 299
    invoke-virtual/range {v0 .. v12}, Lcom/chartcross/view/MxDotMatrix;->DrawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIIIIDIZ)V

    .line 300
    return-void
.end method

.method public DrawText(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIIIIDIZ)V
    .locals 41
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "Height"    # I
    .param p5, "LAlignment"    # I
    .param p6, "RAlignment"    # I
    .param p7, "MinDigits"    # I
    .param p8, "RDigits"    # I
    .param p9, "SmallSizeRatio"    # D
    .param p11, "MinHeight"    # I
    .param p12, "HideSmall"    # Z

    .prologue
    .line 308
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v4, v0

    sub-int v29, v3, v4

    .line 309
    .local v29, "boundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v4, v0

    sub-int v30, v3, v4

    .line 311
    .local v30, "boundsWidth":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v33

    .line 312
    .local v33, "digitCount":I
    const/4 v3, 0x0

    sub-int v4, v33, p8

    move-object/from16 v0, p2

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    .line 313
    .local v27, "TextL":Ljava/lang/String;
    sub-int v3, v33, p8

    move-object/from16 v0, p2

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .line 315
    .local v28, "TextR":Ljava/lang/String;
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v3, v0

    const-wide/high16 v5, 0x401c000000000000L    # 7.0

    div-double v13, v3, v5

    .line 316
    .local v13, "cellSizeL":D
    mul-double v25, v13, p9

    .line 318
    .local v25, "cellSizeR":D
    const/16 v36, 0x0

    .line 319
    .local v36, "padCellCount":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    move v0, v3

    move/from16 v1, p7

    if-ge v0, v1, :cond_0

    .line 321
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, p7, v3

    mul-int/lit8 v36, v3, 0x6

    .line 324
    :cond_0
    const/16 v31, 0x0

    .line 325
    .local v31, "cellCountL":I
    const/16 v34, 0x0

    .local v34, "i":I
    :goto_0
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v34

    move v1, v3

    if-lt v0, v1, :cond_2

    .line 358
    add-int v37, v31, v36

    .line 359
    .local v37, "panelCellCountL":I
    move/from16 v0, v37

    int-to-double v0, v0

    move-wide v3, v0

    mul-double/2addr v3, v13

    move-wide v0, v3

    double-to-int v0, v0

    move/from16 v39, v0

    .line 361
    .local v39, "panelWidthL":I
    const/16 v32, 0x0

    .line 362
    .local v32, "cellCountR":I
    const/16 v34, 0x0

    :goto_1
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v34

    move v1, v3

    if-lt v0, v1, :cond_9

    .line 395
    move/from16 v0, v32

    int-to-double v0, v0

    move-wide v3, v0

    mul-double v3, v3, v25

    move-wide v0, v3

    double-to-int v0, v0

    move/from16 v40, v0

    .line 396
    .local v40, "panelWidthR":I
    add-int v38, v39, v40

    .line 407
    .local v38, "panelWidth":I
    packed-switch p5, :pswitch_data_0

    .line 411
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    int-to-double v6, v3

    .line 412
    .local v6, "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    int-to-double v8, v3

    .line 456
    .local v8, "TextBottom":D
    :goto_2
    const/16 v35, 0x0

    .local v35, "j":I
    :goto_3
    move/from16 v0, v35

    move/from16 v1, v36

    if-lt v0, v1, :cond_10

    .line 462
    const/16 v34, 0x0

    :goto_4
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v34

    move v1, v3

    if-lt v0, v1, :cond_11

    .line 506
    packed-switch p6, :pswitch_data_1

    .line 527
    :goto_5
    :pswitch_0
    if-nez p12, :cond_1

    .line 529
    const/16 v34, 0x0

    :goto_6
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v34

    move v1, v3

    if-lt v0, v1, :cond_12

    .line 751
    :cond_1
    return-void

    .line 327
    .end local v6    # "TextLeft":D
    .end local v8    # "TextBottom":D
    .end local v32    # "cellCountR":I
    .end local v35    # "j":I
    .end local v37    # "panelCellCountL":I
    .end local v38    # "panelWidth":I
    .end local v39    # "panelWidthL":I
    .end local v40    # "panelWidthR":I
    :cond_2
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 328
    .local v5, "digit":C
    const/16 v3, 0x3a

    if-ne v5, v3, :cond_3

    .line 330
    add-int/lit8 v31, v31, 0x5

    .line 325
    :goto_7
    add-int/lit8 v34, v34, 0x1

    goto :goto_0

    .line 332
    :cond_3
    const/16 v3, 0x2e

    if-ne v5, v3, :cond_4

    .line 334
    add-int/lit8 v31, v31, 0x3

    goto :goto_7

    .line 336
    :cond_4
    const/16 v3, 0x27

    if-ne v5, v3, :cond_5

    .line 338
    add-int/lit8 v31, v31, 0x4

    goto :goto_7

    .line 340
    :cond_5
    const/16 v3, 0x22

    if-ne v5, v3, :cond_6

    .line 342
    add-int/lit8 v31, v31, 0x4

    goto :goto_7

    .line 344
    :cond_6
    const/16 v3, 0xb0

    if-ne v5, v3, :cond_7

    .line 346
    add-int/lit8 v31, v31, 0x4

    goto :goto_7

    .line 348
    :cond_7
    const/16 v3, 0x2d

    if-ne v5, v3, :cond_8

    .line 350
    add-int/lit8 v31, v31, 0x4

    goto :goto_7

    .line 354
    :cond_8
    add-int/lit8 v31, v31, 0x6

    goto :goto_7

    .line 364
    .end local v5    # "digit":C
    .restart local v32    # "cellCountR":I
    .restart local v37    # "panelCellCountL":I
    .restart local v39    # "panelWidthL":I
    :cond_9
    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 365
    .restart local v5    # "digit":C
    const/16 v3, 0x3a

    if-ne v5, v3, :cond_a

    .line 367
    add-int/lit8 v32, v32, 0x5

    .line 362
    :goto_8
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_1

    .line 369
    :cond_a
    const/16 v3, 0x2e

    if-ne v5, v3, :cond_b

    .line 371
    add-int/lit8 v32, v32, 0x3

    goto :goto_8

    .line 373
    :cond_b
    const/16 v3, 0x27

    if-ne v5, v3, :cond_c

    .line 375
    add-int/lit8 v32, v32, 0x4

    goto :goto_8

    .line 377
    :cond_c
    const/16 v3, 0x22

    if-ne v5, v3, :cond_d

    .line 379
    add-int/lit8 v32, v32, 0x4

    goto :goto_8

    .line 381
    :cond_d
    const/16 v3, 0xb0

    if-ne v5, v3, :cond_e

    .line 383
    add-int/lit8 v32, v32, 0x4

    goto :goto_8

    .line 385
    :cond_e
    const/16 v3, 0x2d

    if-ne v5, v3, :cond_f

    .line 387
    add-int/lit8 v32, v32, 0x4

    goto :goto_8

    .line 391
    :cond_f
    add-int/lit8 v32, v32, 0x6

    goto :goto_8

    .line 416
    .end local v5    # "digit":C
    .restart local v38    # "panelWidth":I
    .restart local v40    # "panelWidthR":I
    :pswitch_1
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    int-to-double v6, v3

    .line 417
    .restart local v6    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    div-int/lit8 v4, v29, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, p4, 0x2

    add-int/2addr v3, v4

    int-to-double v8, v3

    .line 418
    .restart local v8    # "TextBottom":D
    goto/16 :goto_2

    .line 421
    .end local v6    # "TextLeft":D
    .end local v8    # "TextBottom":D
    :pswitch_2
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    int-to-double v6, v3

    .line 422
    .restart local v6    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    add-int v3, v3, p4

    int-to-double v8, v3

    .line 423
    .restart local v8    # "TextBottom":D
    goto/16 :goto_2

    .line 426
    .end local v6    # "TextLeft":D
    .end local v8    # "TextBottom":D
    :pswitch_3
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    div-int/lit8 v4, v30, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v38, 0x2

    sub-int/2addr v3, v4

    int-to-double v6, v3

    .line 427
    .restart local v6    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    int-to-double v8, v3

    .line 428
    .restart local v8    # "TextBottom":D
    goto/16 :goto_2

    .line 431
    .end local v6    # "TextLeft":D
    .end local v8    # "TextBottom":D
    :pswitch_4
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    div-int/lit8 v4, v30, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v38, 0x2

    sub-int/2addr v3, v4

    int-to-double v6, v3

    .line 432
    .restart local v6    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    div-int/lit8 v4, v29, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, p4, 0x2

    add-int/2addr v3, v4

    int-to-double v8, v3

    .line 433
    .restart local v8    # "TextBottom":D
    goto/16 :goto_2

    .line 436
    .end local v6    # "TextLeft":D
    .end local v8    # "TextBottom":D
    :pswitch_5
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v3, v0

    div-int/lit8 v4, v30, 0x2

    add-int/2addr v3, v4

    div-int/lit8 v4, v38, 0x2

    sub-int/2addr v3, v4

    int-to-double v6, v3

    .line 437
    .restart local v6    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    add-int v3, v3, p4

    int-to-double v8, v3

    .line 438
    .restart local v8    # "TextBottom":D
    goto/16 :goto_2

    .line 441
    .end local v6    # "TextLeft":D
    .end local v8    # "TextBottom":D
    :pswitch_6
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    sub-int v3, v3, v38

    int-to-double v6, v3

    .line 442
    .restart local v6    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    int-to-double v8, v3

    .line 443
    .restart local v8    # "TextBottom":D
    goto/16 :goto_2

    .line 446
    .end local v6    # "TextLeft":D
    .end local v8    # "TextBottom":D
    :pswitch_7
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    sub-int v3, v3, v38

    int-to-double v6, v3

    .line 447
    .restart local v6    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v3, v0

    div-int/lit8 v4, v29, 0x2

    sub-int/2addr v3, v4

    div-int/lit8 v4, p4, 0x2

    add-int/2addr v3, v4

    int-to-double v8, v3

    .line 448
    .restart local v8    # "TextBottom":D
    goto/16 :goto_2

    .line 451
    .end local v6    # "TextLeft":D
    .end local v8    # "TextBottom":D
    :pswitch_8
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v3, v0

    sub-int v3, v3, v38

    int-to-double v6, v3

    .line 452
    .restart local v6    # "TextLeft":D
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v3, v0

    add-int v3, v3, p4

    int-to-double v8, v3

    .restart local v8    # "TextBottom":D
    goto/16 :goto_2

    .line 458
    .restart local v35    # "j":I
    :cond_10
    const/16 v5, 0x20

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v10, v0

    const/4 v12, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v14}, Lcom/chartcross/view/MxDotMatrix;->DrawDigit(Landroid/graphics/Canvas;CDDDID)V

    .line 459
    add-double/2addr v6, v13

    .line 456
    add-int/lit8 v35, v35, 0x1

    goto/16 :goto_3

    .line 465
    :cond_11
    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 467
    .restart local v5    # "digit":C
    sparse-switch v5, :sswitch_data_0

    .line 470
    const/4 v12, 0x6

    .line 502
    .local v12, "cols":I
    :goto_9
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v10, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v14}, Lcom/chartcross/view/MxDotMatrix;->DrawDigit(Landroid/graphics/Canvas;CDDDID)V

    .line 503
    int-to-double v3, v12

    mul-double/2addr v3, v13

    add-double/2addr v6, v3

    .line 462
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_4

    .line 474
    .end local v12    # "cols":I
    :sswitch_0
    const/4 v12, 0x3

    .line 475
    .restart local v12    # "cols":I
    goto :goto_9

    .line 478
    .end local v12    # "cols":I
    :sswitch_1
    const/4 v12, 0x4

    .line 479
    .restart local v12    # "cols":I
    goto :goto_9

    .line 482
    .end local v12    # "cols":I
    :sswitch_2
    const/4 v12, 0x4

    .line 483
    .restart local v12    # "cols":I
    goto :goto_9

    .line 486
    .end local v12    # "cols":I
    :sswitch_3
    const/4 v12, 0x4

    .line 487
    .restart local v12    # "cols":I
    goto :goto_9

    .line 490
    .end local v12    # "cols":I
    :sswitch_4
    const/4 v12, 0x5

    .line 491
    .restart local v12    # "cols":I
    goto :goto_9

    .line 494
    .end local v12    # "cols":I
    :sswitch_5
    const/4 v12, 0x4

    .restart local v12    # "cols":I
    goto :goto_9

    .line 511
    .end local v5    # "digit":C
    .end local v12    # "cols":I
    :pswitch_9
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v3, v0

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, p9

    sub-double/2addr v3, v10

    sub-double/2addr v8, v3

    .line 512
    goto/16 :goto_5

    .line 517
    :pswitch_a
    div-int/lit8 v3, p4, 0x2

    int-to-double v3, v3

    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v10, v0

    mul-double v10, v10, p9

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v12

    sub-double/2addr v3, v10

    sub-double/2addr v8, v3

    .line 518
    goto/16 :goto_5

    .line 532
    :cond_12
    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 534
    .restart local v5    # "digit":C
    sparse-switch v5, :sswitch_data_1

    .line 537
    const/4 v12, 0x6

    .line 565
    .restart local v12    # "cols":I
    :goto_a
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    move/from16 v0, v34

    move v1, v3

    if-ne v0, v1, :cond_13

    .line 567
    add-int/lit8 v12, v12, -0x1

    .line 569
    :cond_13
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide v3, v0

    mul-double v22, v3, p9

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, v5

    move-wide/from16 v18, v6

    move-wide/from16 v20, v8

    move/from16 v24, v12

    invoke-virtual/range {v15 .. v26}, Lcom/chartcross/view/MxDotMatrix;->DrawDigit(Landroid/graphics/Canvas;CDDDID)V

    .line 570
    int-to-double v3, v12

    mul-double v3, v3, v25

    add-double/2addr v6, v3

    .line 529
    add-int/lit8 v34, v34, 0x1

    goto/16 :goto_6

    .line 541
    .end local v12    # "cols":I
    :sswitch_6
    const/4 v12, 0x3

    .line 542
    .restart local v12    # "cols":I
    goto :goto_a

    .line 545
    .end local v12    # "cols":I
    :sswitch_7
    const/4 v12, 0x4

    .line 546
    .restart local v12    # "cols":I
    goto :goto_a

    .line 549
    .end local v12    # "cols":I
    :sswitch_8
    const/4 v12, 0x4

    .line 550
    .restart local v12    # "cols":I
    goto :goto_a

    .line 553
    .end local v12    # "cols":I
    :sswitch_9
    const/4 v12, 0x4

    .line 554
    .restart local v12    # "cols":I
    goto :goto_a

    .line 557
    .end local v12    # "cols":I
    :sswitch_a
    const/4 v12, 0x5

    .line 558
    .restart local v12    # "cols":I
    goto :goto_a

    .line 561
    .end local v12    # "cols":I
    :sswitch_b
    const/4 v12, 0x4

    .restart local v12    # "cols":I
    goto :goto_a

    .line 407
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

    .line 506
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

    .line 467
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x2d -> :sswitch_5
        0x2e -> :sswitch_0
        0x3a -> :sswitch_4
        0xb0 -> :sswitch_3
    .end sparse-switch

    .line 534
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_8
        0x27 -> :sswitch_7
        0x2d -> :sswitch_b
        0x2e -> :sswitch_6
        0x3a -> :sswitch_a
        0xb0 -> :sswitch_9
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
    .line 755
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v4, v15, v16

    .line 756
    .local v4, "boundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v5, v15, v16

    .line 758
    .local v5, "boundsWidth":I
    int-to-double v15, v4

    const-wide/high16 v17, 0x401c000000000000L    # 7.0

    div-double v7, v15, v17

    .line 760
    .local v7, "cellSize":D
    const/4 v11, 0x0

    .line 761
    .local v11, "padCellCount":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    move v0, v15

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 763
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    sub-int v15, p4, v15

    mul-int/lit8 v11, v15, 0x6

    .line 767
    :cond_0
    const/4 v6, 0x0

    .line 768
    .local v6, "cellCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v10, v15, :cond_2

    .line 801
    add-int v15, v6, v11

    const/16 v16, 0x1

    sub-int v12, v15, v16

    .line 802
    .local v12, "panelCellCount":I
    move v14, v4

    .line 803
    .local v14, "textHeight":I
    int-to-double v15, v12

    mul-double/2addr v15, v7

    double-to-int v13, v15

    .line 805
    .local v13, "panelWidth":I
    int-to-double v15, v5

    move v0, v13

    int-to-double v0, v0

    move-wide/from16 v17, v0

    div-double v2, v15, v17

    .line 806
    .local v2, "SizeRatio":D
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpg-double v15, v2, v15

    if-gez v15, :cond_1

    .line 808
    mul-double/2addr v7, v2

    .line 809
    const-wide/high16 v15, 0x401c000000000000L    # 7.0

    mul-double/2addr v15, v7

    double-to-int v14, v15

    .line 812
    :cond_1
    return v14

    .line 770
    .end local v2    # "SizeRatio":D
    .end local v12    # "panelCellCount":I
    .end local v13    # "panelWidth":I
    .end local v14    # "textHeight":I
    :cond_2
    move-object/from16 v0, p2

    move v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 771
    .local v9, "digit":C
    const/16 v15, 0x3a

    if-ne v9, v15, :cond_3

    .line 773
    add-int/lit8 v6, v6, 0x5

    .line 768
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 775
    :cond_3
    const/16 v15, 0x2e

    if-ne v9, v15, :cond_4

    .line 777
    add-int/lit8 v6, v6, 0x3

    goto :goto_1

    .line 779
    :cond_4
    const/16 v15, 0x27

    if-ne v9, v15, :cond_5

    .line 781
    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    .line 783
    :cond_5
    const/16 v15, 0x22

    if-ne v9, v15, :cond_6

    .line 785
    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    .line 787
    :cond_6
    const/16 v15, 0xb0

    if-ne v9, v15, :cond_7

    .line 789
    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    .line 791
    :cond_7
    const/16 v15, 0x2d

    if-ne v9, v15, :cond_8

    .line 793
    add-int/lit8 v6, v6, 0x4

    goto :goto_1

    .line 797
    :cond_8
    add-int/lit8 v6, v6, 0x6

    goto :goto_1
.end method

.method public GetTextHeight(Landroid/graphics/Canvas;Ljava/lang/String;Landroid/graphics/Rect;IIID)I
    .locals 28
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "Text"    # Ljava/lang/String;
    .param p3, "rcBounds"    # Landroid/graphics/Rect;
    .param p4, "MinDigits"    # I
    .param p5, "RDigits"    # I
    .param p6, "MinHeight"    # I
    .param p7, "SmallSizeRatio"    # D

    .prologue
    .line 195
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    sub-int v7, v24, v25

    .line 196
    .local v7, "boundsHeight":I
    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v24, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v25, v0

    sub-int v8, v24, v25

    .line 198
    .local v8, "boundsWidth":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v16

    .line 199
    .local v16, "digitCount":I
    const/16 v24, 0x0

    sub-int v25, v16, p5

    move-object/from16 v0, p2

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 200
    .local v5, "TextL":Ljava/lang/String;
    sub-int v24, v16, p5

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 202
    .local v6, "TextR":Ljava/lang/String;
    move/from16 v23, v7

    .line 203
    .local v23, "textHeight":I
    move v0, v7

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x401c000000000000L    # 7.0

    div-double v11, v24, v26

    .line 204
    .local v11, "cellSizeL":D
    mul-double v13, v11, p7

    .line 206
    .local v13, "cellSizeR":D
    const/16 v18, 0x0

    .line 207
    .local v18, "padCellCount":I
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 209
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v24

    sub-int v24, p4, v24

    mul-int/lit8 v18, v24, 0x6

    .line 212
    :cond_0
    const/4 v9, 0x0

    .line 213
    .local v9, "cellCountL":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v17

    move/from16 v1, v24

    if-lt v0, v1, :cond_2

    .line 246
    add-int v19, v9, v18

    .line 247
    .local v19, "panelCellCountL":I
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v11

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v21, v0

    .line 249
    .local v21, "panelWidthL":I
    const/4 v10, 0x0

    .line 250
    .local v10, "cellCountR":I
    const/16 v17, 0x0

    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v24

    move/from16 v0, v17

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    .line 283
    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v24, v24, v13

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v22, v0

    .line 284
    .local v22, "panelWidthR":I
    add-int v20, v21, v22

    .line 286
    .local v20, "panelWidth":I
    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v3, v24, v26

    .line 287
    .local v3, "SizeRatio":D
    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpg-double v24, v3, v24

    if-gez v24, :cond_1

    .line 289
    mul-double/2addr v11, v3

    .line 290
    const-wide/high16 v24, 0x401c000000000000L    # 7.0

    mul-double v24, v24, v11

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v23, v0

    .line 293
    :cond_1
    return v23

    .line 215
    .end local v3    # "SizeRatio":D
    .end local v10    # "cellCountR":I
    .end local v19    # "panelCellCountL":I
    .end local v20    # "panelWidth":I
    .end local v21    # "panelWidthL":I
    .end local v22    # "panelWidthR":I
    :cond_2
    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 216
    .local v15, "digit":C
    const/16 v24, 0x3a

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 218
    add-int/lit8 v9, v9, 0x5

    .line 213
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 220
    :cond_3
    const/16 v24, 0x2e

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 222
    add-int/lit8 v9, v9, 0x3

    goto :goto_2

    .line 224
    :cond_4
    const/16 v24, 0x27

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    .line 226
    add-int/lit8 v9, v9, 0x4

    goto :goto_2

    .line 228
    :cond_5
    const/16 v24, 0x22

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 230
    add-int/lit8 v9, v9, 0x4

    goto :goto_2

    .line 232
    :cond_6
    const/16 v24, 0xb0

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    .line 234
    add-int/lit8 v9, v9, 0x4

    goto :goto_2

    .line 236
    :cond_7
    const/16 v24, 0x2d

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 238
    add-int/lit8 v9, v9, 0x4

    goto :goto_2

    .line 242
    :cond_8
    add-int/lit8 v9, v9, 0x6

    goto :goto_2

    .line 252
    .end local v15    # "digit":C
    .restart local v10    # "cellCountR":I
    .restart local v19    # "panelCellCountL":I
    .restart local v21    # "panelWidthL":I
    :cond_9
    move-object v0, v6

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v15

    .line 253
    .restart local v15    # "digit":C
    const/16 v24, 0x3a

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_a

    .line 255
    add-int/lit8 v10, v10, 0x5

    .line 250
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 257
    :cond_a
    const/16 v24, 0x2e

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_b

    .line 259
    add-int/lit8 v10, v10, 0x3

    goto :goto_3

    .line 261
    :cond_b
    const/16 v24, 0x27

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 263
    add-int/lit8 v10, v10, 0x4

    goto :goto_3

    .line 265
    :cond_c
    const/16 v24, 0x22

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 267
    add-int/lit8 v10, v10, 0x4

    goto :goto_3

    .line 269
    :cond_d
    const/16 v24, 0xb0

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 271
    add-int/lit8 v10, v10, 0x4

    goto :goto_3

    .line 273
    :cond_e
    const/16 v24, 0x2d

    move v0, v15

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 275
    add-int/lit8 v10, v10, 0x4

    goto :goto_3

    .line 279
    :cond_f
    add-int/lit8 v10, v10, 0x6

    goto :goto_3
.end method
