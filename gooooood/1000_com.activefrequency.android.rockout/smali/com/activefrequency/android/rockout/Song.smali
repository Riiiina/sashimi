.class public Lcom/activefrequency/android/rockout/Song;
.super Ljava/lang/Object;
.source "Song.java"


# instance fields
.field public background:I

.field public chord_1_down:I

.field public chord_1_name:Ljava/lang/String;

.field public chord_1_up:I

.field public chord_2_down:I

.field public chord_2_name:Ljava/lang/String;

.field public chord_2_up:I

.field public chord_3_down:I

.field public chord_3_name:Ljava/lang/String;

.field public chord_3_up:I

.field public chord_4_down:I

.field public chord_4_name:Ljava/lang/String;

.field public chord_4_up:I

.field public chord_5_down:I

.field public chord_5_name:Ljava/lang/String;

.field public chord_5_up:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;IILjava/lang/String;II)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "background"    # I
    .param p3, "chord_1_name"    # Ljava/lang/String;
    .param p4, "chord_1_down"    # I
    .param p5, "chord_1_up"    # I
    .param p6, "chord_2_name"    # Ljava/lang/String;
    .param p7, "chord_2_down"    # I
    .param p8, "chord_2_up"    # I
    .param p9, "chord_3_name"    # Ljava/lang/String;
    .param p10, "chord_3_down"    # I
    .param p11, "chord_3_up"    # I

    .prologue
    .line 64
    .line 66
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v14}, Lcom/activefrequency/android/rockout/Song;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;II)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;II)V
    .locals 18
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "background"    # I
    .param p3, "chord_1_name"    # Ljava/lang/String;
    .param p4, "chord_1_down"    # I
    .param p5, "chord_1_up"    # I
    .param p6, "chord_2_name"    # Ljava/lang/String;
    .param p7, "chord_2_down"    # I
    .param p8, "chord_2_up"    # I
    .param p9, "chord_3_name"    # Ljava/lang/String;
    .param p10, "chord_3_down"    # I
    .param p11, "chord_3_up"    # I
    .param p12, "chord_4_name"    # Ljava/lang/String;
    .param p13, "chord_4_down"    # I
    .param p14, "chord_4_up"    # I

    .prologue
    .line 56
    .line 58
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-direct/range {v0 .. v17}, Lcom/activefrequency/android/rockout/Song;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;II)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;IILjava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "background"    # I
    .param p3, "chord_1_name"    # Ljava/lang/String;
    .param p4, "chord_1_down"    # I
    .param p5, "chord_1_up"    # I
    .param p6, "chord_2_name"    # Ljava/lang/String;
    .param p7, "chord_2_down"    # I
    .param p8, "chord_2_up"    # I
    .param p9, "chord_3_name"    # Ljava/lang/String;
    .param p10, "chord_3_down"    # I
    .param p11, "chord_3_up"    # I
    .param p12, "chord_4_name"    # Ljava/lang/String;
    .param p13, "chord_4_down"    # I
    .param p14, "chord_4_up"    # I
    .param p15, "chord_5_name"    # Ljava/lang/String;
    .param p16, "chord_5_down"    # I
    .param p17, "chord_5_up"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/activefrequency/android/rockout/Song;->name:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/activefrequency/android/rockout/Song;->background:I

    .line 35
    iput-object p3, p0, Lcom/activefrequency/android/rockout/Song;->chord_1_name:Ljava/lang/String;

    .line 36
    iput p4, p0, Lcom/activefrequency/android/rockout/Song;->chord_1_down:I

    .line 37
    iput p5, p0, Lcom/activefrequency/android/rockout/Song;->chord_1_up:I

    .line 38
    iput-object p6, p0, Lcom/activefrequency/android/rockout/Song;->chord_2_name:Ljava/lang/String;

    .line 39
    iput p7, p0, Lcom/activefrequency/android/rockout/Song;->chord_2_down:I

    .line 40
    iput p8, p0, Lcom/activefrequency/android/rockout/Song;->chord_2_up:I

    .line 41
    iput-object p9, p0, Lcom/activefrequency/android/rockout/Song;->chord_3_name:Ljava/lang/String;

    .line 42
    iput p10, p0, Lcom/activefrequency/android/rockout/Song;->chord_3_down:I

    .line 43
    iput p11, p0, Lcom/activefrequency/android/rockout/Song;->chord_3_up:I

    .line 44
    iput-object p12, p0, Lcom/activefrequency/android/rockout/Song;->chord_4_name:Ljava/lang/String;

    .line 45
    iput p13, p0, Lcom/activefrequency/android/rockout/Song;->chord_4_down:I

    .line 46
    move/from16 v0, p14

    move-object v1, p0

    iput v0, v1, Lcom/activefrequency/android/rockout/Song;->chord_4_up:I

    .line 47
    move-object/from16 v0, p15

    move-object v1, p0

    iput-object v0, v1, Lcom/activefrequency/android/rockout/Song;->chord_5_name:Ljava/lang/String;

    .line 48
    move/from16 v0, p16

    move-object v1, p0

    iput v0, v1, Lcom/activefrequency/android/rockout/Song;->chord_5_down:I

    .line 49
    move/from16 v0, p17

    move-object v1, p0

    iput v0, v1, Lcom/activefrequency/android/rockout/Song;->chord_5_up:I

    .line 50
    return-void
.end method

.method public static makeSongs()Ljava/util/ArrayList;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/activefrequency/android/rockout/Song;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .local v12, "al":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/activefrequency/android/rockout/Song;>;"
    new-instance v0, Lcom/activefrequency/android/rockout/Song;

    .line 72
    const-string v1, "Goin\' South"

    const v2, 0x7f020003

    .line 73
    const-string v3, "D Maj"

    const v4, 0x7f040006

    const v5, 0x7f040007

    .line 74
    const-string v6, "C Maj"

    const v7, 0x7f040002

    const v8, 0x7f040003

    .line 75
    const-string v9, "G Maj"

    const v10, 0x7f04000a

    const v11, 0x7f04000b

    invoke-direct/range {v0 .. v11}, Lcom/activefrequency/android/rockout/Song;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;IILjava/lang/String;II)V

    .line 71
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v0, Lcom/activefrequency/android/rockout/Song;

    .line 79
    const-string v1, "My Buddy\'s Gal"

    const/high16 v2, 0x7f020000

    .line 80
    const-string v3, "A5"

    const/high16 v4, 0x7f040000

    const v5, 0x7f040001

    .line 81
    const-string v6, "D5"

    const v7, 0x7f040004

    const v8, 0x7f040005

    .line 82
    const-string v9, "E5"

    const v10, 0x7f040008

    const v11, 0x7f040009

    invoke-direct/range {v0 .. v11}, Lcom/activefrequency/android/rockout/Song;-><init>(Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;IILjava/lang/String;II)V

    .line 78
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    return-object v12
.end method
